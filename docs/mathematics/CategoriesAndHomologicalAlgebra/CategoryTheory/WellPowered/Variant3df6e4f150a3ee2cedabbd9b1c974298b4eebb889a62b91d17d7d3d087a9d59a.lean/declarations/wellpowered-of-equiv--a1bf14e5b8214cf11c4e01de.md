# wellPowered_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61366fec-fe0b-b61c-8c6b-2b844e615f15",
  "kind": "theorem",
  "lexical_name": "wellPowered_of_equiv",
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
  "slug": "wellpowered-of-equiv--a1bf14e5b8214cf11c4e01de",
  "source": {
    "blob": "1ce41fb7aaeb9bd3b403553f4697f90c3caca288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1bf14e5b8214cf11c4e01dec14e96b336baeda0081ccdb2821d461e44dab3d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61366fec-fe0b-b61c-8c6b-2b844e615f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellPowered_of_equiv (e : C ≌ D) [LocallySmall.{w} C] [LocallySmall.{w} D]
    [WellPowered.{w} C] : WellPowered.{w} D :=
  wellPowered_of_essentiallySmall_monoOver fun X =>
    (essentiallySmall_congr (MonoOver.congr X e.symm)).2 <| by infer_instance

/-- Being well-powered is preserved by equivalences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce41fb7aaeb9bd3b403553f4697f90c3caca288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
