# preservesSheafification_of_adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c7b249c-7dd1-5c0a-e386-cd57d8faa67d",
  "kind": "lemma",
  "lexical_name": "preservesSheafification_of_adjunction",
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
  "slug": "preservessheafification-of-adjunction--0a06b7cd472b7860a9248fd1",
  "source": {
    "blob": "7513066a0469bf93562d2a0fb005a810da088e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant2071bf6b6a1545c10371902a815226befcb73da66b725fee7838e28cc8ea86b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a06b7cd472b7860a9248fd10a75206489d1cd3c3ecd8e930e5bbc86486c5271",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant2071bf6b6a1545c10371902a815226befcb73da66b725fee7838e28cc8ea86b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c7b249c-7dd1-5c0a-e386-cd57d8faa67d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesSheafification_of_adjunction (adj : G ⊣ F) :
    J.PreservesSheafification G where
  le P Q f hf := by
    have := adj.isRightAdjoint
    rw [MorphismProperty.inverseImage_iff]
    dsimp
    intro R hR
    rw [← ((adj.whiskerRight Cᵒᵖ).homEquiv P R).comp_bijective]
    convert!
      (((adj.whiskerRight Cᵒᵖ).homEquiv Q R).trans
          (hf.homEquiv (R ⋙ F) ((sheafCompose J F).obj ⟨R, hR⟩).property)).bijective
    ext g X
    -- The rest of this proof was
    -- `dsimp [Adjunction.whiskerRight, Adjunction.mkOfUnitCounit]; simp` before https://github.com/leanprover-community/mathlib4/pull/16317.
    dsimp
    rw [← NatTrans.comp_app]
    congr
    exact Adjunction.homEquiv_naturality_left _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant2071bf6b6a1545c10371902a815226befcb73da66b725fee7838e28cc8ea86b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant2071bf6b6a1545c10371902a815226befcb73da66b725fee7838e28cc8ea86b1.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7513066a0469bf93562d2a0fb005a810da088e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
