# homotopyEquivalences_shortComplexF_iff_of_splitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf872fe4-8372-ec8f-6adc-ecb04a4b7aa5",
  "kind": "lemma",
  "lexical_name": "homotopyEquivalences_shortComplexF_iff_of_splitting",
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
  "slug": "homotopyequivalences-shortcomplexf-iff-of-splitting--87bd5617ca75f9a8b2f79840",
  "source": {
    "blob": "c999bb1ed96d62db81c5951fada084cad9da630a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87bd5617ca75f9a8b2f7984040e4c434acc55266686652dc2f4ba9f7007c01f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf872fe4-8372-ec8f-6adc-ecb04a4b7aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homotopyEquivalences_shortComplexF_iff_of_splitting [HasZeroObject C]
    (σ : ∀ n, (S.map (eval _ _ n)).Splitting) :
    homotopyEquivalences _ _ S.f ↔ Nonempty (Homotopy (𝟙 S.X₃) 0) := by
  rw [← HomotopyCategory.isZero_quotient_obj_iff,
    ← isIso_quotient_map_iff_homotopyEquivalences]
  exact (Triangle.isZero₃_iff_isIso₁ _ (trianglehOfDegreewiseSplit_distinguished S σ)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c999bb1ed96d62db81c5951fada084cad9da630a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
