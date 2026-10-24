# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Axis.Variant3160df186b9835f2c583f482efe8ad7b0f3130612671463aa96a991fa6522c33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eec3bed0f07f2d3e3865a478268b162df183934a` · SHA-256 `3160df186b9835f2c583f482efe8ad7b0f3130612671463aa96a991fa6522c33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fin.Basic

/-!
# Biaxial attention axes

Token transport and depth retrieval are independent coordinates of one finite
semantic realization.  Their names are protected from quantities that may
look numerically similar but have different mathematical authority.
-/

namespace Mathematics.Attention

inductive AttentionAxis
  | sequence
  | depth
  deriving DecidableEq, Repr

structure BiaxialIndex (depthCount tokenCount : Nat) where
  depth : Fin depthCount
  token : Fin tokenCount
  deriving DecidableEq, Repr

inductive AttentionQuantityKind
  | dataAttention
  | depthAttention
  | numericalResidualError
  | authorityWeight
  | kdaRetention
  | abelParameter
  | attentionResidualWeight
  | reynoldsCharacterWeight
  | kdaRecurrentState
  | mpsVirtualBond
  | blockAggregation
  | certifiedCondensation
  | internalModelAttention
  | reproductiveContextProof
  deriving DecidableEq, Repr

theorem data_attention_ne_depth_attention :
    AttentionQuantityKind.dataAttention ≠
      AttentionQuantityKind.depthAttention := by
  decide

theorem attention_weight_ne_authority_weight :
    AttentionQuantityKind.depthAttention ≠
      AttentionQuantityKind.authorityWeight := by
  decide

theorem kda_retention_ne_abel_parameter :
    AttentionQuantityKind.kdaRetention ≠
      AttentionQuantityKind.abelParameter := by
  decide

theorem attention_residual_ne_reynolds_weight :
    AttentionQuantityKind.attentionResidualWeight ≠
      AttentionQuantityKind.reynoldsCharacterWeight := by
  decide

theorem recurrent_state_ne_mps_bond :
    AttentionQuantityKind.kdaRecurrentState ≠
      AttentionQuantityKind.mpsVirtualBond := by
  decide

theorem aggregation_ne_certified_condensation :
    AttentionQuantityKind.blockAggregation ≠
      AttentionQuantityKind.certifiedCondensation := by
  decide

theorem internal_attention_ne_reproductive_proof :
    AttentionQuantityKind.internalModelAttention ≠
      AttentionQuantityKind.reproductiveContextProof := by
  decide

end Mathematics.Attention
```
