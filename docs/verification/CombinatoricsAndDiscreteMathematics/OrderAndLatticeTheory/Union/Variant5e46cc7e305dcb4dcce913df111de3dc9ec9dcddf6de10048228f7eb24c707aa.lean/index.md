# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Union.Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4774250ac6b9bd37c87be22df95dab85e0e600c2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4774250ac6b9bd37c87be22df95dab85e0e600c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.LinearOrder` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StrictMonoOn.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/declarations/strictmonoon-union--7ba10e011aa2d055a9441a54.md) | 33 | `result-track:7ba10e011aa2d055a9441a54b3179865b4e344d84600e014703b413827ce3d3b` |
| 2 | `theorem` | [StrictMonoOn.Iic_union_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/declarations/strictmonoon-iic-union-ici--c9502eac9d49253e45f18868.md) | 62 | `result-track:c9502eac9d49253e45f1886864eaa3895ac1f47c40194c2a653892d7166720f4` |
| 3 | `theorem` | [StrictAntiOn.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/declarations/strictantion-union--5ad7171dc08d151362a01e97.md) | 69 | `result-track:5ad7171dc08d151362a01e97b8740a6892002edff5f58f67b66814c725fd12e6` |
| 4 | `theorem` | [StrictAntiOn.Iic_union_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/declarations/strictantion-iic-union-ici--d1cc28d096c47c3d899a0528.md) | 75 | `result-track:d1cc28d096c47c3d899a0528f878a98c789a638e2b0f89e0919299832658ce7e` |
| 5 | `theorem` | [MonotoneOn.union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/declarations/monotoneon-union-right--1ae68b18771099ad54539631.md) | 81 | `result-track:1ae68b18771099ad545396311118a0cbcb1b4f2b053d1cfc3750d15cdba14559` |
| 6 | `theorem` | [MonotoneOn.Iic_union_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/declarations/monotoneon-iic-union-ici--2a9d4f32a563e825873cd205.md) | 109 | `result-track:2a9d4f32a563e825873cd20521ea439853b16ed73e2fad4936e29a93216e4919` |
| 7 | `theorem` | [AntitoneOn.union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/declarations/antitoneon-union-right--0dee8fe810e77cdcb72a6488.md) | 116 | `result-track:0dee8fe810e77cdcb72a6488f16e0542d172c0ad766f29230e28934c5fbcef0d` |
| 8 | `theorem` | [AntitoneOn.Iic_union_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variant5e46cc7e305dcb4dcce913df111de3dc9ec9dcddf6de10048228f7eb24c707aa.lean/declarations/antitoneon-iic-union-ici--9fcc05902250c7339f057820.md) | 121 | `result-track:9fcc05902250c7339f057820256cfff051baec1eceeb5f1c1616532d2628455d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
