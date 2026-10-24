# seminormedGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:018fc50f33c1bacf1cd11bef5e879e3cc1f7821ebced7e3b848df85554c29b14",
  "kind": "instance",
  "lexical_name": "seminormedGroup",
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
  "slug": "seminormedgroup--762b14144cd434ab65b19332",
  "source": {
    "blob": "c60ce0cf50c7136ad88d07b290829af5498cb2e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 45,
    "path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:762b14144cd434ab65b19332051720981455ea64a52b4608a3784c4faa1217b4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:018fc50f33c1bacf1cd11bef5e879e3cc1f7821ebced7e3b848df85554c29b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance seminormedGroup : SeminormedGroup s :=
  fast_instance% SeminormedGroup.induced _ _ s.subtype

/-- If `x` is an element of a subgroup `s` of a seminormed group `E`, its norm in `s` is equal to
its norm in `E`. -/
@[to_additive (attr := simp) /-- If `x` is an element of a subgroup `s` of a seminormed group `E`,
its norm in `s` is equal to its norm in `E`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c60ce0cf50c7136ad88d07b290829af5498cb2e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
