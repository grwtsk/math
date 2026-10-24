# toCommGroupCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1af4d4c4c9fa8b4b53bcab16d7701a2c762bd647a9231a75a3a7040c0976423a",
  "kind": "def",
  "lexical_name": "toCommGroupCat",
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
  "slug": "tocommgroupcat--65ae581a60bd81f5cf60d10a",
  "source": {
    "blob": "96beca30f11c52647ca79be4d401358ac36bb1e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65ae581a60bd81f5cf60d10a574ba2b5d46e5e6082a11f913fdaae03970839cf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1af4d4c4c9fa8b4b53bcab16d7701a2c762bd647a9231a75a3a7040c0976423a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCommGroupCat : AddCommGroupCat ⥤ CommGroupCat where
  obj X := CommGroupCat.of (Multiplicative X)
  map {X} {Y} := AddMonoidHom.toMultiplicative
#align AddCommGroup.to_CommGroup AddCommGroupCat.toCommGroupCat

end AddCommGroupCat

/-- The equivalence of categories between `Group` and `AddGroup`
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96beca30f11c52647ca79be4d401358ac36bb1e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
