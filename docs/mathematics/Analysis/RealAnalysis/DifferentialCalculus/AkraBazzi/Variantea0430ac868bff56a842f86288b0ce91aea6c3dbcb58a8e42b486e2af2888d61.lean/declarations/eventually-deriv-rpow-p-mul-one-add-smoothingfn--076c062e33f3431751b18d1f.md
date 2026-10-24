# eventually_deriv_rpow_p_mul_one_add_smoothingFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 813,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d5a8d1f-29d5-d121-4933-db09170f4717",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c00f883-e029-96d5-f669-35d75ae6e2e8",
  "kind": "lemma",
  "lexical_name": "eventually_deriv_rpow_p_mul_one_add_smoothingFn",
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
  "slug": "eventually-deriv-rpow-p-mul-one-add-smoothingfn--076c062e33f3431751b18d1f",
  "source": {
    "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 829,
    "line": 813,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076c062e33f3431751b18d1f35d30b715c9524377e7701beaa2e43b76629e1f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c00f883-e029-96d5-f669-35d75ae6e2e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–829.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_deriv_rpow_p_mul_one_add_smoothingFn (p : ℝ) :
    deriv (fun z => z ^ p * (1 + ε z))
      =ᶠ[atTop] fun z => p * z ^ (p-1) * (1 + ε z) - z ^ (p-1) / (log z ^ 2) := calc
  deriv (fun x => x ^ p * (1 + ε x))
    =ᶠ[atTop] fun x => deriv (· ^ p) x * (1 + ε x) + x ^ p * deriv (1 + ε ·) x := by
            filter_upwards [eventually_gt_atTop 1] with x hx
            rw [deriv_mul]
            · exact differentiableAt_rpow_const_of_ne _ (by positivity)
            · exact differentiableAt_one_add_smoothingFn hx
  _ =ᶠ[atTop] fun x => p * x ^ (p-1) * (1 + ε x) - x ^ p * (x⁻¹ / (log x ^ 2)) := by
            filter_upwards [eventually_gt_atTop 1, eventually_deriv_one_add_smoothingFn]
              with x hx hderiv
            simp [hderiv, Real.deriv_rpow_const (Or.inl <| by positivity), neg_div, sub_eq_add_neg]
  _ =ᶠ[atTop] fun x => p * x ^ (p-1) * (1 + ε x) - x ^ (p-1) / (log x ^ 2) := by
            filter_upwards [eventually_gt_atTop 0] with x hx
            simp [mul_div, ← Real.rpow_neg_one, ← Real.rpow_add (by positivity), sub_eq_add_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4c4d02baa758897d153bfb24b08abd4567d49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
