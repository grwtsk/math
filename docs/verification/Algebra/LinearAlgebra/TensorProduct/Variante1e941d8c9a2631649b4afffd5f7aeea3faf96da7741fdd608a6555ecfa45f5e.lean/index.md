# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4767145d355148945b5f451057b3938f87057742",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4767145d355148945b5f451057b3938f87057742`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.CoassocSimps` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/instcoalgebrastruct--50b9696f732aa043efa3ddcc.md) | 53 | `declaration-track:50b9696f732aa043efa3ddccff2b0ea9e49e9b6cb74e980f1c5bcd5c58b10b77` |
| 2 | `lemma` | [comul_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/comul-def--bbf6663ab2d1bb2187dd9815.md) | 59 | `result-track:bbf6663ab2d1bb2187dd9815d3bd8e87590d9b655805f835cdd626c7805e39b5` |
| 3 | `lemma` | [counit_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/counit-def--f14c7db7b05743cad6d2ca5b.md) | 65 | `result-track:f14c7db7b05743cad6d2ca5bd21c986f599ef0612ee4696950e68b9b6a5455b2` |
| 4 | `lemma` | [comul_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/comul-tmul--ccfb30cd892b93c8a67513ea.md) | 71 | `result-track:ccfb30cd892b93c8a67513ea90696784249f545f2cc80e2d93d3bcbdd9327247` |
| 5 | `lemma` | [counit_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/counit-tmul--e95e507e1b421a8dcfefcbd1.md) | 76 | `result-track:e95e507e1b421a8dcfefcbd15ecb7bb8c0d2a8d6f4e2a70651356e89425016dc` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/macro--c3437a6a4b05b6b34a515fbd.md) | 87 | `declaration-track:c3437a6a4b05b6b34a515fbd7b5b6ccb582b83878256fc26e7d63dfb071c4ac7` |
| 7 | `lemma` | [coassoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/coassoc--8b176d59643cf962a56c0a5c.md) | 98 | `result-track:8b176d59643cf962a56c0a5cff4ed2cf5e6a70b54e94a4f2b45f8ba9ef7c493f` |
| 8 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/instcoalgebra--4dd1d1f9329f86009c8b561a.md) | 134 | `declaration-track:4dd1d1f9329f86009c8b561adb1edb9ffd34da5d96043a52e2b55d5377a96ca8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/instance--ebee1d4de04bcc43986b7149.md) | 166 | `declaration-track:ebee1d4de04bcc43986b7149eb9c46ec32ce91c4124595525ac054f5485c81ab` |
| 10 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/map--5398cc1500083947f5eb2bb9.md) | 189 | `declaration-track:5398cc1500083947f5eb2bb99f937e741eecaebaa854b29846e722d761758cbf` |
| 11 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/map-tmul--986507e63421d79612fcf522.md) | 202 | `result-track:986507e63421d79612fcf5229a2bed1e3680030074a3c7b5d083d9306ac184bd` |
| 12 | `theorem` | [map_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/map-tolinearmap--4dc6c1bd077eef444cea149f.md) | 207 | `result-track:4dc6c1bd077eef444cea149f21d77a899b5e8ae69845051077281d4073bb24f8` |
| 13 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/assoc--020ab5458acf302f07ac43aa.md) | 214 | `declaration-track:020ab5458acf302f07ac43aae540d27ef1600bc17afd1d179af9a891b684495e` |
| 14 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/assoc-tmul--2ebb432075ef350266d85942.md) | 229 | `result-track:2ebb432075ef350266d859429df62334e799d76d578e15d33244c1fc1baa081f` |
| 15 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/assoc-symm-tmul--23ef682abf8edde8021c3fd6.md) | 234 | `result-track:23ef682abf8edde8021c3fd65cb1445ef8f0bd75cd2763b0bec52e559e30b9bf` |
| 16 | `theorem` | [assoc_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/assoc-tolinearequiv--3c0d543211bcf4f7aeeba761.md) | 239 | `result-track:3c0d543211bcf4f7aeeba761f42e9710f4c229a8a54019d460371f169c005d8d` |
| 17 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/lid--3fb79f8f48a586bc68f05b83.md) | 247 | `declaration-track:3fb79f8f48a586bc68f05b83af942e2166fccd9c9aad94aee8b03eb2e176669d` |
| 18 | `theorem` | [lid_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/lid-tolinearequiv--d68281c2abc35cf2c1f6b199.md) | 260 | `result-track:d68281c2abc35cf2c1f6b1996870ffd631e42beb24263da9ff29ae1306aa2617` |
| 19 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/lid-tmul--90c55ce427824110c50752a1.md) | 264 | `result-track:90c55ce427824110c50752a141a0eee56f6ebfa263969f9fadabe6b43a449c7b` |
| 20 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/lid-symm-apply--b8bc7c77065c5c491796dddc.md) | 267 | `result-track:b8bc7c77065c5c491796dddc3ee6f7679f75df779a367562812f93a3aa6761d9` |
| 21 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/rid--aa4f970a717672a0783cf485.md) | 273 | `declaration-track:aa4f970a717672a0783cf485d207aa360e3f094d88c68ff747028579b1157f2d` |
| 22 | `theorem` | [rid_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/rid-tolinearequiv--03c284ebaddb1c0ccee26410.md) | 284 | `result-track:03c284ebaddb1c0ccee26410bba09e56fd88fb34fbe1076c760b97af9a4309c0` |
| 23 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/rid-tmul--8cdb92184e053a5e04e3767e.md) | 288 | `result-track:8cdb92184e053a5e04e3767eccf144b906e666c4b29498d19e7663e9c3afbdc9` |
| 24 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/rid-symm-apply--e33e9a4b48f42ff963a5b9fa.md) | 291 | `result-track:e33e9a4b48f42ff963a5b9fa4c1e55669f49b676360541b34c27f3dbbf3a9e9a` |
| 25 | `abbrev` | [lTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/ltensor--3dad7e261e57d2bd7efbf419.md) | 306 | `declaration-track:3dad7e261e57d2bd7efbf419e2e4baed04f73bcf8ee690473abe637ff7ae4322` |
| 26 | `abbrev` | [rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/rtensor--a1e900ff7ba0dccf39604837.md) | 310 | `declaration-track:a1e900ff7ba0dccf39604837d66afb6176de0952eaaa4c64e28e2d58ad651d0f` |
| 27 | `def` | [comulCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/declarations/comulcoalghom--35ea37ab8cb6150a886f4a1c.md) | 328 | `declaration-track:35ea37ab8cb6150a886f4a1c5eaf7f680e5c5e57c866d88626e7c085877707e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
