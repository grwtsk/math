# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1b2e0fcb59c5f9d744ef2cde2b138faf6d815fb",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1b2e0fcb59c5f9d744ef2cde2b138faf6d815fb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CardinalInter` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/cocardinal--ec71894f9754d345965682e1.md) | 39 | `declaration-track:ec71894f9754d345965682e12f27fd3a9ef4bbeed4aff1351c418cada53042e6` |
| 2 | `theorem` | [mem_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/mem-cocardinal--31015f6e05755443f8b43e51.md) | 46 | `result-track:31015f6e05755443f8b43e514a6c99bfeba19d548318f37b754b7e179e7319eb` |
| 3 | `lemma` | [cocardinal_aleph0_eq_cofinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/cocardinal-aleph0-eq-cofinite--eda7e201924ae81b786cfad9.md) | 49 | `result-track:eda7e201924ae81b786cfad963f65f68fc1abb9ac5c4ba404128bb636bca0663` |
| 4 | `instance` | [instCardinalInterFilter_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/instcardinalinterfilter-cocardinal--d3862498d959b2a4e3d8bf86.md) | 53 | `declaration-track:d3862498d959b2a4e3d8bf862dca7325d4d9cff5db8f476b68d06c5776b27ea6` |
| 5 | `theorem` | [eventually_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/eventually-cocardinal--2bc5e6b30f4023ba5da2bc28.md) | 62 | `result-track:2bc5e6b30f4023ba5da2bc281c12995ee7b707c16cf9091c9af1fb9308900bc7` |
| 6 | `theorem` | [hasBasis_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/hasbasis-cocardinal--2331db51fa5578961fb78575.md) | 65 | `result-track:2331db51fa5578961fb785758a704b7301a0ff7bf69be887d89a08d6301c624f` |
| 7 | `theorem` | [frequently_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/frequently-cocardinal--4a86c33bc5cb83c5bf358a32.md) | 74 | `result-track:4a86c33bc5cb83c5bf358a3272e25e9c4ea54b15ad46490246ed0e265aca0e3f` |
| 8 | `lemma` | [frequently_cocardinal_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/frequently-cocardinal-mem--359ab84189b33ce6a94068a8.md) | 78 | `result-track:359ab84189b33ce6a94068a8e863e9512d86da2f2196093d7e9ad99e543534ba` |
| 9 | `lemma` | [cocardinal_inf_principal_neBot_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/cocardinal-inf-principal-nebot-iff--61265256fc2cc9ba5ccb21ca.md) | 82 | `result-track:61265256fc2cc9ba5ccb21ca2264a2e9a119534e8eebf03a8cda1dd400817642` |
| 10 | `theorem` | [compl_mem_cocardinal_of_card_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/compl-mem-cocardinal-of-card-lt--89346958e03ee23883f785df.md) | 86 | `result-track:89346958e03ee23883f785dfabd3ed1c50175bd364a58e8f9d17f67dd8b64711` |
| 11 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.Set.Finite.compl_mem_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-cocardinal-variant21--a6b386e198e2bfa58f35eb15.md) | 90 | `result-track:a6b386e198e2bfa58f35eb155d656ace4c3fe664ae9a35578bea0c7fa4e9db42` |
| 12 | `theorem` | [eventually_cocardinal_notMem_of_card_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/eventually-cocardinal-notmem-of-card-lt--a36e3be76bdc7dfd74152f3b.md) | 94 | `result-track:a36e3be76bdc7dfd74152f3ba877eca36bd25216f492f3218f2b6c5f34250aa7` |
| 13 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.Finset.eventually_cocardinal_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-cocardinal-variant21--0b4ba5a2b14395c9592e8225.md) | 101 | `result-track:0b4ba5a2b14395c9592e82255a59ec7206a721cb6632a384667ebfb4588b5fc8` |
| 14 | `theorem` | [eventually_cocardinal_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/eventually-cocardinal-ne--fac4f89ef88a5ea4476b73bd.md) | 108 | `result-track:fac4f89ef88a5ea4476b73bd798c2f1f903cf92a5457e3637860758152c78187` |
| 15 | `abbrev` | [cocountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/cocountable--2c86a5bec68748e1318a8487.md) | 112 | `declaration-track:2c86a5bec68748e1318a848795022f863fd6b832e24cffc13e17fae48787301d` |
| 16 | `theorem` | [mem_cocountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/declarations/mem-cocountable--ac20c5ba0b5d99d82fd348ad.md) | 114 | `result-track:ac20c5ba0b5d99d82fd348add2bf5b245178ae8531ac9077b066d25ec0eb299d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
