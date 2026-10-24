# eHolderNorm_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6326d85a126fd595424f796ebb2116eb4871747c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64b96474-0659-12d3-46e1-dc8833433f8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6b14397-6b70-e834-9f1d-ccb3428259a0",
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
  "slug": "eholdernorm-smul--735495b06a526ffc114f9f26",
  "source": {
    "blob": "6326d85a126fd595424f796ebb2116eb4871747c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 234,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:735495b06a526ffc114f9f261f7cd9353b676d60f32a47f2cb498bb72443a09b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6b14397-6b70-e834-9f1d-ccb3428259a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–254.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6326d85a126fd595424f796ebb2116eb4871747c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
