# coe_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44051bd7-9106-4996-bdf6-6add5a1403fb",
  "kind": "theorem",
  "lexical_name": "coe_inv",
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
  "slug": "coe-inv--a511dfe4ce7c04d1073e122f",
  "source": {
    "blob": "59d989061f1cf8ba29eddd57d82dc92d4ebec9b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a511dfe4ce7c04d1073e122fc9846f2ec6f1e43687b343b0976640955d80430d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44051bd7-9106-4996-bdf6-6add5a1403fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_inv (x : K) : (x : hat K)⁻¹ = ((x⁻¹ : K) : hat K) := by
  by_cases h : x = 0
  · rw [h, inv_zero]
    dsimp [Inv.inv]
    norm_cast
    simp
  · conv_lhs => dsimp [Inv.inv]
    rw [ite_eq_right]
    · exact hatInv_extends h
    · exact fun H => h (isDenseEmbedding_coe.injective H)

variable [IsUniformAddGroup K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59d989061f1cf8ba29eddd57d82dc92d4ebec9b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
