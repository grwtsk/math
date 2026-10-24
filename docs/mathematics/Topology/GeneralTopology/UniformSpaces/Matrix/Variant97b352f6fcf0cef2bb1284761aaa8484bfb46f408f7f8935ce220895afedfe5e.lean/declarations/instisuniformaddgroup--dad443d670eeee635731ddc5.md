# instIsUniformAddGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dce317e685bac1b3b94d5aa550bbf6693160985da0f19978906bec9773beced",
  "kind": "instance",
  "lexical_name": "instIsUniformAddGroup",
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
  "slug": "instisuniformaddgroup--dad443d670eeee635731ddc5",
  "source": {
    "blob": "02b62fbb65eb34dd98bbf96ace69543fa6106a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dad443d670eeee635731ddc5585c66cd81048ebf4fb90505a5f7ffdf49bae7ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dce317e685bac1b3b94d5aa550bbf6693160985da0f19978906bec9773beced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsUniformAddGroup [AddGroup 𝕜] [IsUniformAddGroup 𝕜] :
    IsUniformAddGroup (Matrix m n 𝕜) :=
  inferInstanceAs <| IsUniformAddGroup (m → n → 𝕜)

@[deprecated (since := "2025-03-31")] alias
  instUniformAddGroup := Matrix.instIsUniformAddGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b62fbb65eb34dd98bbf96ace69543fa6106a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
