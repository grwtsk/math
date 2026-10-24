# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Variance.Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad0659ef500b78f88913c5d1d3570ce665a1af31",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad0659ef500b78f88913c5d1d3570ce665a1af31`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Integration` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance--0687d4ae11e87e9deb5bf423.md) | 61 | `declaration-track:0687d4ae11e87e9deb5bf423116cfb87f2870121ee57bbe3a908fd7c9cb4388e` |
| 2 | `def` | [variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance--40deec8037aaee0d1f809212.md) | 66 | `declaration-track:40deec8037aaee0d1f8092127e038267a45441e38dad29536216cc96049c5380` |
| 3 | `theorem` | [evariance_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-lt-top--5ca90d7410d9ede554544ed1.md) | 89 | `result-track:5ca90d7410d9ede554544ed1b9886ce8f5b550ed834f87448e6e69a2138bb3a2` |
| 4 | `lemma` | [evariance_ne_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-ne-top--6bb83711648d7106c2f36b5b.md) | 97 | `result-track:6bb83711648d7106c2f36b5b11065f46a0f4face4e6cdee7633d2d68d54c6e96` |
| 5 | `theorem` | [evariance_eq_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-eq-top--a567e27254a4d2580b2009e5.md) | 100 | `result-track:a567e27254a4d2580b2009e58f842020bad1872119324d3de697de4e157f7608` |
| 6 | `theorem` | [evariance_lt_top_iff_memLp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-lt-top-iff-memlp--9f24bc006d2f74bde2a0b1d0.md) | 114 | `result-track:9f24bc006d2f74bde2a0b1d0075d182907ada56e8bb2437d8ce5983acbfe75c2` |
| 7 | `lemma` | [evariance_eq_top_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-eq-top-iff--fdd3eb383a2c61acc7f64a37.md) | 122 | `result-track:fdd3eb383a2c61acc7f64a372c26cbd0123549724476ae0d7519e9c1be416e3a` |
| 8 | `lemma` | [variance_of_not_memLp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-of-not-memlp--d9a0e63d173e6aad586da3a4.md) | 125 | `result-track:d9a0e63d173e6aad586da3a4368b7052799a3fcdd364b07192756e284d08835e` |
| 9 | `theorem` | [ofReal_variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/ofreal-variance--5f9404dfd1b38414a10ea594.md) | 129 | `result-track:5f9404dfd1b38414a10ea594add033bdbc273501af89f518c0cca103c9cf8284` |
| 10 | `theorem` | [evariance_eq_lintegral_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-eq-lintegral-ofreal--1f998a3071a814cecdbb2db7.md) | 146 | `result-track:1f998a3071a814cecdbb2db7abe29e1378e233e174e9a979b0b61d7a76afb7f0` |
| 11 | `lemma` | [variance_eq_integral](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-eq-integral--3647b34ad8c2b6343ea3c08f.md) | 150 | `result-track:3647b34ad8c2b6343ea3c08fe2926f7a11c1d9a029ba645a56453aafb000e2bc` |
| 12 | `lemma` | [variance_of_integral_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-of-integral-eq-zero--98b1b3ca78baf2e5da4a74b0.md) | 154 | `result-track:98b1b3ca78baf2e5da4a74b054f252b04acbd8d434c43b9a108e3b6bc5c1846d` |
| 13 | `theorem` | [evariance_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-zero--b808e4282dcc6fed0e6fb3de.md) | 165 | `result-track:b808e4282dcc6fed0e6fb3dee18185ba1e1c1cad63237b0fa48322f0e7c81da4` |
| 14 | `theorem` | [evariance_eq_zero_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-eq-zero-iff--0e203751bbd1dfa076641f2f.md) | 167 | `result-track:0e203751bbd1dfa076641f2f303497a8a70c2c0fb7eef1ae47fc497462882179` |
| 15 | `theorem` | [evariance_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-mul--388e966645050c19d85d77a5.md) | 172 | `result-track:388e966645050c19d85d77a564162d1f6e3217ad5c530f849997b8025b7b2f1f` |
| 16 | `theorem` | [variance_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-zero--5fd55d28abfde1aa1c08c5f9.md) | 180 | `result-track:5fd55d28abfde1aa1c08c5f9e5e88d54e8c7a7fc9062a0734edd2b0dca076608` |
| 17 | `theorem` | [variance_nonneg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-nonneg--22305c9fe257d25fe8d77cc3.md) | 183 | `result-track:22305c9fe257d25fe8d77cc3964748847e38f99bc61a5ddd106dc628691939cf` |
| 18 | `theorem` | [variance_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-mul--56f661cb977fbe5bb51c0afb.md) | 186 | `result-track:56f661cb977fbe5bb51c0afb0dd19d93bc656054481795bddbb0e16c08a68cff` |
| 19 | `theorem` | [variance_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-smul--6792c6251079ea9b9a2def55.md) | 191 | `result-track:6792c6251079ea9b9a2def559ef049e089d4dc4520405c04521396f626c73ac3` |
| 20 | `theorem` | [variance_smul'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-smul--7be00f27c3e7149e30989186.md) | 195 | `result-track:7be00f27c3e7149e30989186f4fe6b5fe832e854d741702aad0fedea034e149e` |
| 21 | `theorem` | [variance_def'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-def--a6599f3021ebec931b196334.md) | 201 | `result-track:a6599f3021ebec931b196334d1d973dafd134d3189c619946ae5ca0b5b7c9c2a` |
| 22 | `lemma` | [variance_add_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-add-const--10cc81609ed364354f5bef6a.md) | 214 | `result-track:10cc81609ed364354f5bef6a67b4539f6fcd0bbd3de9483d4d460555ae9dc9e3` |
| 23 | `lemma` | [variance_const_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-const-add--b00eb9792a00902c1797dc6c.md) | 227 | `result-track:b00eb9792a00902c1797dc6c04496e4ffdda4bb492e371b85b3140a9491045e6` |
| 24 | `lemma` | [variance_fun_neg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-fun-neg--0f372e191937d0d4e03d9c76.md) | 231 | `result-track:0f372e191937d0d4e03d9c76d99f80303c55e37e14c3cca60dca36edeb92f0cd` |
| 25 | `lemma` | [variance_neg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-neg--41131296e16e40063abd881d.md) | 236 | `result-track:41131296e16e40063abd881d9c5d9b1189a364050feda35b9f31980351796bd8` |
| 26 | `lemma` | [variance_sub_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-sub-const--10298bbe7795a3b15102150b.md) | 238 | `result-track:10298bbe7795a3b15102150b2bea41821a2619d1a43213d00b44f2b9f8583def` |
| 27 | `lemma` | [variance_const_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-const-sub--05aff21902c591f0ab0415cd.md) | 242 | `result-track:05aff21902c591f0ab0415cdab573c8e18ba4eb651d34530d8e0bfbac47a79e3` |
| 28 | `lemma` | [variance_dirac](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-dirac--a72f357009a0005f5d60d552.md) | 248 | `result-track:a72f357009a0005f5d60d552f5dcca0a77c0441a55d56406d53d6247ab789ec8` |
| 29 | `lemma` | [variance_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-map--c7e550252ee7d34cbb2db597.md) | 253 | `result-track:c7e550252ee7d34cbb2db597759ac73e89f0d77be6127507cb668667d3094efb` |
| 30 | `lemma` | [variance_id_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-id-map--3f94fdb931971b7c404cd7eb.md) | 263 | `result-track:3f94fdb931971b7c404cd7ebd5f361fc92be929a7833e88d3c9168107aec70e9` |
| 31 | `theorem` | [variance_le_expectation_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-le-expectation-sq--6348887a86d54edf5c76dde7.md) | 266 | `result-track:6348887a86d54edf5c76dde7c3ed3b440ca993971ee9802216de544a6275d796` |
| 32 | `theorem` | [evariance_def'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/evariance-def--3baf9d99d301a946ce31ca65.md) | 287 | `result-track:3baf9d99d301a946ce31ca6563811bcc0d05943deab6d1ccf30386f1db0922dd` |
| 33 | `theorem` | [meas_ge_le_evariance_div_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/meas-ge-le-evariance-div-sq--b599587dbc281fb10bed2ed6.md) | 308 | `result-track:b599587dbc281fb10bed2ed61619c1c0e9754bb16cd015d113f5c3942f56367e` |
| 34 | `theorem` | [meas_ge_le_variance_div_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/meas-ge-le-variance-div-sq--aa99bd1b4b786317c1e5c30f.md) | 327 | `result-track:aa99bd1b4b786317c1e5c30f8d1636308c889d5e8ea26039fdc34facf95e4657` |
| 35 | `theorem` | [IndepFun.variance_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/indepfun-variance-add--9e55db9c04fe7935b2f89d90.md) | 337 | `result-track:9e55db9c04fe7935b2f89d907b619df9fe10be045283d1421ec4cc7509ebd88a` |
| 36 | `theorem` | [IndepFun.variance_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/indepfun-variance-sum--49ef4c0d03ece46be5db2795.md) | 360 | `result-track:49ef4c0d03ece46be5db279588415d2b09d50e0262f35f370d237eebf93005d8` |
| 37 | `lemma` | [variance_le_sub_mul_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-le-sub-mul-sub--6a48c7240a3586823175ae31.md) | 424 | `result-track:6a48c7240a3586823175ae31526c07575caece56a402760bf734d9186ab1f0b7` |
| 38 | `lemma` | [variance_le_sq_of_bounded](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/declarations/variance-le-sq-of-bounded--dd64b102b5630711bcb08e75.md) | 457 | `result-track:dd64b102b5630711bcb08e7565607ce3d11bdaf65ae5333af8cd423520dd1b08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
