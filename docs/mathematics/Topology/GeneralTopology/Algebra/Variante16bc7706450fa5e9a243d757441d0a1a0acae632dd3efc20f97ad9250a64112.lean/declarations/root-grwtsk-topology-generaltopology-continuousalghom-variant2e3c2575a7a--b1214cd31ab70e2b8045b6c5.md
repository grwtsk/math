# _root_.GRWTSK.Topology.GeneralTopology.ContinuousAlgHom.Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.Subalgebra.valA

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d4919694e1105f48e5798125ba154fa096b7933dbc0c03856595a36a25d345b",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ContinuousAlgHom.Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.Subalgebra.valA",
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
  "slug": "root-grwtsk-topology-generaltopology-continuousalghom-variant2e3c2575a7a--b1214cd31ab70e2b8045b6c5",
  "source": {
    "blob": "4596a5599cb843e5ccee1503e747a95e8124506b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 535,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variante16bc7706450fa5e9a243d757441d0a1a0acae632dd3efc20f97ad9250a64112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1214cd31ab70e2b8045b6c5523390821f3f6021f6ad7c6a6dbe4b1a28e17a41",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variante16bc7706450fa5e9a243d757441d0a1a0acae632dd3efc20f97ad9250a64112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d4919694e1105f48e5798125ba154fa096b7933dbc0c03856595a36a25d345b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.ContinuousAlgHom.Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.Subalgebra.valA (p : Subalgebra R A) : p →A[R] A where
  cont := continuous_subtype_val
  toAlgHom := p.val

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variante16bc7706450fa5e9a243d757441d0a1a0acae632dd3efc20f97ad9250a64112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variante16bc7706450fa5e9a243d757441d0a1a0acae632dd3efc20f97ad9250a64112.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4596a5599cb843e5ccee1503e747a95e8124506b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
