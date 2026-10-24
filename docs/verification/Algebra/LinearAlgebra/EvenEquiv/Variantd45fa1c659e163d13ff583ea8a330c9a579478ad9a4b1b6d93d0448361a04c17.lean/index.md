# Verification target: GRWTSK.Algebra.LinearAlgebra.EvenEquiv.Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3dcf5c419f2659fb575f3dd8c51c96762578c9a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3dcf5c419f2659fb575f3dd8c51c96762578c9a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Even` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Q'](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/q--f412d373cb22c2bb474a4852.md) | 54 | `declaration-track:f412d373cb22c2bb474a48528e42226ea8090e8fa0c301823264b538e98fa609` |
| 2 | `theorem` | [Q'_apply](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/q-apply--61f2e09d9d0c1da09b7abac5.md) | 57 | `result-track:61f2e09d9d0c1da09b7abac58137628598b838c2a3557c39f3c4dffefe1b0ed9` |
| 3 | `def` | [e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/e0--069333f92f503eeb2d53cafd.md) | 61 | `declaration-track:069333f92f503eeb2d53cafd8e4565b2804bec5155f18138ee0664b614d70317` |
| 4 | `def` | [v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/v--1095146b4b7e5d5b3f60a648.md) | 65 | `declaration-track:1095146b4b7e5d5b3f60a64891da5e6de3c65e2d7dec37fa48bc3f0299500ca3` |
| 5 | `theorem` | [ι_eq_v_add_smul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/eq-v-add-smul-e0--6fcbf5d4aafb355f6db05d93.md) | 68 | `result-track:6fcbf5d4aafb355f6db05d93d3b6b967af90fba6ecc9b7b480fb023d1c03856c` |
| 6 | `theorem` | [e0_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/e0-mul-e0--72a15372719f7879aa897c49.md) | 72 | `result-track:72a15372719f7879aa897c49b05a1de8ff4c17b801e522edea0e5e94f2d68310` |
| 7 | `theorem` | [v_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/v-sq-scalar--0e6c925a9c036f29e100efeb.md) | 75 | `result-track:0e6c925a9c036f29e100efeb02b88561e5f427c83faedf03d71434145c030187` |
| 8 | `theorem` | [neg_e0_mul_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/neg-e0-mul-v--b1fa9942ca3cbb0bd08750af.md) | 78 | `result-track:b1fa9942ca3cbb0bd08750af6a4f1c39d1861fa0fa3eb38eff6dac71b0f34533` |
| 9 | `theorem` | [neg_v_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/neg-v-mul-e0--af14cb127e350b09ab6a2408.md) | 84 | `result-track:af14cb127e350b09ab6a24087ba733cb3a23cdcad36ca0ed0fc2dc1410ae429a` |
| 10 | `theorem` | [e0_mul_v_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/e0-mul-v-mul-e0--db68539fd58c4793ae842dff.md) | 89 | `result-track:db68539fd58c4793ae842dff49aa4d1d4d7ec41ba0d2124f0aef132e86af07be` |
| 11 | `theorem` | [reverse_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/reverse-v--bd03aabbe2fcd04ec8f16203.md) | 93 | `result-track:bd03aabbe2fcd04ec8f16203689b0de04a7de525c4f4cc14756d7f4eed57296e` |
| 12 | `theorem` | [involute_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/involute-v--2927453f9ff72e752e169637.md) | 97 | `result-track:2927453f9ff72e752e16963786e1392d12a9b6cfe4c88c81783a3bf8ab0d6e17` |
| 13 | `theorem` | [reverse_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/reverse-e0--bde2931eef0d690a8e2961af.md) | 101 | `result-track:bde2931eef0d690a8e2961afc684786916d3586324df79ee1bddb10040be7c64` |
| 14 | `theorem` | [involute_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/involute-e0--3715750eff60f072f95a0558.md) | 105 | `result-track:3715750eff60f072f95a0558f89326ba21edf4b3fdc054d4084d0cb328a8cd64` |
| 15 | `def` | [toEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/toeven--c6e7ca32aee8ce4e4e1609ef.md) | 113 | `declaration-track:c6e7ca32aee8ce4e4e1609ef31b2e2aab592321f342459fb9967e7f0df58335d` |
| 16 | `theorem` | [toEven_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/toeven--e276d8d55c225c859c087f4b.md) | 125 | `result-track:e276d8d55c225c859c087f4bfae3574f57a25d96c0a66493bf505c539f0cb765` |
| 17 | `def` | [ofEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/ofeven--d5b5c6d4d0d2ef2f75e34a23.md) | 132 | `declaration-track:d5b5c6d4d0d2ef2f75e34a23c9d294af079297d0a40e752aa7abe5b7e75673cb` |
| 18 | `theorem` | [ofEven_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/ofeven--543e01d89fa4474b6fd629aa.md) | 160 | `result-track:543e01d89fa4474b6fd629aade1e88fb9b9f421f027b895c23e2862ebcea2edc` |
| 19 | `theorem` | [toEven_comp_ofEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/toeven-comp-ofeven--a78d050f006d8624c4bfb09b.md) | 165 | `result-track:a78d050f006d8624c4bfb09b3ba626d2284e94084b2a92644bde3e607bb4550e` |
| 20 | `theorem` | [ofEven_comp_toEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/ofeven-comp-toeven--652fda1b76833af4b63d9503.md) | 197 | `result-track:652fda1b76833af4b63d95035b46ee082a91e68e5c2f94435f9077210f027651` |
| 21 | `def` | [equivEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/equiveven--9146534284e17115c5c2ad63.md) | 211 | `declaration-track:9146534284e17115c5c2ad6387291dd368c57e79a3d4984d2ac8b7299e9e68aa` |
| 22 | `theorem` | [coe_toEven_reverse_involute](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/coe-toeven-reverse-involute--ec127fc151a4c975d8667f80.md) | 216 | `result-track:ec127fc151a4c975d8667f802c3a85f36f5fc72d053d204e7876e620b2e1eced` |
| 23 | `def` | [evenToNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/eventoneg--4d1479827f5db993072a52f1.md) | 230 | `declaration-track:4d1479827f5db993072a52f134a3f8c4e3f85fa9332734d5b8021ad199c8a55d` |
| 24 | `theorem` | [evenToNeg_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/eventoneg--6213007a902e0648a2887905.md) | 241 | `result-track:6213007a902e0648a2887905418b13024ae9c14b300d5dd26507bee1cc73423a` |
| 25 | `theorem` | [evenToNeg_comp_evenToNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/eventoneg-comp-eventoneg--c78f72be7c19ff75c605605b.md) | 245 | `result-track:c78f72be7c19ff75c605605bb020a56fbb2c0c9ec4874a0f96e621d2cf43dcb3` |
| 26 | `def` | [evenEquivEvenNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantd45fa1c659e163d13ff583ea8a330c9a579478ad9a4b1b6d93d0448361a04c17.lean/declarations/evenequivevenneg--a71cd571c1aef72a9dd5e883.md) | 254 | `declaration-track:a71cd571c1aef72a9dd5e883ca9caa624139bca69cc78a25a4b4159290041f70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
