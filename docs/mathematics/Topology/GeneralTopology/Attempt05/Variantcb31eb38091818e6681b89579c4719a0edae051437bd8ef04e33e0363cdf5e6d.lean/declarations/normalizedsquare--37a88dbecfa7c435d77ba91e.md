# normalizedSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed13b415ddc0ba772e57e13b4d3551beafd5076e90274f0775926aa7ae6eed22",
  "kind": "def",
  "lexical_name": "normalizedSquare",
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
  "slug": "normalizedsquare--37a88dbecfa7c435d77ba91e",
  "source": {
    "blob": "cbef82129a08a7d85ccb6be5e2beda9748aecb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 17,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37a88dbecfa7c435d77ba91e4abbb5f6a844a374f337974e61ea2e27f9f67a92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed13b415ddc0ba772e57e13b4d3551beafd5076e90274f0775926aa7ae6eed22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizedSquare (A z : ℝ) : ℝ :=
  ((bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2).re

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbef82129a08a7d85ccb6be5e2beda9748aecb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
