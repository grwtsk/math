# Verification target: GRWTSK.Algebra.LinearAlgebra.Even.Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0559c532a718d0a0c93c940c0564cbf908459008",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0559c532a718d0a0c93c940c0564cbf908459008`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [even](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/even--05819b45be616d706cbd91a4.md) | 58 | `declaration-track:05819b45be616d706cbd91a4f6f6ec4c2172e500aa843a98fd70d10fc5953aad` |
| 2 | `theorem` | [even_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/even-tosubmodule--43f73b4e5bbeb083b9c4af18.md) | 63 | `result-track:43f73b4e5bbeb083b9c4af18ee76fb73b0d3a7228586a42f858e0f052be98a96` |
| 3 | `structure` | [EvenHom](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/evenhom--170fe81125bf220b75fbfb64.md) | 70 | `declaration-track:170fe81125bf220b75fbfb64d0555aed7520ea9bb4d296fc79c2f8e8bf84c2ed` |
| 4 | `def` | [EvenHom.compr₂](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/evenhom-compr--c0e6bb252c149f117390a205.md) | 79 | `declaration-track:c0e6bb252c149f117390a205d5900ac032c683df09a5efb250b3fa87a4ec8bf3` |
| 5 | `def` | [even.ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/even--a13ba5b79470c753cd3f7edf.md) | 88 | `declaration-track:a13ba5b79470c753cd3f7edf6bb1a42c35507ce460c1a59f7443a3a79f3601ca` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/instance--98fd18a10ac34996edc5072a.md) | 103 | `declaration-track:98fd18a10ac34996edc5072a2a7e64e802d7c2281d1e0a12ff41ac40b193696a` |
| 7 | `theorem` | [even.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/even-alghom-ext--93334e3add94959e43690858.md) | 112 | `result-track:93334e3add94959e43690858b47a722cd702d50adf00b3c9ebbaf38276b5ddbd` |
| 8 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/s--f73e7f8dbc40d5a442f91a45.md) | 132 | `declaration-track:f73e7f8dbc40d5a442f91a454d20ac31d33b5a569746adad59fac4a7504ad21c` |
| 9 | `def` | [fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/ffold--23b2e5af71eee9dd3669ebf9.md) | 139 | `declaration-track:23b2e5af71eee9dd3669ebf901bd28fb3858161d580ca3eec1ed5d8ee1e9858b` |
| 10 | `theorem` | [fst_fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/fst-ffold-ffold--2dcfe6f5a1bc771ac2c66905.md) | 167 | `result-track:2dcfe6f5a1bc771ac2c6690567497fccd28a0632398c64a9f5481216ea9dc154` |
| 11 | `theorem` | [snd_fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/snd-ffold-ffold--fcecf43508e44b92d759f9eb.md) | 172 | `result-track:fcecf43508e44b92d759f9eb2a96de46e0356727aa3942f925e582d73a420577` |
| 12 | `theorem` | [fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/ffold-ffold--0154f09ee503f28d7239171d.md) | 176 | `result-track:0154f09ee503f28d7239171d4fc6597b34bc4f05afc429d7562e342782049b2c` |
| 13 | `def` | [aux](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/aux--64b18e7c19d3af637fbd4b11.md) | 197 | `declaration-track:64b18e7c19d3af637fbd4b114612649f6bfb6f16e1ae65a4b80a8ef66b11973e` |
| 14 | `theorem` | [aux_one](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/aux-one--3cad1bab7e7898fc31d8c50a.md) | 202 | `result-track:3cad1bab7e7898fc31d8c50a6c933a1a31773e281f69740bbe5a7c483ae73d4e` |
| 15 | `theorem` | [aux_ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/aux--0b086bee0a8c7e9b0d3b5a1f.md) | 206 | `result-track:0b086bee0a8c7e9b0d3b5a1fbe4c32dd3462c4c05609756a485ea4d2ddaa11b7` |
| 16 | `theorem` | [aux_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/aux-algebramap--cd2a94c1ec6a74f5fbca8599.md) | 213 | `result-track:cd2a94c1ec6a74f5fbca859952109eb744b7a8bb275b4f8597f73c27e9311598` |
| 17 | `theorem` | [aux_mul](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/aux-mul--7173bdba4a1acf1b68f6d646.md) | 217 | `result-track:7173bdba4a1acf1b68f6d646dbd354a6227dc82686f64d8f0f573453818a50f5` |
| 18 | `def` | [even.lift](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/even-lift--d16e56ad1d93992b232da320.md) | 244 | `declaration-track:d16e56ad1d93992b232da320b09b0bb6abf057d7db7770483fcc700c555129f6` |
| 19 | `theorem` | [even.lift_ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant8ed14eb628f7611e2c42bbd0eee33a24bf1079b0d5a4c6cf443537f973265fed.lean/declarations/even-lift--5788b907ded938896026c6c1.md) | 251 | `result-track:5788b907ded938896026c6c149712f7567bbf75f0bc301ee0cf64b46df00d0cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
