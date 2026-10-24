# eHolderNorm_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45553cb0-fae0-cb81-9b29-74d04c01532d",
  "kind": "lemma",
  "lexical_name": "eHolderNorm_smul",
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
  "slug": "eholdernorm-smul--8cf51c6fba47ce323a916511",
  "source": {
    "blob": "acb796187791dfe3462b5bde06d31a857c0fa205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 242,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf51c6fba47ce323a9165117fb483ab97e777589e5667ff392ff7c3800616ec",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45553cb0-fae0-cb81-9b29-74d04c01532d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHolderNorm_smul {α} [NormedRing α] [Module α Y] [NormSMulClass α Y] (c : α) :
    eHolderNorm r (c • f) = ‖c‖₊ * eHolderNorm r f := by
  by_cases hc : ‖c‖₊ = 0
  · rw [nnnorm_eq_zero] at hc
    simp [hc]
  by_cases hf : MemHolder r f
  · refine le_antisymm ((hf.holderWith.smul c).eHolderNorm_le.trans ?_) <| mul_le_of_le_div' ?_
    · rw [coe_mul, hf.coe_nnHolderNorm_eq_eHolderNorm, mul_comm]
    · rw [← (hf.holderWith.smul c).memHolder.coe_nnHolderNorm_eq_eHolderNorm, ← coe_div hc]
      refine HolderWith.eHolderNorm_le fun x₁ x₂ => ?_
      rw [coe_div hc, ← ENNReal.mul_div_right_comm,
        ENNReal.le_div_iff_mul_le (Or.inl <| coe_ne_zero.2 hc) <| Or.inl coe_ne_top,
        mul_comm, ← smul_eq_mul, ← ENNReal.smul_def, ← edist_smul₀, ← Pi.smul_apply,
        ← Pi.smul_apply]
      exact hf.smul.holderWith x₁ x₂
  · rw [← eHolderNorm_eq_top] at hf
    rw [hf, mul_top <| coe_ne_zero.2 hc, eHolderNorm_eq_top, MemHolder.smul_iff hc]
    rw [nnnorm_eq_zero] at hc
    intro h
    exact h.eHolderNorm_lt_top.ne hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb796187791dfe3462b5bde06d31a857c0fa205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
