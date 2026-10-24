# _root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.isStrictlyPositive_iff_exists_isUnit_and_isSelfAdjoint_and_eq_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c07ae663-4c7b-6ca6-3a62-2e38b82f887b",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.isStrictlyPositive_iff_exists_isUnit_and_isSelfAdjoint_and_eq_mul_self",
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
  "slug": "root-grwtsk-topology-generaltopology-nnrpow-variantecbbbef8e6ba6aeaaf717--e3227879ea93d3d7b6571fe2",
  "source": {
    "blob": "3ec5dbefe8609409fed35b3e004162817c4bfc78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 853,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3227879ea93d3d7b6571fe200e91635ab461da10202dca193001fcf8aedb0e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c07ae663-4c7b-6ca6-3a62-2e38b82f887b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.isStrictlyPositive_iff_exists_isUnit_and_isSelfAdjoint_and_eq_mul_self
    {a : A} : IsStrictlyPositive a ↔ ∃ b, IsUnit b ∧ IsSelfAdjoint b ∧ a = b * b :=
  CStarAlgebra.isStrictlyPositive_TFAE.out 1 5
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec5dbefe8609409fed35b3e004162817c4bfc78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
