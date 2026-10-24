# Verification target: GRWTSK.Algebra.TensorProduct.Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "292ab105b8803ca1f1fb5668f2d0f3f2ada51e8e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/index.md) · [Full source](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `292ab105b8803ca1f1fb5668f2d0f3f2ada51e8e`.

Source path: `GRWTSK/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Kaehler.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mulActionBaseChange](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/mulactionbasechange--78aac1c412caca38131e331e.md) | 31 | `declaration-track:78aac1c412caca38131e331e8754c79331c022443993b7e600c5d234f2f2af2c` |
| 2 | `lemma` | [mulActionBaseChange_smul_tmul](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/mulactionbasechange-smul-tmul--4d6bd3341739353c7bb56b43.md) | 37 | `result-track:4d6bd3341739353c7bb56b433f3cc684714f930cc4a32092d8d58b3cd85d406a` |
| 3 | `lemma` | [mulActionBaseChange_smul_zero](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/mulactionbasechange-smul-zero--1f3f6737ecb87b77be5c88db.md) | 41 | `result-track:1f3f6737ecb87b77be5c88db337cb76a0a2090dd549ba1c96ff875f1cd70fd65` |
| 4 | `lemma` | [mulActionBaseChange_smul_add](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/mulactionbasechange-smul-add--930d6b2e57560d3dd2a96583.md) | 46 | `result-track:930d6b2e57560d3dd2a965834096235e3fb856e01c4b79d2bb6529d43a195ada` |
| 5 | `abbrev` | [moduleBaseChange](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/modulebasechange--147095e67fc522a410ad7738.md) | 54 | `declaration-track:147095e67fc522a410ad77386752d606e08dd5957e64ce885e700f391d50b2c3` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/instance--c84a304d2762c3947f042349.md) | 64 | `declaration-track:c84a304d2762c3947f0423498f1ed918be1f62e960b0b277cfb6c75ec3d50f78` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/instance--5ba4832540974c3e88ae7cce.md) | 72 | `declaration-track:5ba4832540974c3e88ae7cced23f8b08b80780fdc64b512b44049560436887e0` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/instance--a6a148ad333a5c7da1967530.md) | 79 | `declaration-track:a6a148ad333a5c7da1967530f6434c519816fd686d007d541d25d9e7566c1bd5` |
| 9 | `def` | [moduleBaseChange'](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/modulebasechange--81db598663619c054eda2ae0.md) | 84 | `declaration-track:81db598663619c054eda2ae0e22700576f143e7bf3a988882ca67d94382249bb` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/instance--498d6eefb6a8025fac134a56.md) | 91 | `declaration-track:498d6eefb6a8025fac134a56986bf84f571e3a47a2096b30ed78cbaadad74074` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/instance--4b273eec562c2c982207db6a.md) | 100 | `declaration-track:4b273eec562c2c982207db6a9cec1104ca8f00061e46a59e71c2c24d220bb6f2` |
| 12 | `lemma` | [map_liftBaseChange_smul](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/map-liftbasechange-smul--572ad3fe18652ead50799612.md) | 109 | `result-track:572ad3fe18652ead50799612dfa0b2d08136e35aeab8a5c73ba4c19f0757ad73` |
| 13 | `def` | [derivationTensorProduct](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/derivationtensorproduct--6009605d251d9e1c53bfd490.md) | 125 | `declaration-track:6009605d251d9e1c53bfd4903ae988f49e9e951ce83dc4b56cb45568234caee5` |
| 14 | `lemma` | [derivationTensorProduct_algebraMap](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/derivationtensorproduct-algebramap--f77ccfb4f7bebbc9fc1432cf.md) | 157 | `result-track:f77ccfb4f7bebbc9fc1432cfa3d197878666d05dc56f670b54ca86640f4e26bb` |
| 15 | `lemma` | [tensorKaehlerEquiv_left_inv](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/tensorkaehlerequiv-left-inv--45a0de39aced4464b91e64cb.md) | 162 | `result-track:45a0de39aced4464b91e64cb6ef135ecffebcc5d48142b1468a553f5ed22279a` |
| 16 | `def` | [tensorKaehlerEquiv](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/tensorkaehlerequiv--74b6d61e7bdce34b742f460d.md) | 181 | `declaration-track:74b6d61e7bdce34b742f460d43078e12e78ecd0db47dde07e8d20a9c5a6dd010` |
| 17 | `lemma` | [tensorKaehlerEquiv_tmul](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/tensorkaehlerequiv-tmul--976ca220900c0e134f3c91a7.md) | 205 | `result-track:976ca220900c0e134f3c91a783f72aa31ffd27c1d37b38b46bbe988cf351be05` |
| 18 | `lemma` | [isBaseChange](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/isbasechange--8605ba7888c5f003beda1d5d.md) | 213 | `result-track:8605ba7888c5f003beda1d5de6265f433613ced2a19ff41aec64c9418fd2ffb2` |
| 19 | `instance` | [isLocalizedModule](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/islocalizedmodule--d4331df18c292112e5d19182.md) | 221 | `declaration-track:d4331df18c292112e5d191827903b3c625a7ac3ef52f415d932fd4bab0bb5d16` |
| 20 | `instance` | [isLocalizedModule_of_isLocalizedModule](../../../../mathematics/Algebra/TensorProduct/Variantaed85569e9ef338bb5022244577628fed06b52abbd9db0557d004a501daca7be.lean/declarations/islocalizedmodule-of-islocalizedmodule--af8b12162ee4d74885937c0a.md) | 227 | `declaration-track:af8b12162ee4d74885937c0ae50b11902cef6681860e654a7f24c2b29f73d872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
