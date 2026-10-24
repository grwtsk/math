# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sym.Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb43de6ddbc6eadc79c296212a041c3923673ca",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb43de6ddbc6eadc79c296212a041c3923673ca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Vector` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isDiag_mk'_of_mem_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/isdiag-mk-of-mem-diag--c2b936477b57e3989e72d5ea.md) | 45 | `result-track:c2b936477b57e3989e72d5ea0328db2e2d63b0209094c7f2a992b49654b86121` |
| 2 | `theorem` | [not_isDiag_mk'_of_mem_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/not-isdiag-mk-of-mem-offdiag--1917f5d0cf3248edc58d54f8.md) | 49 | `result-track:1917f5d0cf3248edc58d54f862b7461560a0114deec9bb7a35618dd03e9c1e9e` |
| 3 | `def` | [sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym2--07b0b24fd1f77e921014e90a.md) | 59 | `declaration-track:07b0b24fd1f77e921014e90a3b712e439b6d2eb70aa5faf4cc58a470f7d99baf` |
| 4 | `theorem` | [mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/mem-sym2-iff--94a3ac80edf4270111dad3dc.md) | 63 | `result-track:94a3ac80edf4270111dad3dc6dbcaf83d5f9ef6728d5c98d771cab1d33b094c1` |
| 5 | `theorem` | [mk'_mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/mk-mem-sym2-iff--7f083056c88e04ec057d87e9.md) | 72 | `result-track:7f083056c88e04ec057d87e99752a8b8a5d8023ccee9d2123d0e41c84817bc21` |
| 6 | `theorem` | [sym2_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym2-empty--18728b863b1d90acf04df17f.md) | 76 | `result-track:18728b863b1d90acf04df17fcfbd949c07f843903a8c36c4a9ad017e701829f8` |
| 7 | `theorem` | [sym2_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym2-eq-empty--3de0dd7a55d828fe2c0e10e6.md) | 80 | `result-track:3de0dd7a55d828fe2c0e10e694d791c196f44622f779b6d471ed64e8e15bc093` |
| 8 | `theorem` | [sym2_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym2-nonempty--c9d0106d2fa4b19421b2ccc0.md) | 85 | `result-track:c9d0106d2fa4b19421b2ccc0ab49a9f140c973fda2f3204bca2ae08f5463a5b3` |
| 9 | `theorem` | [sym2_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym2-univ--a726330291b739c7c3aff006.md) | 96 | `result-track:a726330291b739c7c3aff006a928f539cf6548db96df540fb735c0433e44448f` |
| 10 | `theorem` | [sym2_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym2-singleton--8eae7c6d9165d1c590bcfb73.md) | 102 | `result-track:8eae7c6d9165d1c590bcfb73e87e56b9f376135e991a3bc77a3db667f050db34` |
| 11 | `theorem` | [diag_mem_sym2_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/diag-mem-sym2-mem-iff--4871e315df368bf68543bcc5.md) | 109 | `result-track:4871e315df368bf68543bcc5b5026a1593cf7b08ac37f46a7d48da92fb251f32` |
| 12 | `theorem` | [diag_mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/diag-mem-sym2-iff--cf1741309a24a00b936e2e6b.md) | 113 | `result-track:cf1741309a24a00b936e2e6b5c4dd9cfd1f3b179d7dae3eecf3e18b1ac20b939` |
| 13 | `theorem` | [sym2_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym2-mono--cbb168b7ca81af691cd74119.md) | 117 | `result-track:cbb168b7ca81af691cd741199c9d363d4499422c70932d44a794f4d92126c2fe` |
| 14 | `theorem` | [image_diag_union_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/image-diag-union-image-offdiag--906972acc656f05e1ac65f33.md) | 121 | `result-track:906972acc656f05e1ac65f332b69b17365bafdee32d69e67fb24416bcb52f530` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/instance--4f0cdccccd07a10aae5f1441.md) | 134 | `declaration-track:4f0cdccccd07a10aae5f14417212cdcbea88aba9c1e6795cf9d00a40cf72efe2` |
| 16 | `def` | [sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym--d65e12ce838a4448500b831f.md) | 138 | `declaration-track:d65e12ce838a4448500b831f3e84c968387de6f6065e6f90c81488d43d1cb540` |
| 17 | `theorem` | [sym_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-zero--2a9c7169a5a3b064265cbbfe.md) | 144 | `result-track:2a9c7169a5a3b064265cbbfe52ec0e61c1bdfd74eb2838e251c91a3db5a8d4cb` |
| 18 | `theorem` | [sym_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-succ--960550e39dccbe96674908a7.md) | 148 | `result-track:960550e39dccbe96674908a711ad45b589cb4dcdf82936b8bcb45a542c171bd8` |
| 19 | `theorem` | [mem_sym_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/mem-sym-iff--b3d90aa0d634e80f2d5a4221.md) | 152 | `result-track:b3d90aa0d634e80f2d5a42210738b233c9030824b8502a38b1e27d7e44652199` |
| 20 | `theorem` | [sym_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-empty--d3dd137f55641fba3cd2c5ff.md) | 172 | `result-track:d3dd137f55641fba3cd2c5ff9e424d4225be7f03c1e20b4d17768176d181a617` |
| 21 | `theorem` | [replicate_mem_sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/replicate-mem-sym--899c45d0b9b4cdf73e9de932.md) | 175 | `result-track:899c45d0b9b4cdf73e9de9320e1429065da9634c83462913786fa4b00cdd20dd` |
| 22 | `theorem` | [Nonempty.sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/nonempty-sym--34aacc54c818a9e6c65a3442.md) | 179 | `result-track:34aacc54c818a9e6c65a3442a29e71f6587900c46af08421c694a2d14e645edb` |
| 23 | `theorem` | [sym_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-singleton--e4b3d59a80672230733c2de7.md) | 185 | `result-track:e4b3d59a80672230733c2de7aca1c9b3b81bbc7ba2dd2bfb1e2846a4f0392630` |
| 24 | `theorem` | [eq_empty_of_sym_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/eq-empty-of-sym-eq-empty--6dcc87a2fb4b7a1ac1265d67.md) | 191 | `result-track:6dcc87a2fb4b7a1ac1265d67ec77d45006220048b9b1f8783b8095eed4174e7f` |
| 25 | `theorem` | [sym_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-eq-empty--d863381cd6ff1a1e6b2dac71.md) | 197 | `result-track:d863381cd6ff1a1e6b2dac71d37acd9a3c22bcce186e6acc1b5e0e311128ec96` |
| 26 | `theorem` | [sym_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-nonempty--daf5c265a9707fc4df8348a7.md) | 206 | `result-track:daf5c265a9707fc4df8348a7fd02287d9fc2c9d42d778b0578c5f2c7c31e2bbe` |
| 27 | `theorem` | [sym_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-univ--8b67f6f15df410ec53a86fd5.md) | 213 | `result-track:8b67f6f15df410ec53a86fd5b6d9621a239d6793b1e5aa96508b58d903e2b1b0` |
| 28 | `theorem` | [sym_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-mono--b2088770715ed38ff9d67137.md) | 218 | `result-track:b2088770715ed38ff9d671375858f8cc690ee3b04bee54c91a662fa25c5bc2ad` |
| 29 | `theorem` | [sym_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-inter--e3bc46d7c07dd90c2b3d320b.md) | 223 | `result-track:e3bc46d7c07dd90c2b3d320b61ffb8b747bf45a9aefa4b13926140b96b34eeda` |
| 30 | `theorem` | [sym_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-union--4a484c775326efb2494c57f6.md) | 229 | `result-track:4a484c775326efb2494c57f6a7c33450157a9146bec8aed73b7c097e863eaa35` |
| 31 | `theorem` | [sym_fill_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-fill-mem--4e9c71b6951c25ae0d7f669f.md) | 233 | `result-track:4e9c71b6951c25ae0d7f669fafbfc6de93fe587b19b4caa894f2fa096b1be29a` |
| 32 | `theorem` | [sym_filterNe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/sym-filterne-mem--5886238a1f2fe4ce8324cfe4.md) | 239 | `result-track:5886238a1f2fe4ce8324cfe4106d1876b2ad63d8e83ae3baf529874ef47c593c` |
| 33 | `def` | [symInsertEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/declarations/syminsertequiv--00b72d9d2cc831c1e16ea331.md) | 249 | `declaration-track:00b72d9d2cc831c1e16ea33149a2ef01c0b381f8cbd4388a6b7ea5b3f46ef886` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
