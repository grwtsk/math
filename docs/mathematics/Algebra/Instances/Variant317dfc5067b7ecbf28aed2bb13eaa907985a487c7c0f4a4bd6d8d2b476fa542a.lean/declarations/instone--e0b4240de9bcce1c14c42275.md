# instOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77e0b63535a31ea2b1d171a24cf6e2a7b8211e1576858cd2981f98ac3ded74a1",
  "kind": "instance",
  "lexical_name": "instOne",
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
  "slug": "instone--e0b4240de9bcce1c14c42275",
  "source": {
    "blob": "b5d8b3a6a41897a507719b238c18dceb0ae87829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 55,
    "path": "GRWTSK/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0b4240de9bcce1c14c42275c00091c37f16bbcc228ef2e658bef9d580a9841a",
  "verification": {
    "reference": "docs/verification/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77e0b63535a31ea2b1d171a24cf6e2a7b8211e1576858cd2981f98ac3ded74a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instOne : One (Icc (0 : R) 1) where one := ⟨1, right_mem_Icc.2 zero_le_one⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5d8b3a6a41897a507719b238c18dceb0ae87829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
