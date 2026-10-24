# pullbackDiagonalMapIso.hom_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4071f091-e0b9-0409-8964-b5d21d70519a",
  "kind": "theorem",
  "lexical_name": "pullbackDiagonalMapIso.hom_snd",
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
  "slug": "pullbackdiagonalmapiso-hom-snd--62017cd1968b07dea005e033",
  "source": {
    "blob": "d73412922321288c4f17e47bc4ab4563d9986e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62017cd1968b07dea005e03378b4e646e1f9529992919f4a573d3671827c5735",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4071f091-e0b9-0409-8964-b5d21d70519a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullbackDiagonalMapIso.hom_snd :
    (pullbackDiagonalMapIso f i i₁ i₂).hom ≫ pullback.snd _ _ =
      pullback.snd _ _ ≫ pullback.snd _ _ := by
  delta pullbackDiagonalMapIso
  simp only [limit.lift_π, PullbackCone.mk_π_app]

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant6593fed2e9b046ea6af9b212318a8b3894d27aa13f621a860516617876c83e71.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73412922321288c4f17e47bc4ab4563d9986e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
