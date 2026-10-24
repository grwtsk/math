# Verification target: GRWTSK.Algebra.LinearAlgebra.Loop.Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2731f2051920e25b39939fef5db21aa13990e016",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2731f2051920e25b39939fef5db21aa13990e016`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [loopAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/loopalgebra--65a0bf6eb80e2d94c952e21e.md) | 65 | `declaration-track:65a0bf6eb80e2d94c952e21e5dc0df2e224b34410afa26bd4e4a89ca2814b831` |
| 2 | `def` | [loopAlgebraEquivLaurent](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/loopalgebraequivlaurent--c1ffd0d1a3103989f73e754a.md) | 70 | `declaration-track:c1ffd0d1a3103989f73e754af2367c2f88719b97881007000122f95f16a70177` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/instance--811c253f0168a67818a21b17.md) | 77 | `declaration-track:811c253f0168a67818a21b17a36806a77ce07984984ebf8baadbe06570b00f80` |
| 4 | `def` | [toFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/tofinsupp--81f73f6160dd612a14187bae.md) | 110 | `declaration-track:81f73f6160dd612a14187bae5b422ccb3b83903e5923b6cc401c54347b8a97d0` |
| 5 | `lemma` | [toFinsupp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/tofinsupp-symm-single--ec5fcca3d27af4b6967b9a7c.md) | 114 | `result-track:ec5fcca3d27af4b6967b9a7c55487d6996c72b0872617a8da8e2d0a0aa0eeb5f` |
| 6 | `lemma` | [toFinsupp_single_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/tofinsupp-single-tmul--a8570dbfd18e1c73fb5cb29f.md) | 119 | `result-track:a8570dbfd18e1c73fb5cb29fe53b137c326dcd13d908910edaf5d51d03947c6e` |
| 7 | `def` | [residuePairing](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/residuepairing--774206e09390d9a81cc89971.md) | 127 | `declaration-track:774206e09390d9a81cc89971654f17b4880fd537fdc3c084dca9abfa0451c7d4` |
| 8 | `def` | [twoCochainOfBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/twocochainofbilinear--99bbc5066624e377feea85c2.md) | 153 | `declaration-track:99bbc5066624e377feea85c2f925fd15841ba2c1be92aafb47551d0274ef17cc` |
| 9 | `lemma` | [twoCochainOfBilinear_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/twocochainofbilinear-apply-apply--e08640dabe90102c2bba2980.md) | 174 | `result-track:e08640dabe90102c2bba298080787a64041d31ede877e26c07c2c75fbc6afeae` |
| 10 | `def` | [twoCocycleOfBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/declarations/twococycleofbilinear--b03d8cf7b4ce7b5a93fa700b.md) | 183 | `declaration-track:b03d8cf7b4ce7b5a93fa700bff07393b345e7f1df1971479ebf06f159bd5adc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
