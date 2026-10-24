# Verification target: GRWTSK.Algebra.LinearAlgebra.Regularization.Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24f3dc429f88cde0cf944d1bf7d2fde936e0456c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24f3dc429f88cde0cf944d1bf7d2fde936e0456c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Universe.Id` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RegularizedKernelIdentity](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/regularizedkernelidentity--e4a9c3e4a84784360aae4c8e.md) | 34 | `declaration-track:e4a9c3e4a84784360aae4c8e0d31ce09c09f15c5298a34b6811410c4ada1a96c` |
| 2 | `def` | [productionRegularizationVersion](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/productionregularizationversion--ea6b0887090d50c09227ba5a.md) | 46 | `declaration-track:ea6b0887090d50c09227ba5a8d484d8a5bae5cdc72e06cb6ff2ea27184c7230c` |
| 3 | `def` | [productionEpsilonNumerator](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/productionepsilonnumerator--86f112ef8b5a4902626322a5.md) | 50 | `declaration-track:86f112ef8b5a4902626322a52bb6db84dc1a9f0b1ef4feea7ffd347b5b4c7d4d` |
| 4 | `def` | [productionEpsilonDenominator](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/productionepsilondenominator--e4f9f7504699e96260811bb0.md) | 53 | `declaration-track:e4f9f7504699e96260811bb037731497c45108babe94d9b74e0bb023df8b2886` |
| 5 | `def` | [productionEpsilon](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/productionepsilon--09c989e04fb5e62338123254.md) | 56 | `declaration-track:09c989e04fb5e623381232544a90d491193caaf63a1d2e01a17b1840377e0125` |
| 6 | `theorem` | [productionEpsilon_pos](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/productionepsilon-pos--c5ed9351917d044feb0d0cad.md) | 59 | `result-track:c5ed9351917d044feb0d0cad326f1db97467f48365e288a71a5e220a7294e089` |
| 7 | `def` | [identityRegularizer](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/identityregularizer--48fac8b74a9f15bfd876c1c6.md) | 68 | `declaration-track:48fac8b74a9f15bfd876c1c64616fd0768a25a355e2ca0f6c12698f93ea1b0dc` |
| 8 | `theorem` | [identityRegularizer_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/identityregularizer-posdef--775ee68de72add1fc78e2dbe.md) | 72 | `result-track:775ee68de72add1fc78e2dbe39dc0eccd77a04811b380aced4326dc3b0674870` |
| 9 | `def` | [regularizedKernel](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/regularizedkernel--55e52aecb4397cf156fe4aaa.md) | 78 | `declaration-track:55e52aecb4397cf156fe4aaa331a708ac2dc026f6856d78a54aac27b8c238b9a` |
| 10 | `theorem` | [regularizedKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/regularizedkernel-apply--e22d7a1cb83645a0dc8ae398.md) | 88 | `result-track:e22d7a1cb83645a0dc8ae398ab6cb40d028b3e191290fdbfaf666e2de5f5cb91` |
| 11 | `theorem` | [regularizedKernel_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/regularizedkernel-hermitian--14bdd694ddcc7c3615fb64ce.md) | 102 | `result-track:14bdd694ddcc7c3615fb64ce9b141393c99cf11f792ee3cccc3dbd52307df6f8` |
| 12 | `theorem` | [regularizedKernel_psd](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/regularizedkernel-psd--9b536bd461432866cb93bfd2.md) | 110 | `result-track:9b536bd461432866cb93bfd2edd95545a9cc6708038ef618b38a212dfaab3168` |
| 13 | `theorem` | [regularizedKernel_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/regularizedkernel-posdef--22cf8ec892029350cf7b6409.md) | 119 | `result-track:22cf8ec892029350cf7b640962d5369a3b6a6c3d9b4d00e755a06b0da188fa6d` |
| 14 | `theorem` | [regularizedKernel_strictOnDistinct](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/regularizedkernel-strictondistinct--559d4b14740c96dae4f91efc.md) | 129 | `result-track:559d4b14740c96dae4f91efcab46378bc4f14a08f0800deb7b8479e6282892b3` |
| 15 | `def` | [zeroSemanticKernel](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/zerosemantickernel--f0f59aee640d1e4eae37e1c4.md) | 141 | `declaration-track:f0f59aee640d1e4eae37e1c4fd8157b567ea176c719c266a910ea2bc8ace733e` |
| 16 | `theorem` | [regularizedZero_one_eq_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/declarations/regularizedzero-one-eq-kronecker--5aef28725bb7b70095a5175c.md) | 147 | `result-track:5aef28725bb7b70095a5175cdbc5b2b9db9c184dd21999bf5fcd1a0ae422128b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
