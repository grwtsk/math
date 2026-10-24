# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfa2517ce8d7d25c485ea99c713f9bbbf23db1f3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfa2517ce8d7d25c485ea99c713f9bbbf23db1f3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeftLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulleftlinearmap--bfa3bc56e896aa166da183bc.md) | 39 | `declaration-track:bfa3bc56e896aa166da183bc9565a8043943c64e0fce477717f497f34570948e` |
| 2 | `theorem` | [mulLeftLinearMap_eq_mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulleftlinearmap-eq-mulleft--bf8d973fcdc7ea50d91160ab.md) | 46 | `result-track:bf8d973fcdc7ea50d91160abfe0b7827fd799dc8a6562ce39205a46ba3163cfa` |
| 3 | `theorem` | [mulLeftLinearMap_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulleftlinearmap-zero-eq-zero--e107ff089f506eae71ce46d2.md) | 51 | `result-track:e107ff089f506eae71ce46d2f33f8408ed9a232e656a79fcb1d0a1e26501d807` |
| 4 | `def` | [mulRightLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulrightlinearmap--131308b73fa9db68e92b9600.md) | 61 | `declaration-track:131308b73fa9db68e92b96006167e0f786412e0bcda9eb1f2530961a62674622` |
| 5 | `theorem` | [mulRightLinearMap_eq_mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulrightlinearmap-eq-mulright--0dc29d5b783bd68b8a7cc7cc.md) | 68 | `result-track:0dc29d5b783bd68b8a7cc7cc322e8caa1e133e6cd11b0fa94551d8ff3fe98547` |
| 6 | `theorem` | [mulRightLinearMap_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulrightlinearmap-zero-eq-zero--72c10da0208f5c4b285d2b0f.md) | 73 | `result-track:72c10da0208f5c4b285d2b0fd6fcaa2aa16d9ce023861e78429ac98e1a51318e` |
| 7 | `def` | [mulLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mullinearmap--130f992b06ede73914f3ac2c.md) | 85 | `declaration-track:130f992b06ede73914f3ac2c160f6e4153afa180387868486c6df87549f80ef2` |
| 8 | `theorem` | [mulLinearMap_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mullinearmap-eq-mul--0ca8f6ee9fc78a550a7141f1.md) | 91 | `result-track:0ca8f6ee9fc78a550a7141f16f70ed4993eef6275561d030996566ef2c49241b` |
| 9 | `theorem` | [mulLeftLinearMap_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulleftlinearmap-mul--53fd80bf674248dcaa8c29ca.md) | 103 | `result-track:53fd80bf674248dcaa8c29ca527180c855288d2d59046fc67537ddaa4e085337` |
| 10 | `theorem` | [mulRightLinearMap_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulrightlinearmap-mul--7c2e0b6e52fbc545dd378868.md) | 110 | `result-track:7c2e0b6e52fbc545dd37886821e3c4244721c66e1c03b4c0cf7018831ca18e24` |
| 11 | `theorem` | [commute_mulLeftLinearMap_mulRightLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/commute-mulleftlinearmap-mulrightlinearmap--fd0e486c7c6455d5f54f6eb4.md) | 121 | `result-track:fd0e486c7c6455d5f54f6eb40ed90a9e62d51d562fa43b90b8dfaa49267687ca` |
| 12 | `theorem` | [mulLeftLinearMap_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulleftlinearmap-one--a7d31ed9c96b9e40ccae5056.md) | 139 | `result-track:a7d31ed9c96b9e40ccae5056068d16fa7fc94c7cf5db798ca39f56678b0e7bbd` |
| 13 | `theorem` | [mulLeftLinearMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulleftlinearmap-eq-zero-iff--22d49ea6e0ef9f35451fcb27.md) | 145 | `result-track:22d49ea6e0ef9f35451fcb27d7ba0633151bc73a6e713bd0e4e9037dc00eb9c4` |
| 14 | `theorem` | [pow_mulLeftLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/pow-mulleftlinearmap--b0f1818e830dd96f03900fb0.md) | 158 | `result-track:b0f1818e830dd96f03900fb04fc6d5eca612790eb49e1bdaa49278804cb444a0` |
| 15 | `theorem` | [mulRightLinearMap_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulrightlinearmap-one--0282b2e40c8a10c91961a688.md) | 172 | `result-track:0282b2e40c8a10c91961a68864aa17d7411de9b9533a858699064ac0455a240d` |
| 16 | `theorem` | [mulRightLinearMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/mulrightlinearmap-eq-zero-iff--8f5d10c1f2198b46cb196ec5.md) | 178 | `result-track:8f5d10c1f2198b46cb196ec5581409176d1b730af945f4d3f03cda0d07719b57` |
| 17 | `theorem` | [pow_mulRightLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/declarations/pow-mulrightlinearmap--9044f7d0c0f8f83acc2f77d5.md) | 191 | `result-track:9044f7d0c0f8f83acc2f77d5113a753a97b53e10988281cc55a4b73bb3969767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
