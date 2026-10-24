# _root_.GRWTSK.Topology.GeneralTopology.ContinuousAffineEquiv.Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.ContinuousLinearEquiv.toContinuousAffineEquiv_toContinuousAffineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6b1cdac-220f-190c-988e-60a2ace98dea",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ContinuousAffineEquiv.Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.ContinuousLinearEquiv.toContinuousAffineEquiv_toContinuousAffineMap",
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
  "slug": "root-grwtsk-topology-generaltopology-continuousaffineequiv-variantb8f308--e3aa9efecf3c400ba8e552ae",
  "source": {
    "blob": "4f85f59d935ff6e18fb339824c4dfe1ab428fbdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 392,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3aa9efecf3c400ba8e552ae7aba5c665f60a05e1e6eca8803e9ae85374235dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6b1cdac-220f-190c-988e-60a2ace98dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.ContinuousAffineEquiv.Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.ContinuousLinearEquiv.toContinuousAffineEquiv_toContinuousAffineMap (L : E ≃L[k] F) :
    L.toContinuousAffineEquiv.toContinuousAffineMap =
      L.toContinuousLinearMap.toContinuousAffineMap :=
  rfl

variable (k P₁) in
/-- The map `p ↦ v +ᵥ p` as a continuous affine automorphism of an affine space
  on which addition is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f85f59d935ff6e18fb339824c4dfe1ab428fbdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
