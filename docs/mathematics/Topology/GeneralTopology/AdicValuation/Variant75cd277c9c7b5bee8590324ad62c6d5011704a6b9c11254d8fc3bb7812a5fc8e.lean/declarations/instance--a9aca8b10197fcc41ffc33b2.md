# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9091abc940102d4e2262938b1a126938bc0f7c4df37e50f789b53d0fd2a47b08",
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
  "slug": "instance--a9aca8b10197fcc41ffc33b2",
  "source": {
    "blob": "00974fbd43c403d66da8c5d54cc4b9564d357fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 711,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9aca8b10197fcc41ffc33b2c18d7f7b41a24b6af6461dd0bdf825dcedffacd8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9091abc940102d4e2262938b1a126938bc0f7c4df37e50f789b53d0fd2a47b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Valued (adicCompletion K v) ℤᵐ⁰ where
  v := valuation K v
  is_topological_valuation s := by
    rw [(isUniformInducing_toCompletion K v).isInducing.nhds_eq_comap 0, toCompletion_zero,
      Filter.mem_comap]
    refine ⟨fun ⟨t, ht, hts⟩ ↦ ?_, fun ⟨γ, hγ⟩ ↦ ?_⟩
    · obtain ⟨δ, hδ⟩ := Valued.mem_nhds_zero.1 ht
      refine ⟨Units.mapEquiv (valueGroupOrderIso K v).symm.toMulEquiv δ, fun x hx ↦ hts (hδ ?_)⟩
      rw [Set.mem_ofPred_eq] at hx ⊢
      simpa [← map_lt_map_iff (valueGroupOrderIso K v), valueGroupOrderIso_restrict] using hx
    · refine ⟨{y | Valued.v.restrict y < ↑(Units.mapEquiv (valueGroupOrderIso K v).toMulEquiv γ)},
        ?_, fun x hx ↦ hγ ?_⟩
      · rw [Valued.mem_nhds_zero]
        exact ⟨Units.mapEquiv (valueGroupOrderIso K v).toMulEquiv γ, subset_rfl⟩
      · rw [Set.mem_ofPred_eq, ← map_lt_map_iff (valueGroupOrderIso K v),
          valueGroupOrderIso_restrict]
        simpa using hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00974fbd43c403d66da8c5d54cc4b9564d357fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
