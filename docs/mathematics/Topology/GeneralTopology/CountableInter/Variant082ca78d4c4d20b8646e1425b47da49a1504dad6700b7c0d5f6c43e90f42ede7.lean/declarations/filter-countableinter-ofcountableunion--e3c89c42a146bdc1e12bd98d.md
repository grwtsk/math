# Filter.countableInter_ofCountableUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f7ba60272be04beb7747f79b8fb3a0c3f9104b30a0563d640f262836d919908",
  "kind": "instance",
  "lexical_name": "Filter.countableInter_ofCountableUnion",
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
  "slug": "filter-countableinter-ofcountableunion--e3c89c42a146bdc1e12bd98d",
  "source": {
    "blob": "3211b83ae709775f19b1bfa258415af9a4a006a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3c89c42a146bdc1e12bd98de8f9a3069a1c8b6e101211c7759cde7eb2af7137",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f7ba60272be04beb7747f79b8fb3a0c3f9104b30a0563d640f262836d919908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Filter.countableInter_ofCountableUnion (l : Set (Set α)) (h₁ h₂) :
    CountableInterFilter (Filter.ofCountableUnion l h₁ h₂) :=
  countableInter_ofCountableInter ..

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3211b83ae709775f19b1bfa258415af9a4a006a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
