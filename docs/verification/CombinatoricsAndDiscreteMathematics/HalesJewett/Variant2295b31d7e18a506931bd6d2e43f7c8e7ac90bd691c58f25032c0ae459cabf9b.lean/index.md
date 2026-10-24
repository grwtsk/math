# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HalesJewett.Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9d6da96a2a19c801bb472d532b5a9e30d387bac",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9d6da96a2a19c801bb472d532b5a9e30d387bac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Line](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/line--64c3620a57d48ae43ed4b410.md) | 89 | `declaration-track:64c3620a57d48ae43ed4b410660e5c43f31b466ab44f83ef0e61d1783bb8b42c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/instance--8646311f94196cec96e0aab6.md) | 101 | `declaration-track:8646311f94196cec96e0aab6d1cd55b7948fdb5c7b964de944439718a15bc998` |
| 3 | `def` | [IsMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/ismono--3901bdc428cd406700b94725.md) | 105 | `declaration-track:3901bdc428cd406700b94725b2b09931126618ca3d9d2819b7ac2cae66bb3db6` |
| 4 | `def` | [diagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/diagonal--c6668d332aea166fdf3e14fd.md) | 110 | `declaration-track:c6668d332aea166fdf3e14fd76fd5ce04ab25956a2951ee6ed25da77770b93e9` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/instance--640352558a2e8278e45d6297.md) | 115 | `declaration-track:640352558a2e8278e45d629709d9750cfe57f008b4925ecfebae62bceff0464f` |
| 6 | `structure` | [AlmostMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/almostmono--2abd6b591d53da1e02cdffb2.md) | 119 | `declaration-track:2abd6b591d53da1e02cdffb2496900a416025c431bd2922b99c55eaa5503cb08` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/instance--f9f2aff2b34371671fc8ce18.md) | 130 | `declaration-track:f9f2aff2b34371671fc8ce184c58981b3a734325ebbf3cbc30b0713cd1cab48a` |
| 8 | `structure` | [ColorFocused](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/colorfocused--012857e4f5a3eb164e72a2fa.md) | 141 | `declaration-track:012857e4f5a3eb164e72a2fa85f6289e15864d0494fe50553a37482abba65714` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/instance--f2e7e82f9ec155b1491c954f.md) | 152 | `declaration-track:f2e7e82f9ec155b1491c954fff049dafa245b989171942befe23231494d876b3` |
| 10 | `def` | [map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/map--103e025951e61673c83df154.md) | 158 | `declaration-track:103e025951e61673c83df15475daeabf92436ee6f9dd076802b4c34308e3a7dd` |
| 11 | `def` | [vertical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/vertical--4c600d24387826b6356f3086.md) | 164 | `declaration-track:4c600d24387826b6356f3086b73794233cb106a775b778ed533df1a10cdb22c3` |
| 12 | `def` | [horizontal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/horizontal--881cc8029287b31438661d3e.md) | 170 | `declaration-track:881cc8029287b31438661d3ea29eb102e5ff391d2e56df57f80e7257fa0ad6fe` |
| 13 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/prod--058ab66f77a05f499709ca70.md) | 176 | `declaration-track:058ab66f77a05f499709ca70d17275c3d5a5ed8bba83347fe9a97004b282fff1` |
| 14 | `theorem` | [apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/apply--e1a0ead92514e4e8dd8f7e7e.md) | 181 | `result-track:e1a0ead92514e4e8dd8f7e7ec0830d9ea3c10471b12035fe0e453d06dbd3b174` |
| 15 | `theorem` | [apply_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/apply-none--71afd8fc2e77c4d621864355.md) | 185 | `result-track:71afd8fc2e77c4d621864355cf70cd69cd2397cdf1a9b41aa21cd0423dc13a93` |
| 16 | `theorem` | [apply_of_ne_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/apply-of-ne-none--4f6bfac29a837a29ededba1e.md) | 189 | `result-track:4f6bfac29a837a29ededba1e778aef8ee578e610dd8071f6239df7e5b7ac76f7` |
| 17 | `theorem` | [map_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/map-apply--0d3b102ce67bcd8a8fd7cc7e.md) | 194 | `result-track:0d3b102ce67bcd8a8fd7cc7e8121dcf7cddbf61b5abd136fc06564ffc15d681f` |
| 18 | `theorem` | [vertical_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/vertical-apply--d32b6b4ba82124293e049742.md) | 200 | `result-track:d32b6b4ba82124293e0497421afaab77d90d21bc59d10123e684b2be327d957d` |
| 19 | `theorem` | [horizontal_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/horizontal-apply--286927c5656b1182761d4dc9.md) | 207 | `result-track:286927c5656b1182761d4dc9e0b5026e70130ea774d339eae495585a3ebbe8fd` |
| 20 | `theorem` | [prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/prod-apply--265ccd0eb01ec61080e7ea93.md) | 214 | `result-track:265ccd0eb01ec61080e7ea93da42452f5178a3654eb40abfd2b146188a69ba49` |
| 21 | `theorem` | [diagonal_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/diagonal-apply--5de24e34e84d37d3e8481cfa.md) | 221 | `result-track:5de24e34e84d37d3e8481cfae1328a0a0eb066f88fcb11b592f50014ad4db265` |
| 22 | `theorem` | [exists_mono_in_high_dimension'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/exists-mono-in-high-dimension--68ca65479fb5029751118ee2.md) | 227 | `result-track:68ca65479fb5029751118ee26a070889f35aafb6944ff03d1c48450097d2174d` |
| 23 | `theorem` | [exists_mono_in_high_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/exists-mono-in-high-dimension--d8a4d4fcd63d03592ddf2a0a.md) | 337 | `result-track:d8a4d4fcd63d03592ddf2a0a63b27c72d35c1ce9f452be64a17b9fdb928f59db` |
| 24 | `theorem` | [exists_mono_homothetic_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/declarations/exists-mono-homothetic-copy--516617551600d364738651fb.md) | 349 | `result-track:516617551600d364738651fb0c1b7a67e0583d1de1eff89a5a01dfbe3c8f9f40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
