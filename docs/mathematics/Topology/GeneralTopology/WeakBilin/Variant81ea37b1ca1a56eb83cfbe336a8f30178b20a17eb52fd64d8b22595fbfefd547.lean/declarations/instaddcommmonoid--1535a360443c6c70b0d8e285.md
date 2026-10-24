# instAddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26c4283c2e03fa33f123788eb79f7836fc1b1136324097ce047d9e1186ec0a9a",
  "kind": "instance",
  "lexical_name": "instAddCommMonoid",
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
  "slug": "instaddcommmonoid--1535a360443c6c70b0d8e285",
  "source": {
    "blob": "3828a2b288a0e43b9dca6f8ed122a5f4a7f17824",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1535a360443c6c70b0d8e285e0ed9aa32ebfd4b73c152a128c0fef24cd780220",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26c4283c2e03fa33f123788eb79f7836fc1b1136324097ce047d9e1186ec0a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommMonoid [CommSemiring 𝕜] [a : AddCommMonoid E] [Module 𝕜 E] [AddCommMonoid F]
    [Module 𝕜 F] (B : E →ₗ[𝕜] F →ₗ[𝕜] 𝕜) : AddCommMonoid (WeakBilin B) := a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3828a2b288a0e43b9dca6f8ed122a5f4a7f17824` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
