# Verification target: GRWTSK.NumberTheory.ZMod.Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf`.

Source path: `GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.ZMod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Connected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LSeriesSummable_of_one_lt_re](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lseriessummable-of-one-lt-re--9fa109a619d3580c43195b0d.md) | 67 | `result-track:9fa109a619d3580c43195b0daf2e968183f49828d5e65e373a35001fd4e6bb3e` |
| 2 | `def` | [LFunction](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction--6e5c933dbdb6fa86db3c703f.md) | 80 | `declaration-track:6e5c933dbdb6fa86db3c703fcf791be4871f68f5998d66c4a8b92ba892510252` |
| 3 | `lemma` | [LFunction_modOne_eq](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-modone-eq--d9667cd3dd8b08009a510627.md) | 84 | `result-track:d9667cd3dd8b08009a5106271b1c1df4e66bf4db4a64bcf8b2a334f9e060602c` |
| 4 | `lemma` | [LFunction_eq_LSeries](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-eq-lseries--91b5a0e44f1bd3632a7e6338.md) | 90 | `result-track:91b5a0e44f1bd3632a7e6338243a9d820f35ee42d89b0e55fc38954c219c3806` |
| 5 | `lemma` | [differentiableAt_LFunction](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/differentiableat-lfunction--9e1fac9e4dfc62f3e48cb66b.md) | 119 | `result-track:9e1fac9e4dfc62f3e48cb66b19f2d639e6fe41db119bfa09edf07e75fc4ad71e` |
| 6 | `lemma` | [differentiable_LFunction_of_sum_zero](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/differentiable-lfunction-of-sum-zero--89a8114ef2f7ba7f86cca710.md) | 128 | `result-track:89a8114ef2f7ba7f86cca710f5d8926c5a49bdce716c5e95e69962549f63ce5e` |
| 7 | `lemma` | [LFunction_residue_one](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-residue-one--0f25661747d9f060a1996f19.md) | 133 | `result-track:0f25661747d9f060a1996f193767c3a74407eb61ecd36f91a16d1c56c089ff12` |
| 8 | `lemma` | [LFunction_stdAddChar_eq_expZeta_of_one_lt_re](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-stdaddchar-eq-expzeta-of-one-lt-re--b8d2be84ccf33b8e2eec3ca9.md) | 150 | `result-track:b8d2be84ccf33b8e2eec3ca9476acbe3d81876d6d33b24a3eaccfb36035866c1` |
| 9 | `lemma` | [LFunction_stdAddChar_eq_expZeta](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-stdaddchar-eq-expzeta--7ea7e2fcd15b26697c4885ca.md) | 168 | `result-track:7ea7e2fcd15b26697c4885ca12282d19098d79530d34e98f0f64ab8c77fbcedf` |
| 10 | `lemma` | [LFunction_dft](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-dft--b024d364123637d51834c945.md) | 203 | `result-track:b024d364123637d51834c945d8eed7f7f0c017abaf3ecf0a01c3f823346c6894` |
| 11 | `theorem` | [LFunction_one_sub](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-one-sub--7d3d9f961884bc50210a5375.md) | 219 | `result-track:7d3d9f961884bc50210a53755541f577b98f1d38899040f7d4ed418aa43cd8ce` |
| 12 | `lemma` | [LFunction_def_even](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-def-even--10cbbf7dec4b035a549cbbdc.md) | 249 | `result-track:10cbbf7dec4b035a549cbbdc8ad303faa6ecb7bbb625aa45847368877209f49e` |
| 13 | `lemma` | [LFunction_def_odd](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-def-odd--4827da46c4a6b005e687ef78.md) | 257 | `result-track:4827da46c4a6b005e687ef78b13d67bbc8b0968c9beb53d5bc2321c51e7a7919` |
| 14 | `lemma` | [LFunction_apply_zero_of_even](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-apply-zero-of-even--b205a16571525428a9cd88b9.md) | 266 | `result-track:b205a16571525428a9cd88b9fa7228973ba00ff397cab1f855086b53598c0ff8` |
| 15 | `lemma` | [LFunction_neg_two_mul_nat_add_one](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-neg-two-mul-nat-add-one--f06f28bf9559510c3b42d907.md) | 273 | `result-track:f06f28bf9559510c3b42d90774eaaae3c4a4a7ddf697aa78415d36f6898955a8` |
| 16 | `lemma` | [LFunction_neg_two_mul_nat_sub_one](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-neg-two-mul-nat-sub-one--6decb6c4779eb186180b3c9b.md) | 279 | `result-track:6decb6c4779eb186180b3c9b33919a21e4b2ac9cd4355f9292dfb9c1deb3d17c` |
| 17 | `def` | [completedLFunction](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction--d9faffb71d8535de89387594.md) | 290 | `declaration-track:d9faffb71d8535de8938759460ce37b58d4eb9d6e9fc5b060e56479e7d2122bf` |
| 18 | `lemma` | [completedLFunction_zero](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-zero--4463f51daaa935c942e9bdeb.md) | 294 | `result-track:4463f51daaa935c942e9bdeb887a5698093f78243c3549d220d0746915066043` |
| 19 | `lemma` | [completedLFunction_const_mul](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-const-mul--1af7ee9c81ce18c4f4b73158.md) | 297 | `result-track:1af7ee9c81ce18c4f4b73158e02b798db99ea20ebd29f052cdc720c88e1a21b5` |
| 20 | `lemma` | [completedLFunction_def_even](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-def-even--1c66858ce712287e2db1fd3a.md) | 302 | `result-track:1c66858ce712287e2db1fd3a7cb75776928ef99d6e530345f56c63a9ecf4fd25` |
| 21 | `lemma` | [completedLFunction_def_odd](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-def-odd--205682a97d35d06ff17c6ab8.md) | 309 | `result-track:205682a97d35d06ff17c6ab8b159b31d160bab3f151228ee01ca5ad68515c889` |
| 22 | `lemma` | [completedLFunction_modOne_eq](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-modone-eq--448a52788c70fec8c64daa8f.md) | 320 | `result-track:448a52788c70fec8c64daa8fb14129e2dac045b3ebe7cb38d68aeb299ce007b7` |
| 23 | `def` | [completedLFunction₀](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction--74150bd2d63c2c6fcbc84488.md) | 330 | `declaration-track:74150bd2d63c2c6fcbc844884170dd56c879fa2bdc872d3d2ecaea3025ef2648` |
| 24 | `lemma` | [differentiable_completedLFunction₀](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/differentiable-completedlfunction--af4ff71767f51bae8e840b22.md) | 335 | `result-track:af4ff71767f51bae8e840b2262eb6988b194f208380f5b98b2a9ead37870d0c3` |
| 25 | `lemma` | [completedLFunction_eq](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-eq--dd7aed71ccde82f9b73d27b9.md) | 341 | `result-track:dd7aed71ccde82f9b73d27b96304710d96b738000fbaf5502d1b715596e19d3c` |
| 26 | `lemma` | [differentiableAt_completedLFunction](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/differentiableat-completedlfunction--bc3fb6e25dccd225722cda2d.md) | 353 | `result-track:bc3fb6e25dccd225722cda2d9a4e58072446b4127d4a857690abcb1f6c27938d` |
| 27 | `lemma` | [differentiable_completedLFunction](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/differentiable-completedlfunction--4a973a06b9184dba81b100f6.md) | 372 | `result-track:4a973a06b9184dba81b100f63e2855ee21866295c26c942cf4748d2a074cc384` |
| 28 | `lemma` | [LFunction_eq_completed_div_gammaFactor_even](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-eq-completed-div-gammafactor-even--7b9e6b35addb32d6048924f3.md) | 381 | `result-track:7b9e6b35addb32d6048924f39a8114516603bc3681bffef69666453cac003fdb` |
| 29 | `lemma` | [LFunction_eq_completed_div_gammaFactor_odd](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/lfunction-eq-completed-div-gammafactor-odd--bf6a1803c02db029e599c686.md) | 395 | `result-track:bf6a1803c02db029e599c686286590c3a51ab43c6f2232a753cd54bb127da02b` |
| 30 | `lemma` | [completedLFunction_one_sub_of_one_lt_even](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-one-sub-of-one-lt-even--dada8742387790deac8bcadd.md) | 406 | `result-track:dada8742387790deac8bcadd338b31f0c916bb6a3caccc637f2f9423b3b03142` |
| 31 | `lemma` | [completedLFunction_one_sub_of_one_lt_odd](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-one-sub-of-one-lt-odd--9a2fd2a94a09c0a78ed0f57c.md) | 429 | `result-track:9a2fd2a94a09c0a78ed0f57c9c197d14d5b9b6a57b961255311888889db8c86e` |
| 32 | `theorem` | [completedLFunction_one_sub_even](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-one-sub-even--5bb049e6ed39bf9c00f5d343.md) | 456 | `result-track:5bb049e6ed39bf9c00f5d343ed82276a6a62ba10e0cbbfb81771f8ace701d2e5` |
| 33 | `theorem` | [completedLFunction_one_sub_odd](../../../../mathematics/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/declarations/completedlfunction-one-sub-odd--8f386661ae81fad46ba182ba.md) | 504 | `result-track:8f386661ae81fad46ba182ba73771831130c0122d5d531ee11b77fadb64f453d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
