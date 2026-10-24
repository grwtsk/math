# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3344b8d6e8b63ede95e732e4fdca3791107163aa",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3344b8d6e8b63ede95e732e4fdca3791107163aa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BoundedOrder.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [top_sup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/top-sup-eq--ed1d603c2e8cf9a61c26a4d0.md) | 45 | `result-track:ed1d603c2e8cf9a61c26a4d0942b554f2834147d3b78a9659afebde3c14cdfda` |
| 2 | `theorem` | [sup_top_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/sup-top-eq--e3bdef807d40cd3d9e3c3a62.md) | 48 | `result-track:e3bdef807d40cd3d9e3c3a626d476682ca9f397e283e37f7cd0bf5dd90b05090` |
| 3 | `theorem` | [bot_sup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/bot-sup-eq--24847800d8feb2ac414eb298.md) | 57 | `result-track:24847800d8feb2ac414eb298a8ceabe9c0cc44d458416d16553f0434864bba26` |
| 4 | `theorem` | [sup_bot_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/sup-bot-eq--056fd1b257b1f8f2e06fee6c.md) | 60 | `result-track:056fd1b257b1f8f2e06fee6cdeec92a839488e8389cabef7f69de8159de7f53e` |
| 5 | `theorem` | [sup_eq_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/sup-eq-bot-iff--041a3ecb6ae970cb9925de11.md) | 64 | `result-track:041a3ecb6ae970cb9925de11b7da727d18f771f24a722f18c8d5b90bb6acb3d5` |
| 6 | `lemma` | [top_inf_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/top-inf-eq--b096dd36bfd4e5ee161d66ec.md) | 72 | `result-track:b096dd36bfd4e5ee161d66ec009042cde54daaf41472c055ddd2ca2b2d8f4032` |
| 7 | `lemma` | [inf_top_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/inf-top-eq--af3c882bc0e75f945c673f2f.md) | 74 | `result-track:af3c882bc0e75f945c673f2fa665520a8568385082b7ab72e300136a2f6f468a` |
| 8 | `theorem` | [inf_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/inf-eq-top-iff--fe28e4457745cd7cf9f96fa6.md) | 77 | `result-track:fe28e4457745cd7cf9f96fa684be0a4963f2e7f215d2f0f63d545b20144ae423` |
| 9 | `lemma` | [bot_inf_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/bot-inf-eq--8ff94eec7762762229da9fa0.md) | 86 | `result-track:8ff94eec7762762229da9fa000aa69a907524636242df06b2d9de22ed4d3f118` |
| 10 | `lemma` | [inf_bot_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/inf-bot-eq--bd089cf0beacee140d679a0c.md) | 88 | `result-track:bd089cf0beacee140d679a0cad3d156c3652e934d2eb447c0dc4c14e07ec038e` |
| 11 | `theorem` | [exists_ge_and_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/exists-ge-and-iff-exists--7ff2b584f21ab030af53dd7a.md) | 102 | `result-track:7ff2b584f21ab030af53dd7a77b39ba98ee948e96c43d001e0550aec7a1ddee9` |
| 12 | `lemma` | [exists_and_iff_of_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/exists-and-iff-of-monotone--0f3c7f1bd65cbe22c5032017.md) | 106 | `result-track:0f3c7f1bd65cbe22c503201720202332b48828b582713f301b54d87592ef20f8` |
| 13 | `theorem` | [exists_le_and_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/exists-le-and-iff-exists--014472bd096ced20a860f4af.md) | 117 | `result-track:014472bd096ced20a860f4aff69d0e6bd4a5423971b385e9cb448d681fb8102a` |
| 14 | `lemma` | [exists_and_iff_of_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/exists-and-iff-of-antitone--e83d82b36cee56455ec79b57.md) | 121 | `result-track:e83d82b36cee56455ec79b57c30f028676f7ccb30edd698c02c01eaec643fe71` |
| 15 | `theorem` | [min_bot_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/min-bot-left--7cfadf42add26e1eb46c1032.md) | 135 | `result-track:7cfadf42add26e1eb46c1032875e184c877a89308974e46337068134c4394333` |
| 16 | `theorem` | [max_top_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/max-top-left--1b0e02deb560a9eda663ae03.md) | 137 | `result-track:1b0e02deb560a9eda663ae03ff4f34d2a951d26e33c794a89868d7ae257c8ebb` |
| 17 | `theorem` | [min_top_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/min-top-left--e52671d8d92d13521aceba7f.md) | 139 | `result-track:e52671d8d92d13521aceba7f684453a5010094a4bef6087ec92a706b1501123c` |
| 18 | `theorem` | [max_bot_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/max-bot-left--b712cf3f6903efb8d5108980.md) | 141 | `result-track:b712cf3f6903efb8d51089803a7c4fb3fd3747f7993497f68ed1f79f6eec6904` |
| 19 | `theorem` | [min_top_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/min-top-right--b551d8b9f34106607df61e19.md) | 143 | `result-track:b551d8b9f34106607df61e19efd0d15e92419c44d4012039382cc62a3a2df444` |
| 20 | `theorem` | [max_bot_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/max-bot-right--5651519b449931093fed194d.md) | 145 | `result-track:5651519b449931093fed194df2dd31c7b8c72d20a02187a26d139d35abbd338d` |
| 21 | `theorem` | [min_bot_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/min-bot-right--04bf7c95f00fe191e1bebf73.md) | 147 | `result-track:04bf7c95f00fe191e1bebf731102605aa785599496e1ff3d049765b3c1533b97` |
| 22 | `theorem` | [max_top_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/max-top-right--1fde99a84d1447866256d0f4.md) | 149 | `result-track:1fde99a84d1447866256d0f431867d1e82dcda37a3af2d07664abc29f749c55e` |
| 23 | `theorem` | [max_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/max-eq-bot--6300f42261a3fc343a8e4e66.md) | 151 | `result-track:6300f42261a3fc343a8e4e6681437234d0abb8430fb982b4caff1b2300df1ae8` |
| 24 | `theorem` | [min_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/min-eq-top--c3f8c6b44710150b2657671c.md) | 154 | `result-track:c3f8c6b44710150b2657671cf984d8e0cf098b0a8123cf8bb76309862a7124fa` |
| 25 | `theorem` | [min_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/min-eq-bot--69e02a34d71b913b5952d0cf.md) | 158 | `result-track:69e02a34d71b913b5952d0cfc2a91d05ad2e800768d3aab3b3ac0054eed8dcef` |
| 26 | `theorem` | [max_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/max-eq-top--d2d0ccb0ebd51223203561c3.md) | 162 | `result-track:d2d0ccb0ebd51223203561c31162b187dfad54b09399d5c509b090700223b580` |
| 27 | `theorem` | [WellFoundedGT.induction_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/wellfoundedgt-induction-top--2d1a27fe7c5fe20cbc427393.md) | 172 | `result-track:2d1a27fe7c5fe20cbc42739322848b94b5aea25d47f31b6bb80dffbad856dced` |
| 28 | `theorem` | [WellFoundedLT.induction_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9157b00ceb8fe2b1612e3e2c689b431fab76fae950f30e25fef73ebdd378d442.lean/declarations/wellfoundedlt-induction-bot--8fdc65d5ec6e5b9db9d47dc0.md) | 185 | `result-track:8fdc65d5ec6e5b9db9d47dc0293f6c26eb04dc2dc081fd6ed310ad1988dc0d60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
