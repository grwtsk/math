# decidableMemZPowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c7ec062033296eba1cf9dcf35442c81bd51196f5645ca019355b42930e734a8",
  "kind": "instance",
  "lexical_name": "decidableMemZPowers",
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
  "slug": "decidablememzpowers--4fde12b4644e608e8fc2f5e0",
  "source": {
    "blob": "a913c78fed9e52a810ad2bb2a6285caedae4db3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 45,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fde12b4644e608e8fc2f5e0f0d653b19e46e4c4f0642a222246abf56baa643c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c7ec062033296eba1cf9dcf35442c81bd51196f5645ca019355b42930e734a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance decidableMemZPowers {a : G} : DecidablePred (· ∈ Subgroup.zpowers a) :=
  Classical.decPred _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a913c78fed9e52a810ad2bb2a6285caedae4db3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
