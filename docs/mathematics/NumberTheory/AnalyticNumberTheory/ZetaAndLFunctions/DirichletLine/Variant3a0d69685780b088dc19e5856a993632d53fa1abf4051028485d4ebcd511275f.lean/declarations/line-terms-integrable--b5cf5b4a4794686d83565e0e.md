# line_terms_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "623d2728545fdcf928c20af733ee17858b74c2d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:648dd5df-9400-90d9-be5a-1fc492414ad8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53152b98-751c-6e91-20e5-e2f0f9eb7716",
  "kind": "theorem",
  "lexical_name": "line_terms_integrable",
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
  "slug": "line-terms-integrable--b5cf5b4a4794686d83565e0e",
  "source": {
    "blob": "623d2728545fdcf928c20af733ee17858b74c2d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 147,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5cf5b4a4794686d83565e0e7835d8d964ba97a7f4e4571417ebab88a60f73ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53152b98-751c-6e91-20e5-e2f0f9eb7716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem line_terms_integrable {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    (a : ℕ → ℂ) (c : ℝ) (ha : Summable (fun N : ℕ => ‖a N‖ * (N : ℝ) ^ (-c))) :
    (∀ n : ℕ, Integrable (fun t : ℝ => paperFT (tilt k (c - 1/2)) t
        * LSeries.term a ((c:ℂ) + t * I) n)) ∧
    Summable (fun n : ℕ => ∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t
        * LSeries.term a ((c:ℂ) + t * I) n‖) := by
  have hkb2 : ContDiff ℝ 2 (tilt k (c - 1/2)) := tilt_contDiff hk _
  have hkbc : HasCompactSupport (tilt k (c - 1/2)) := tilt_hasCompactSupport hkc _
  have hFkb := Zeta23.EF.integrable_fourier_of_contDiff_two hkb2 hkbc
  have hpfi : Integrable (fun t : ℝ => paperFT (tilt k (c - 1/2)) t) :=
    Zeta23.EF.integrable_paperFT_ofReal hFkb
  have hcont : ∀ n : ℕ, Continuous (fun t : ℝ => LSeries.term a ((c:ℂ) + t * I) n) :=
    continuous_LSeries_term_line a c
  have hint : ∀ n : ℕ, Integrable (fun t : ℝ => paperFT (tilt k (c - 1/2)) t
      * LSeries.term a ((c:ℂ) + t * I) n) := by
    intro n
    refine hpfi.mul_bdd (c := if n = 0 then (0:ℝ) else ‖a n‖ * ((n:ℝ) ^ (-c)))
      (hcont n).aestronglyMeasurable ?_
    filter_upwards with t
    rw [norm_LSeries_term_line]
  have heval : ∀ n : ℕ, (∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t
      * LSeries.term a ((c:ℂ) + t * I) n‖)
      = (∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t‖)
        * (if n = 0 then (0:ℝ) else ‖a n‖ * ((n:ℝ) ^ (-c))) := by
    intro n
    rw [← integral_mul_const]
    refine integral_congr_ae (Filter.Eventually.of_forall fun t => ?_)
    simp only
    rw [norm_mul, norm_LSeries_term_line]
  have hcn := summable_coeff_bound a c ha
  refine ⟨hint, ?_⟩
  refine ((hcn.mul_left (∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t‖)).congr fun n => ?_)
  rw [heval n]

/-- Step 3 (tsum/integral swap). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623d2728545fdcf928c20af733ee17858b74c2d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
