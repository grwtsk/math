# equivCommuteConstant'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f927d58c99cc6877fa8b664b4fe50efead941f73c8196815a7fb5eeaa848e01",
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
  "slug": "equivcommuteconstant--3feb82146d61fd6a1fa0527c",
  "source": {
    "blob": "fed3e71146f34e78917b7d66b56abaf7ac866071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3feb82146d61fd6a1fa0527c2af0ae63a5a7f6d3374e6c28a74088f5c88589b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f927d58c99cc6877fa8b664b4fe50efead941f73c8196815a7fb5eeaa848e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivCommuteConstant' :
    constantSheaf J D ≅ constantSheaf K D ⋙ (sheafEquiv G J K D).inverse :=
  isoWhiskerLeft (constantSheaf J D) (sheafEquiv G J K D).unitIso ≪≫
    isoWhiskerRight (equivCommuteConstant J D K G hT hT') (sheafEquiv G J K D).inverse

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed3e71146f34e78917b7d66b56abaf7ac866071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
