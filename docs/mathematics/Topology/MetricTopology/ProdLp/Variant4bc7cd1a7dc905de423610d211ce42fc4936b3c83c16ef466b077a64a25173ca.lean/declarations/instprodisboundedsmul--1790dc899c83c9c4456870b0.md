# instProdIsBoundedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b39cb448410454244c7b97071dab3012c00af6320caeb00b49881540ea016e5c",
  "kind": "instance",
  "lexical_name": "instProdIsBoundedSMul",
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
  "slug": "instprodisboundedsmul--1790dc899c83c9c4456870b0",
  "source": {
    "blob": "88631d0fb14b4c0c8b9160981fd79f9827d91b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 924,
    "line": 909,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1790dc899c83c9c4456870b0849d4604a2add5bd12296433dfdcac7169e033ba",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b39cb448410454244c7b97071dab3012c00af6320caeb00b49881540ea016e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 909–924.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instProdIsBoundedSMul : IsBoundedSMul 𝕜 (WithLp p (α × β)) :=
  .of_nnnorm_smul_le fun c f => by
    rcases p.dichotomy with (rfl | hp)
    · simp only [← prod_nnnorm_ofLp, ofLp_smul]
      exact norm_smul_le _ _
    · have hp0 : 0 < p.toReal := zero_lt_one.trans_le hp
      have hpt : p ≠ ⊤ := p.toReal_pos_iff_ne_top.mp hp0
      rw [prod_nnnorm_eq_add hpt, prod_nnnorm_eq_add hpt, one_div, NNReal.rpow_inv_le_iff hp0,
        NNReal.mul_rpow, ← NNReal.rpow_mul, inv_mul_cancel₀ hp0.ne', NNReal.rpow_one, mul_add,
        ← NNReal.mul_rpow, ← NNReal.mul_rpow]
      gcongr <;> exact nnnorm_smul_le _ _

variable {𝕜 p α β}

/-- The canonical map `WithLp.equiv` between `WithLp ∞ (α × β)` and `α × β` as a linear isometric
equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean#L909).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88631d0fb14b4c0c8b9160981fd79f9827d91b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
