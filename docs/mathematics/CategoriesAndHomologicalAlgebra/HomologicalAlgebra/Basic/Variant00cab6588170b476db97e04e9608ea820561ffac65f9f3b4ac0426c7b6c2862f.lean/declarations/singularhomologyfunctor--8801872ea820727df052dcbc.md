# singularHomologyFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82dc1ae9668fd6f3e864e3a1e6154f20d75503f77200670685994a1dd82cba59",
  "kind": "def",
  "lexical_name": "singularHomologyFunctor",
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
  "slug": "singularhomologyfunctor--8801872ea820727df052dcbc",
  "source": {
    "blob": "c8d5c7512d66bbe0d50e18fc1f2fbb00dd0c212f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8801872ea820727df052dcbc8ca49338bd77db12a441fc2cabe4207cfe2730ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82dc1ae9668fd6f3e864e3a1e6154f20d75503f77200670685994a1dd82cba59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def singularHomologyFunctor : C ⥤ TopCat.{0} ⥤ C :=
  singularChainComplexFunctor C ⋙
    (whiskeringRight _ _ _).obj (HomologicalComplex.homologyFunctor _ _ n)

section TotallyDisconnectedSpace

variable (R : C) (X : TopCat.{0}) [TotallyDisconnectedSpace X]

/-- If `X` is totally disconnected,
its singular chain complex is given by `R[X] ←0- R[X] ←𝟙- R[X] ←0- R[X] ⋯`,
where `R[X]` is the coproduct of copies of `R` indexed by elements of `X`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d5c7512d66bbe0d50e18fc1f2fbb00dd0c212f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
