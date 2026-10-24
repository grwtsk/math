# integral_logDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0337deef-ba00-4d40-88f9-a113ace65358",
  "kind": "theorem",
  "lexical_name": "integral_logDensity",
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
  "slug": "integral-logdensity--5a7d401c000e01d9b5f37227",
  "source": {
    "blob": "1b467d7c96dca5e8412e6e823f898f3734c5d710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 109,
    "path": "GRWTSK/Analysis/Series/HeightCountingTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a7d401c000e01d9b5f37227cafecd408a2788e02525f28fdfa77b92d1ab216f",
  "verification": {
    "reference": "docs/verification/Analysis/Series/HeightCountingTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0337deef-ba00-4d40-88f9-a113ace65358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_logDensity {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    (∫ t in a..b, 2 * Real.log t / t ^ 2) =
      inverseSquareBudget a - inverseSquareBudget b := by
  have hd : ∀ t ∈ Icc a b,
      HasDerivAt (fun u : ℝ => -(2 * (Real.log u + 1) / u))
        (2 * Real.log t / t ^ 2) t := by
    intro t ht
    have ht0 : t ≠ 0 := ne_of_gt (ha.trans_le ht.1)
    have h := ((((Real.hasDerivAt_log ht0).add_const 1).const_mul 2).div
      (hasDerivAt_id t) ht0).neg
    convert h using 1 <;> first | rfl | (field_simp [ht0]; simp only [id_eq]; ring)
  have hi := ContinuousOn.intervalIntegrable_of_Icc (μ := volume) hab (logDensity_continuousOn ha)
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := a) (b := b) (f := fun u : ℝ => -(2 * (Real.log u + 1) / u))
    (f' := fun t : ℝ => 2 * Real.log t / t ^ 2)
    (fun t ht => hd t ((uIcc_of_le hab) ▸ ht)) hi
  simpa only [inverseSquareBudget, neg_sub_neg] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/HeightCountingTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/HeightCountingTail.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b467d7c96dca5e8412e6e823f898f3734c5d710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
