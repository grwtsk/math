# instInfOpenSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fca267b8700fd7b84bf6e19868bb0adc81263919d4774427d7771178c1e5421",
  "kind": "instance",
  "lexical_name": "instInfOpenSubgroup",
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
  "slug": "instinfopensubgroup--82352205d57ad13cd0f4c4f9",
  "source": {
    "blob": "63abc1298d30b2ebc2029c7315ba4a655367eb83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82352205d57ad13cd0f4c4f993852ad2c6744c2d9f30b73f0ab101f102c72764",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fca267b8700fd7b84bf6e19868bb0adc81263919d4774427d7771178c1e5421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instInfOpenSubgroup : Inf (OpenSubgroup G) :=
  ⟨fun U V => ⟨U ⊓ V, U.isOpen.inter V.isOpen⟩⟩

@[to_additive (attr := simp, norm_cast)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63abc1298d30b2ebc2029c7315ba4a655367eb83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
