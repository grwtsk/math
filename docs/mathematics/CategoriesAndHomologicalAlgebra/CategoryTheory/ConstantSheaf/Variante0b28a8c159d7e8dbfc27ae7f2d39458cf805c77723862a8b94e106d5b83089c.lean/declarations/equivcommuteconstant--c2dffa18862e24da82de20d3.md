# equivCommuteConstant'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60a1e40edab2b111ebfa3c27df1703de02cafa7b343b120892e4a0f294004a87",
  "kind": "def",
  "lexical_name": "equivCommuteConstant'",
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
  "slug": "equivcommuteconstant--c2dffa18862e24da82de20d3",
  "source": {
    "blob": "9894c0e4db8c10616359c9698b092e14f48708b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2dffa18862e24da82de20d3ff437658e5d702aaac7ccf32c8d684655b2e75b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60a1e40edab2b111ebfa3c27df1703de02cafa7b343b120892e4a0f294004a87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivCommuteConstant' :
    constantSheaf J D ≅ constantSheaf K D ⋙ (sheafEquiv J K G D).inverse :=
  isoWhiskerLeft (constantSheaf J D) (sheafEquiv J K G D).unitIso ≪≫
    isoWhiskerRight (equivCommuteConstant J D K G hT hT') (sheafEquiv J K G D).inverse

/- TODO: find suitable assumptions for proving generalizations of `equivCommuteConstant` and
`equivCommuteConstant'` above, to commute `constantSheaf` with pullback/pushforward of sheaves. -/

include hT hT' in
/--
The property of a sheaf of being constant is invariant under equivalence of sheaf
categories.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9894c0e4db8c10616359c9698b092e14f48708b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
