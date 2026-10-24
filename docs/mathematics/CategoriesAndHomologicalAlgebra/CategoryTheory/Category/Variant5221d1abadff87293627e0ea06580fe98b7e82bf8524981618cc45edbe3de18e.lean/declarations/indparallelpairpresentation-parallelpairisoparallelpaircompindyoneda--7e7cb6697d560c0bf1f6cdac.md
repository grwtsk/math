# IndParallelPairPresentation.parallelPairIsoParallelPairCompIndYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:079a704e374ae3128ef04cdbeed5f90eccd99328fcba46ce778a713d64de7192",
  "kind": "def",
  "lexical_name": "IndParallelPairPresentation.parallelPairIsoParallelPairCompIndYoneda",
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
  "slug": "indparallelpairpresentation-parallelpairisoparallelpaircompindyoneda--7e7cb6697d560c0bf1f6cdac",
  "source": {
    "blob": "f0985222e3dd600bff126261770fddcbf791781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 269,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e7cb6697d560c0bf1f6cdac28fced0baa0ba089e34b782c6cd5192bae333ccd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:079a704e374ae3128ef04cdbeed5f90eccd99328fcba46ce778a713d64de7192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IndParallelPairPresentation.parallelPairIsoParallelPairCompIndYoneda
    {A B : Ind C} {f g : A ⟶ B}
    (P : IndParallelPairPresentation ((Ind.inclusion _).map f) ((Ind.inclusion _).map g)) :
    parallelPair f g ≅ parallelPair P.φ P.ψ ⋙ Ind.lim P.I :=
  ((whiskeringRight WalkingParallelPair _ _).obj (Ind.inclusion C)).preimageIso <|
    diagramIsoParallelPair _ ≪≫
      P.parallelPairIsoParallelPairCompYoneda ≪≫
      isoWhiskerLeft (parallelPair _ _) Ind.limCompInclusion.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0985222e3dd600bff126261770fddcbf791781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
