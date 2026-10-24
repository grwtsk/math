# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea3d6cf07702c1b779a5cc4727d24eee4d9c78b66b985c2ee80b90e486f2e803",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--f99c0ebf742cfdc205404cb4",
  "source": {
    "blob": "34233bc6a0c1ff7258bd575be27fe803b854a64b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 20,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f99c0ebf742cfdc205404cb4d9f09dc043f74dcebe556ab6c7bf236084b777cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea3d6cf07702c1b779a5cc4727d24eee4d9c78b66b985c2ee80b90e486f2e803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

namespace Real

open Set Filter

open scoped Topology Real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34233bc6a0c1ff7258bd575be27fe803b854a64b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
