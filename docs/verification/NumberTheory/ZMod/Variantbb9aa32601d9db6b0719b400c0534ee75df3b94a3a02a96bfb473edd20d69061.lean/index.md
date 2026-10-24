# Verification target: GRWTSK.NumberTheory.ZMod.Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ee2312e9873e481f5b28614ce42e81f8e7c55be",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ee2312e9873e481f5b28614ce42e81f8e7c55be`.

Source path: `GRWTSK/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.ZMod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Connected` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LSeriesSummable_of_one_lt_re](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lseriessummable-of-one-lt-re--e7aba4bba037506b40504543.md) | 75 | `result-track:e7aba4bba037506b40504543393215a3442e6b72c8957e2ad813a4fd2f4b5ff7` |
| 2 | `def` | [LFunction](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction--a6d278dd9ab09f0e6b52b894.md) | 88 | `declaration-track:a6d278dd9ab09f0e6b52b89487eb6953a110041d6044e935ba5cad5a90ef2df8` |
| 3 | `lemma` | [LFunction_modOne_eq](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-modone-eq--0026ca03018330137e0ebb15.md) | 92 | `result-track:0026ca03018330137e0ebb150a0b3ae00876885ac221f1687fac52e69f0a8b85` |
| 4 | `lemma` | [LFunction_eq_LSeries](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-eq-lseries--f1e3ec1527e4d69cb08e251b.md) | 98 | `result-track:f1e3ec1527e4d69cb08e251b26ef14c153c8f60ba2e311bd0c0f1bd6579607d3` |
| 5 | `lemma` | [differentiableAt_LFunction](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/differentiableat-lfunction--28647b28a76a0eace516f243.md) | 127 | `result-track:28647b28a76a0eace516f24395db2eedda1f7b97bb7536e79c74be5e484ab1ff` |
| 6 | `lemma` | [differentiable_LFunction_of_sum_zero](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/differentiable-lfunction-of-sum-zero--fb457524c3ea6681be808518.md) | 136 | `result-track:fb457524c3ea6681be808518ead1ecfe0efa1843e7d565b1da613fa1d5cfba7b` |
| 7 | `lemma` | [LFunction_residue_one](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-residue-one--03643c2ac51928449ab0948e.md) | 141 | `result-track:03643c2ac51928449ab0948e3900eaa5e4bc29511a85049b7a7900cf9644c9b1` |
| 8 | `lemma` | [LFunction_stdAddChar_eq_expZeta_of_one_lt_re](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-stdaddchar-eq-expzeta-of-one-lt-re--8cffa4934cfb006889165119.md) | 158 | `result-track:8cffa4934cfb006889165119c407669adb755d8de2fe6a8af6d50bbc8e0cf1a0` |
| 9 | `lemma` | [LFunction_stdAddChar_eq_expZeta](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-stdaddchar-eq-expzeta--37bcb2522c756855dcf3eeb0.md) | 176 | `result-track:37bcb2522c756855dcf3eeb0e97c5a3461d7e3efcbcd3457f586691573c49beb` |
| 10 | `lemma` | [LFunction_dft](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-dft--5df1d53989fdef970b58f9dd.md) | 211 | `result-track:5df1d53989fdef970b58f9dd90f0b85f5c613b4d9660a8237d919f95af870477` |
| 11 | `theorem` | [LFunction_one_sub](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-one-sub--75e1dd1086d743625d4fb979.md) | 227 | `result-track:75e1dd1086d743625d4fb979960bfff62a2a0057af420adf58fe2094e4013699` |
| 12 | `lemma` | [LFunction_def_even](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-def-even--398f497114e11650ee0705d0.md) | 257 | `result-track:398f497114e11650ee0705d0621e0cb9918b9c66cff7ac63a0f7ce67729ac114` |
| 13 | `lemma` | [LFunction_def_odd](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-def-odd--c430c83fbf1ed10876417ccc.md) | 265 | `result-track:c430c83fbf1ed10876417ccc230dd83423fa26ab026116de1d4c74b302bb2ac0` |
| 14 | `lemma` | [LFunction_apply_zero_of_even](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-apply-zero-of-even--12e8224a75a314634709391e.md) | 274 | `result-track:12e8224a75a314634709391ecc54719cd9b18f814d0cd5359229a9fa383f7e47` |
| 15 | `lemma` | [LFunction_neg_two_mul_nat_add_one](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-neg-two-mul-nat-add-one--260ee448e382d3a9736c4172.md) | 281 | `result-track:260ee448e382d3a9736c4172a5db3f4d5de7c809fc5ba9807c0f0fac10f72e61` |
| 16 | `lemma` | [LFunction_neg_two_mul_nat_sub_one](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-neg-two-mul-nat-sub-one--61e16e9218fa1737bd604746.md) | 287 | `result-track:61e16e9218fa1737bd6047460a5687dbce82db3a8b9b3b691bcd2be5cea7b670` |
| 17 | `def` | [completedLFunction](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction--a9f97ccbb8e08b2dd18124e2.md) | 298 | `declaration-track:a9f97ccbb8e08b2dd18124e2885bb0b7f5ae1522c2c95625f7ee2542bf285cd9` |
| 18 | `lemma` | [completedLFunction_zero](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-zero--b853c611e333f6419a0b1dc1.md) | 302 | `result-track:b853c611e333f6419a0b1dc1d5475e7ba898b7ea8c7262449892487e983ec43c` |
| 19 | `lemma` | [completedLFunction_const_mul](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-const-mul--9d94f833715181c546de9d43.md) | 305 | `result-track:9d94f833715181c546de9d434ffe320c9e190916dd5b62bea4501244a492972c` |
| 20 | `lemma` | [completedLFunction_def_even](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-def-even--ba7e7e36f6937b2f359035b6.md) | 310 | `result-track:ba7e7e36f6937b2f359035b69930569bce6dcd6c87ce5150c3a743dd735e4afa` |
| 21 | `lemma` | [completedLFunction_def_odd](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-def-odd--8686bf7a638e55b157a07043.md) | 317 | `result-track:8686bf7a638e55b157a0704343f62cf25b547bd4947a5faf57bf46a98966545e` |
| 22 | `lemma` | [completedLFunction_modOne_eq](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-modone-eq--b0eeebe7fc080ce42f142aa4.md) | 328 | `result-track:b0eeebe7fc080ce42f142aa45e2d65cd064754c7158d21a53535765192ec9ddc` |
| 23 | `def` | [completedLFunction₀](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction--34d318d7ad00d65530ce0433.md) | 338 | `declaration-track:34d318d7ad00d65530ce0433b4276c613574da1ea29336abd62915f0d2dd3bec` |
| 24 | `lemma` | [differentiable_completedLFunction₀](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/differentiable-completedlfunction--20c083828dad97c756cf1922.md) | 343 | `result-track:20c083828dad97c756cf1922eb4e4d6091f37ecbea8ea7e2e4df3c49e1c9a95c` |
| 25 | `lemma` | [completedLFunction_eq](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-eq--d53faffe5136db08e872b068.md) | 349 | `result-track:d53faffe5136db08e872b068d3635eeac9c0376e24cdbd377ba4d8265f45d439` |
| 26 | `lemma` | [differentiableAt_completedLFunction](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/differentiableat-completedlfunction--79b95214107780c8c934c178.md) | 361 | `result-track:79b95214107780c8c934c1783a5ea430aa757c4634ec5b566d19d893d28c7ebc` |
| 27 | `lemma` | [differentiable_completedLFunction](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/differentiable-completedlfunction--c62583a4afb5d6377f15e61e.md) | 380 | `result-track:c62583a4afb5d6377f15e61e4e0d4ed4bcb07caa5aff3f614a4497537978f0e2` |
| 28 | `lemma` | [LFunction_eq_completed_div_gammaFactor_even](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-eq-completed-div-gammafactor-even--91d5834f94d8029f8baa0fc3.md) | 389 | `result-track:91d5834f94d8029f8baa0fc316dc5258dd73e5cdc6655fd13dff706f117c0a6f` |
| 29 | `lemma` | [LFunction_eq_completed_div_gammaFactor_odd](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/lfunction-eq-completed-div-gammafactor-odd--01df5685d1f9932e7427a2ce.md) | 403 | `result-track:01df5685d1f9932e7427a2cefdf09d4e128a9f7d2854a1321bb0481ebf0b2489` |
| 30 | `lemma` | [completedLFunction_one_sub_of_one_lt_even](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-one-sub-of-one-lt-even--14d819cdb6677cbde1b42824.md) | 414 | `result-track:14d819cdb6677cbde1b42824f232c3103f501cc835e911189b3b144dfbf1f2cf` |
| 31 | `lemma` | [completedLFunction_one_sub_of_one_lt_odd](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-one-sub-of-one-lt-odd--aa88ea08a06fc1563313977f.md) | 437 | `result-track:aa88ea08a06fc1563313977fdd1a07911c9890933252178ba71514d2d83cd107` |
| 32 | `theorem` | [completedLFunction_one_sub_even](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-one-sub-even--6891a26c7a758b1d44ceb81e.md) | 464 | `result-track:6891a26c7a758b1d44ceb81e699097c893d6f6f57d9148c66c0d6c34786304ef` |
| 33 | `theorem` | [completedLFunction_one_sub_odd](../../../../mathematics/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/declarations/completedlfunction-one-sub-odd--c4244be3dac8519fdfa25ebd.md) | 512 | `result-track:c4244be3dac8519fdfa25ebd10a3bb786f48bdd5d68f3e01c3248c6ef52afed2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
