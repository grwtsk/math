# integral_theta_div_log_sq_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c70e9d4de7e8d454df1a5840334ef3e0dcbf777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 758,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:372395e7-764a-6335-efc2-bd9609034697",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:100299fa-a583-c8c2-10dc-0b2442a40650",
  "kind": "theorem",
  "lexical_name": "integral_theta_div_log_sq_isBigO",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "integral-theta-div-log-sq-isbigo--70d55d81319ed13091a3e623",
  "source": {
    "blob": "0c70e9d4de7e8d454df1a5840334ef3e0dcbf777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 782,
    "line": 758,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70d55d81319ed13091a3e6231da52f7e4b14e7967690d1426590b7f3a79afbf3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:100299fa-a583-c8c2-10dc-0b2442a40650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_theta_div_log_sq_isBigO :
    (fun x ↦ ∫ t in 2..x, θ t / (t * log t ^ 2)) =O[atTop] (fun x ↦ x / log x ^ 2) := by
  refine (IsBigO.of_bound (log 4) ?_).trans integral_one_div_log_sq_isBigO
  filter_upwards [eventually_ge_atTop 4] with x _
  simp_rw [norm_eq_abs]
  calc |∫ (t : ℝ) in 2..x, θ t / (t * log t ^ 2)|
    _ ≤ ∫ (x : ℝ) in 2..x, |θ x / (x * log x ^ 2)| :=
        intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ (x : ℝ) in 2..x, log 4 * (1 / log x ^ 2) :=
        intervalIntegral.integral_mono_on (by linarith) ?hf ?hg fun t ⟨ht, _⟩ ↦ ?hh
    _ = log 4 * |∫ (t : ℝ) in 2..x, 1 / log t ^ 2| := by
        rw [intervalIntegral.integral_const_mul, abs_of_nonneg]
        exact intervalIntegral.integral_nonneg (by linarith) fun u _ ↦ by positivity
  case hf =>
    refine (intervalIntegrable_iff.mpr ?_).abs
    rw [Set.uIoc_of_le (by linarith), ← integrableOn_Icc_iff_integrableOn_Ioc]
    exact integrableOn_theta_div_id_mul_log_sq x
  case hg =>
    refine (intervalIntegrable_one_div_log_sq ?_ ?_).const_mul _ <;> linarith
  case hh =>
    calc |θ t / (t * log t ^ 2)|
    _ = θ t / (t * log t ^ 2) := abs_of_nonneg (by positivity [theta_nonneg t])
    _ ≤ log 4 * t / (t * log t ^ 2) := by grw [theta_le_log4_mul_x (by linarith)]
    _ = log 4 * (1 / log t ^ 2) := by field

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c70e9d4de7e8d454df1a5840334ef3e0dcbf777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
