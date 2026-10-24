# ClosedSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35f65ec9f5f4ed3f9dabd659ee38f5fbbd2645e08f4592fd6476437d2a644e00",
  "kind": "structure",
  "lexical_name": "ClosedSubmodule",
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
  "slug": "closedsubmodule--4df3ba67c3ba28e0cb91a648",
  "source": {
    "blob": "fad80db455e7b17eabc5d29bc151685d38f37cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/ClosedSubmodule/Variant2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4df3ba67c3ba28e0cb91a6481446f0b3238eaa054e9f507736dc3d4feacf00fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClosedSubmodule/Variant2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35f65ec9f5f4ed3f9dabd659ee38f5fbbd2645e08f4592fd6476437d2a644e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ClosedSubmodule extends Submodule R M, Closeds M where

namespace ClosedSubmodule
variable {s t : ClosedSubmodule R M} {x : M}

attribute [coe] toSubmodule toCloseds

/-- Reinterpret a closed submodule as a submodule. -/
add_decl_doc toSubmodule

/-- Reinterpret a closed submodule as a closed set. -/
add_decl_doc toCloseds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClosedSubmodule/Variant2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClosedSubmodule/Variant2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fad80db455e7b17eabc5d29bc151685d38f37cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
