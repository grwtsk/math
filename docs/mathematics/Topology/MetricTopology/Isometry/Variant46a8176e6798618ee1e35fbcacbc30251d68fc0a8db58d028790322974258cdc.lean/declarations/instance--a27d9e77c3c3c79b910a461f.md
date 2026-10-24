# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb7c0b503a44855f5e09e5a0e01e1b22e7dd72533ae07b0458de68425b59b6b3",
  "kind": "instance",
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
  "slug": "instance--a27d9e77c3c3c79b910a461f",
  "source": {
    "blob": "9ac157c161f97062b336a7688d4bef717d26c79a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 315,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant46a8176e6798618ee1e35fbcacbc30251d68fc0a8db58d028790322974258cdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a27d9e77c3c3c79b910a461f6c0bb5410ea7343f7487724cbe9044e8db1cd1ae",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant46a8176e6798618ee1e35fbcacbc30251d68fc0a8db58d028790322974258cdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb7c0b503a44855f5e09e5a0e01e1b22e7dd72533ae07b0458de68425b59b6b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : EquivLike (α ≃ᵢ β) α β where
  coe e := e.toEquiv
  inv e := e.toEquiv.symm
  left_inv e := e.left_inv
  right_inv e := e.right_inv
  coe_injective' _ _ h _ := toEquiv_injective <| FunLike.ext' h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant46a8176e6798618ee1e35fbcacbc30251d68fc0a8db58d028790322974258cdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant46a8176e6798618ee1e35fbcacbc30251d68fc0a8db58d028790322974258cdc.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac157c161f97062b336a7688d4bef717d26c79a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
