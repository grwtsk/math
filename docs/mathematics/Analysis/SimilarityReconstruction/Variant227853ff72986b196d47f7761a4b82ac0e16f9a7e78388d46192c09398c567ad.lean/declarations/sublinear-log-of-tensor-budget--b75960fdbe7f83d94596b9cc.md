# sublinear_log_of_tensor_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:041b9709-626b-1ebd-e481-f0e12b46eb12",
  "kind": "theorem",
  "lexical_name": "sublinear_log_of_tensor_budget",
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
  "slug": "sublinear-log-of-tensor-budget--b75960fdbe7f83d94596b9cc",
  "source": {
    "blob": "71cb6da724528108be732f12b16a6c30f815fb64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b75960fdbe7f83d94596b9cce9f8fe8e83a592af2133332f0ae60421e19cdca4",
  "verification": {
    "reference": "docs/verification/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:041b9709-626b-1ebd-e481-f0e12b46eb12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublinear_log_of_tensor_budget (A β κ L η : ℕ → ℝ)
    (hA : ∀ n, 1 ≤ A n) (hmono : Monotone A)
    (hβ : ∀ n, 0 ≤ β n) (hκ : ∀ n, 1 ≤ κ n)
    (hL : ∀ n, 0 ≤ L n) (hη : ∀ n, 0 ≤ η n)
    (hbound : ∀ n, β n ≤ κ n*(L n+η n))
    (hstep : ∀ n, 1 ≤ n → A (2*n) ≤ (1+β n)*A n)
    (hbudget : UpperSublinear
      (fun n => Real.log (κ n)+Real.log (1+L n+η n))) :
    Asymptotics.IsLittleO Filter.atTop
      (fun n => Real.log (A n)) (fun n : ℕ => (n : ℝ)) := by
  apply (upperSublinear_iff_isLittleO _ (fun n => Real.log_nonneg (hA n))).1
  exact sublinear_log_of_doubling A β hA hmono hβ hstep
    (relative_upperSublinear β κ L η hβ hκ hL hη hbound hbudget)

end GRWTSK.Analysis.SimilarityReconstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71cb6da724528108be732f12b16a6c30f815fb64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
