# Verification target: GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49cca1f22a48fb43604ea01c60055567057518e5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/HermitianGramRealification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49cca1f22a48fb43604ea01c60055567057518e5`.

Source path: `GRWTSK/Analysis/ErrorBounds/HermitianGramRealification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/HermitianGramRealification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.GrowingGramResidual`](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Complex.BigOperators` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realVector](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realvector--5215dd08e82e7d9c944b96a3.md) | 44 | `declaration-track:5215dd08e82e7d9c944b96a38d54ad0d2ed1bdd4b97b916f6912ecbc6382a228` |
| 2 | `def` | [imaginaryPartner](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/imaginarypartner--9cd4176bfa93260450db5db2.md) | 48 | `declaration-track:9cd4176bfa93260450db5db2dca4ee9bf16921651f7872db4a748fdbf4773d0b` |
| 3 | `def` | [realGain](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realgain--5e7318d76fcd2bb5f0711aaa.md) | 52 | `declaration-track:5e7318d76fcd2bb5f0711aaa937ff36aae4e52524d43be4352615052e901860d` |
| 4 | `def` | [realSource](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realsource--73ec4db891a7d2e3af80ffa3.md) | 59 | `declaration-track:73ec4db891a7d2e3af80ffa32104495500a650e755cc1e51a96fefed4d5eadb7` |
| 5 | `def` | [complexGram](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/complexgram--6c64e41b903a771cd1c9ba30.md) | 63 | `declaration-track:6c64e41b903a771cd1c9ba30e604d189cc3d092430f6d9477d9906bb67606c43` |
| 6 | `def` | [complexReadout](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/complexreadout--fdf7d7b9624cabbfb5f8bda5.md) | 67 | `declaration-track:fdf7d7b9624cabbfb5f8bda5010d4d9ae3294e41ff80720111e8767e9bce4cc3` |
| 7 | `def` | [pairedFeatures](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/pairedfeatures--afb4f87bbfd1aab14242d93a.md) | 71 | `declaration-track:afb4f87bbfd1aab14242d93a6a999e24eb938465432449c5bff0fdd83c8e37e4` |
| 8 | `def` | [duplicateWeight](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/duplicateweight--a3c6dbac36f1316d972d5384.md) | 75 | `declaration-track:a3c6dbac36f1316d972d5384ba7cf04a7d4b958f576e34f6d3bdcc6023005663` |
| 9 | `def` | [componentMass](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/componentmass--a688676f743e58929a5455f9.md) | 78 | `declaration-track:a688676f743e58929a5455f900ab38ee540059a068d60fc2cab418643c4f8288` |
| 10 | `def` | [complexTransport](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/complextransport--f4ee191a13c24c9d63ac2654.md) | 81 | `declaration-track:f4ee191a13c24c9d63ac2654b8186db7db1d3fe65e5a20995ad05b3ab2127396` |
| 11 | `def` | [Hermitian](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/hermitian--d19a2cb0c235c7961c77d5c9.md) | 85 | `declaration-track:d19a2cb0c235c7961c77d5c9c1d8e3427ba2aca28f131221d0ce4ec7102cc331` |
| 12 | `theorem` | [sum_four_blocks](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/sum-four-blocks--5a74bc26b4622fe4c08ee48d.md) | 88 | `result-track:5a74bc26b4622fe4c08ee48d5d6599e098001c89fd59a109f1b3f02b764f01a9` |
| 13 | `theorem` | [real_readout](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/real-readout--4be10c60eaf8cd30b7e32a43.md) | 96 | `result-track:4be10c60eaf8cd30b7e32a43a8405d4cff467f9229e79e028090bdc41e49cdba` |
| 14 | `theorem` | [hermitian_readout_conjugate](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/hermitian-readout-conjugate--21b9128be8cdc73f18f39783.md) | 107 | `result-track:21b9128be8cdc73f18f397836ae8ffab050f82667f4974391dbed31a0efe05c8` |
| 15 | `theorem` | [hermitian_readout_im_zero](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/hermitian-readout-im-zero--30cc25aa99aa7c08f1269675.md) | 121 | `result-track:30cc25aa99aa7c08f1269675d191f7a334ed42bcab54bfe23aac255406d5a36f` |
| 16 | `theorem` | [realSource_gram](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realsource-gram--137c7dc356024d3237a6557d.md) | 127 | `result-track:137c7dc356024d3237a6557d0e31958bdba95a7de99a438ae9e67ad3cc69bb95` |
| 17 | `theorem` | [complex_gram_readout_nonnegative](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/complex-gram-readout-nonnegative--5067a064ab22cacbc7807410.md) | 140 | `result-track:5067a064ab22cacbc7807410df3bf95594b9475f71b35d437016a92536e79b47` |
| 18 | `theorem` | [complexGram_hermitian](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/complexgram-hermitian--d2e780dc5f97224a7bd2f8d2.md) | 146 | `result-track:d2e780dc5f97224a7bd2f8d24dd9071c2d3b85e0f4e55e90d9d1293437821d9e` |
| 19 | `theorem` | [realSource_add](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realsource-add--594cb07173a4d6e2b9508173.md) | 152 | `result-track:594cb07173a4d6e2b9508173a72b7238f0f7160304207ebe11a964c0bd81fe4f` |
| 20 | `theorem` | [realSource_sub](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realsource-sub--19363f8ab51dc65e9ec548e7.md) | 160 | `result-track:19363f8ab51dc65e9ec548e74342b64d62f0ff0f401d5ed301828049c34f2de1` |
| 21 | `theorem` | [realSource_transport](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realsource-transport--e1737c6729c59a59898b364e.md) | 169 | `result-track:e1737c6729c59a59898b364e45135fa5bf5f4915dfee7046f8cd5012535777bd` |
| 22 | `theorem` | [realGain_column_mass](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realgain-column-mass--1288ef9a75e60dfd05f4a185.md) | 187 | `result-track:1288ef9a75e60dfd05f4a185630a4818b04d377c077da94acfbea229bce9f5d7` |
| 23 | `theorem` | [realGain_column_bound](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realgain-column-bound--ed80d7049d339bb34ec7623b.md) | 197 | `result-track:ed80d7049d339bb34ec7623bffa403042457a0332316d7ed5e2fc6bbd265e9c6` |
| 24 | `theorem` | [realVector_bound](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realvector-bound--de4953f52e1b4e60aca28da8.md) | 208 | `result-track:de4953f52e1b4e60aca28da87e3bfb275ef10bb600bd448b702bc411f5b63cfc` |
| 25 | `theorem` | [realSource_mass](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/realsource-mass--3b8a55e3c5a4d5a6f15f4161.md) | 216 | `result-track:3b8a55e3c5a4d5a6f15f4161220707deb2eefad82fb204d520259bc61b72b504` |
| 26 | `theorem` | [no_fixed_negative_of_complex_growing_gram](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/no-fixed-negative-of-complex-growing-gram--6bb6c4aa00fc99b31bbeb40b.md) | 234 | `result-track:6bb6c4aa00fc99b31bbeb40b26402097c567de2eb6c6babe6c2846dd5dab628c` |
| 27 | `def` | [imaginaryBlock](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/imaginaryblock--2e399933a3995ad4f226a2c3.md) | 292 | `declaration-track:2e399933a3995ad4f226a2c3a576b7f77ff2b73d99e0ff944d9b14d943879975` |
| 28 | `def` | [imaginaryTest](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/imaginarytest--4b138be119eb971e4e3d953f.md) | 296 | `declaration-track:4b138be119eb971e4e3d953fcb43685f3d7249df1e4ac74a0c6668b41d75ddd8` |
| 29 | `theorem` | [imaginaryBlock_hermitian](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/imaginaryblock-hermitian--2c60f4d1be1ae149d24bdfc0.md) | 298 | `result-track:2c60f4d1be1ae149d24bdfc095ef422d68ee337ff82898df18c63fe900b65873` |
| 30 | `theorem` | [imaginary_mixed_terms_fixture](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/imaginary-mixed-terms-fixture--5452c808abf53f2873a8dd8a.md) | 303 | `result-track:5452c808abf53f2873a8dd8a609fde6af3dba12f98fdab8970a76a8f75d220ab` |
| 31 | `theorem` | [imaginary_block_gram_error_floor](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/imaginary-block-gram-error-floor--515476008b5e5a4d9d3a05f2.md) | 310 | `result-track:515476008b5e5a4d9d3a05f2c96e92d88dc65714add8c6a4c37763460a338d14` |
| 32 | `theorem` | [two_real_rows_required_fixture](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/two-real-rows-required-fixture--8935ca36e45a1506af36220c.md) | 321 | `result-track:8935ca36e45a1506af36220c17e0ee394537dfc5e8d21fcbc4b79b973b600e73` |
| 33 | `theorem` | [modulus_does_not_preserve_column_rate](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/declarations/modulus-does-not-preserve-column-rate--4985203da13542f0d21d8fc2.md) | 330 | `result-track:4985203da13542f0d21d8fc20a9b4be538ac56d016b664457b04dd5f96c342d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
