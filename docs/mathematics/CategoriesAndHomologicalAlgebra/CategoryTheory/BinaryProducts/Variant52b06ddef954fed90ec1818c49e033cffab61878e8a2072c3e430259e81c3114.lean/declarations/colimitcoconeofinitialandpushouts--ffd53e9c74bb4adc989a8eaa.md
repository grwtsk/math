# colimitCoconeOfInitialAndPushouts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e7428defa837f7bb7bf9d3edda40a3e8e5f792e3f870955427f3c479c7abe3f",
  "kind": "def",
  "lexical_name": "colimitCoconeOfInitialAndPushouts",
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
  "slug": "colimitcoconeofinitialandpushouts--ffd53e9c74bb4adc989a8eaa",
  "source": {
    "blob": "712d55806a5f3a7e5d62d35624ed8dd3b9edb091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffd53e9c74bb4adc989a8eaad6124a09460e6e0e12d1b66a049e258c4241b90e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e7428defa837f7bb7bf9d3edda40a3e8e5f792e3f870955427f3c479c7abe3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitCoconeOfInitialAndPushouts [HasInitial C] [HasPushouts C]
    (F : Discrete WalkingPair ⥤ C) : ColimitCocone F where
  cocone :=
    { pt := pushout (initial.to (F.obj ⟨WalkingPair.left⟩)) (initial.to (F.obj ⟨WalkingPair.right⟩))
      ι :=
        Discrete.natTrans fun x =>
          Discrete.casesOn x fun x => WalkingPair.casesOn x (pushout.inl _ _) (pushout.inr _ _) }
  isColimit := isBinaryCoproductOfIsInitialIsPushout F _ initialIsInitial _ _ (pushoutIsPushout _ _)

variable (C) in
-- This is not an instance, as it is not always how one wants to construct binary coproducts!
/-- Any category with pushouts and initial object has binary coproducts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant52b06ddef954fed90ec1818c49e033cffab61878e8a2072c3e430259e81c3114.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712d55806a5f3a7e5d62d35624ed8dd3b9edb091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
