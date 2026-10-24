# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f5292fee013d87b3f94a93edce65391ebd7bec4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f5292fee013d87b3f94a93edce65391ebd7bec4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/declarations/fintyperange--a45ea49b4669ba3e732c3fee.md) | 51 | `declaration-track:a45ea49b4669ba3e732c3fee423eb956c61ccd9657c6ec5d588cf8e58aa0d0f6` |
| 2 | `instance` | [finite_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/declarations/finite-range--7a18d539ef99ca89fc035b55.md) | 72 | `declaration-track:7a18d539ef99ca89fc035b55259a94364225b221bcb810ea167062580a20475f` |
| 3 | `instance` | [finite_replacement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/declarations/finite-replacement--a45822113a5c10d3b92fb66a.md) | 77 | `declaration-track:a45822113a5c10d3b92fb66a141534f5073b5a93d65e33c93e368337b1a7ab9b` |
| 4 | `theorem` | [finite_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/declarations/finite-range--e7362d56c0f91c97f6a94972.md) | 97 | `result-track:e7362d56c0f91c97f6a949720fe6c403420d683d331d13e0f11a596f8ee3131a` |
| 5 | `theorem` | [Finite.dependent_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/declarations/finite-dependent-image--22b3d8b0a15f679482ab6bb5.md) | 100 | `result-track:22b3d8b0a15f679482ab6bb52ac3c0b3c293b08b75e79885eb235c015908a445` |
| 6 | `lemma` | [Finite.exists_subset_finite_image_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/declarations/finite-exists-subset-finite-image-eq--2c0c53550e6470aa18cfe611.md) | 107 | `result-track:2c0c53550e6470aa18cfe611cc4fae889748b208913b0756b41184484af50cd5` |
| 7 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRange.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.Function.Injective.range_eq_range_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-finiterange-variantcbf60--0872692b09e3fc33fea51c63.md) | 115 | `result-track:0872692b09e3fc33fea51c6336667f6549991465c426cc7e4a02a920731fa641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
