# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Basic.Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f83fb5fba5dee44f0ade06ada565799589a4e1b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f83fb5fba5dee44f0ade06ada565799589a4e1b`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean.json)

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
| 1 | `theorem` | [discr_eq_basisMatrix_det_sq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/discr-eq-basismatrix-det-sq--91d393e7bd8aa358d92c2f2b.md) | 49 | `result-track:91d393e7bd8aa358d92c2f2bb57c6320eea71352783e9ceed228c133609017d0` |
| 2 | `theorem` | [sign_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/sign-discr--e68e271c9c4424e370e61820.md) | 56 | `result-track:e68e271c9c4424e370e6182038270dff458b1612ba5eb04b364ff2e58f4ccde7` |
| 3 | `def` | [rootDiscr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/rootdiscr--4e20dc3a83ad6cd84a2c57c7.md) | 77 | `declaration-track:4e20dc3a83ad6cd84a2c57c7e2ef252e3d77eb31af6890f292ac36e128fc38a6` |
| 4 | `theorem` | [rootDiscr_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/rootdiscr-def--a7e1c4b524ca471e71ba6e67.md) | 80 | `result-track:a7e1c4b524ca471e71ba6e67ad85f7bb53a7a416ddf4fb6a577138d9d8a462f9` |
| 5 | `theorem` | [rootDiscr_rat](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/rootdiscr-rat--b639cd1244f1a8b89284fd63.md) | 83 | `result-track:b639cd1244f1a8b89284fd63a0c645cd536cfc454a173f52441df930dfe141e1` |
| 6 | `theorem` | [_root_.NumberField.mixedEmbedding.volume_fundamentalDomain_latticeBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/root-numberfield-mixedembedding-volume-fundamentaldomain-latticebasis--ae03045f8ca0f519ae3e546b.md) | 89 | `result-track:ae03045f8ca0f519ae3e546b80ea2f8563f8b23310a5e6cf9ad2a8784b0311d7` |
| 7 | `theorem` | [_root_.NumberField.mixedEmbedding.covolume_integerLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/root-numberfield-mixedembedding-covolume-integerlattice--bac52d3ba744b059bcedf8fa.md) | 124 | `result-track:bac52d3ba744b059bcedf8fa7453696191dd6abb9090580438264a42265bf113` |
| 8 | `theorem` | [_root_.NumberField.mixedEmbedding.covolume_idealLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/root-numberfield-mixedembedding-covolume-ideallattice--50d995b99446913355933e63.md) | 134 | `result-track:50d995b99446913355933e63df17b956803b043935c14eac46d0bb7b05a21e8e` |
| 9 | `theorem` | [exists_ne_zero_mem_ideal_of_norm_le_mul_sqrt_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/exists-ne-zero-mem-ideal-of-norm-le-mul-sqrt-discr--53e28dbff591db099146b6cb.md) | 145 | `result-track:53e28dbff591db099146b6cb12942af66e1176272b1b5c57145476f438dad418` |
| 10 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_of_norm_le_mul_sqrt_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/exists-ne-zero-mem-ringofintegers-of-norm-le-mul-sqrt-discr--b322d2572be068e4e9dac365.md) | 194 | `result-track:b322d2572be068e4e9dac365537a5e8f3ca3bf645cde8c50a66311fbef563ec2` |
| 11 | `theorem` | [abs_discr_ge'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/abs-discr-ge--763a0f0d364fd77b71f18dd1.md) | 208 | `result-track:763a0f0d364fd77b71f18dd107881df260e53fde1d7631ed92423c18e928ec53` |
| 12 | `theorem` | [abs_discr_ge_of_isTotallyComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/abs-discr-ge-of-istotallycomplex--5314abd4ad842fa94a49f81d.md) | 223 | `result-track:5314abd4ad842fa94a49f81d99065406814a4a0a9b2163b97fec707998af87c8` |
| 13 | `theorem` | [abs_discr_rpow_ge_of_isTotallyComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/abs-discr-rpow-ge-of-istotallycomplex--17dbd88120c043f3b9111f56.md) | 229 | `result-track:17dbd88120c043f3b9111f569398036637169652b228fa803e5447c155db5d4e` |
| 14 | `theorem` | [abs_discr_ge](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/abs-discr-ge--d7dbb1ad2d166d1d6fdfada5.md) | 242 | `result-track:d7dbb1ad2d166d1d6fdfada5c8d75bd0e65b47bd824b74dae41b00e4ff27e074` |
| 15 | `theorem` | [abs_discr_gt_two](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/abs-discr-gt-two--d800ea0c2b81c7b004a92bd7.md) | 273 | `result-track:d800ea0c2b81c7b004a92bd7e30d6aa91300744ab813f6c1c623f66f44eeb052` |
| 16 | `theorem` | [finite_of_finite_generating_set](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/finite-of-finite-generating-set--3a80f9fdfaa7216f0315300d.md) | 317 | `result-track:3a80f9fdfaa7216f0315300db3adb185d86f1e2204102524c7ee1aad8506633a` |
| 17 | `abbrev` | [rankOfDiscrBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/rankofdiscrbdd--1916fbac7e619a750a6c4ffa.md) | 332 | `declaration-track:1916fbac7e619a750a6c4ffad5ef403df5bf988ba88e0864e4a5090a8f23cf0d` |
| 18 | `abbrev` | [boundOfDiscBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/boundofdiscbdd--8a6edd4c6b61c35411ee5103.md) | 337 | `declaration-track:8a6edd4c6b61c35411ee5103e07a424a1e178f01e93bdb1475f5186fef3e8acb` |
| 19 | `theorem` | [rank_le_rankOfDiscrBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/rank-le-rankofdiscrbdd--8d8d6fda0b725231836329b5.md) | 343 | `result-track:8d8d6fda0b725231836329b5bffac6dd5312916d978c44d8745f2e66b77fbe44` |
| 20 | `theorem` | [minkowskiBound_lt_boundOfDiscBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/minkowskibound-lt-boundofdiscbdd--f9603021e00609f9456d7808.md) | 370 | `result-track:f9603021e00609f9456d78085734cf12810464cbcdd550f284bb19336eabdbbd` |
| 21 | `theorem` | [natDegree_le_rankOfDiscrBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/natdegree-le-rankofdiscrbdd--49ba43fb8c277d0d371ec86d.md) | 386 | `result-track:49ba43fb8c277d0d371ec86d51092e6f59e7518ab28c129bf0f2a4e42ece4016` |
| 22 | `theorem` | [finite_of_discr_bdd_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/finite-of-discr-bdd-of-isreal--47f0762c658791d51dbc50d3.md) | 395 | `result-track:47f0762c658791d51dbc50d3f3da6ff92a44f7e2cec5b04e1101e14a7a016d06` |
| 23 | `theorem` | [finite_of_discr_bdd_of_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/finite-of-discr-bdd-of-iscomplex--976178fc72a39f9e3912848e.md) | 443 | `result-track:976178fc72a39f9e3912848ecb96c42b6c8a80bd84e8053dd5f8f451db22db51` |
| 24 | `theorem` | [_root_.NumberField.finite_of_discr_bdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/declarations/root-numberfield-finite-of-discr-bdd--8e49d255cc952b51a216ef69.md) | 494 | `result-track:8e49d255cc952b51a216ef69a44243c934f37ee6f3bbe12cd1a2a15b32a7acde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
