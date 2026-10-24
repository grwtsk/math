# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AnatomicBoxes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40126fd7a4b454d8ed53c36324dde81ea8d5fc94",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40126fd7a4b454d8ed53c36324dde81ea8d5fc94`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/index.md) — import line 21; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PaperDyadic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/paperdyadic--aa521c49bb318e87a6ccc9de.md) | 37 | `declaration-track:aa521c49bb318e87a6ccc9de8df2f4f4905618a97f1546ac9091670ccc818aa8` |
| 2 | `def` | [ClosedDyadic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/closeddyadic--c3ad7c097d9072c0b7731f49.md) | 41 | `declaration-track:c3ad7c097d9072c0b7731f49e55b02d9593acbd43de137a2080242ec663c720d` |
| 3 | `def` | [dyadicTuples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/dyadictuples--acdf0a5bc287650bafb0de5e.md) | 45 | `declaration-track:acdf0a5bc287650bafb0de5ec49cbcae530da48b52b0407273f57d3fe3e13c7d` |
| 4 | `theorem` | [mem_dyadicTuples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/mem-dyadictuples--cb191b5a834b8db6e423b418.md) | 49 | `result-track:cb191b5a834b8db6e423b418b0751778535b5080562e86468154581d499ea5a4` |
| 5 | `def` | [monomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/monomial--b588cf46f13cd8cdd0e9d936.md) | 54 | `declaration-track:b588cf46f13cd8cdd0e9d93666bc8b42b74bbf80c0c27450e823adab3e6e5493` |
| 6 | `def` | [supportProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/supportproduct--dc87437f1e9e9f43852f9388.md) | 58 | `declaration-track:dc87437f1e9e9f43852f9388f4a664a8d0e7f58fc5990178912c9273e4480e23` |
| 7 | `structure` | [Parameters](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/parameters--b81eba37832c90ad4c2d8390.md) | 64 | `declaration-track:b81eba37832c90ad4c2d83903aea4577f70f470e1750b5dd70806789bef3dcff` |
| 8 | `abbrev` | [Point](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/point--f95e119fc5e655d588ea4cf7.md) | 72 | `declaration-track:f95e119fc5e655d588ea4cf748d16f6f2e5543688df5331d3f5049c549ddccbc` |
| 9 | `def` | [totalA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/totala--3c8a3a05e04647c8e2db723f.md) | 80 | `declaration-track:3c8a3a05e04647c8e2db723f2a4207917d394a5b04c3556f59642dab1604b873` |
| 10 | `def` | [totalB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/totalb--7704adefb1ca0cc02590cb70.md) | 83 | `declaration-track:7704adefb1ca0cc02590cb70785641add0abec2cac51c84d2df013451bc75f90` |
| 11 | `def` | [totalC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/totalc--bd91384ba45a1f6b5ea36c04.md) | 86 | `declaration-track:bd91384ba45a1f6b5ea36c045fa58494bd0d91ba6d55148423903e451fbfae92` |
| 12 | `def` | [carrierA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/carriera--de56ce637e86096052505ebe.md) | 90 | `declaration-track:de56ce637e86096052505ebe78889aba31a063663d0d82a4c7acc0c96e829c85` |
| 13 | `def` | [carrierB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/carrierb--5be7b2cab29ee55fe07bed47.md) | 94 | `declaration-track:5be7b2cab29ee55fe07bed4760f8e97d9050c0d6768420f5b61e2788d6ee58c6` |
| 14 | `def` | [carrierC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/carrierc--48fb5bf5c1901f7eea44f1bd.md) | 98 | `declaration-track:48fb5bf5c1901f7eea44f1bd9e49c3d1d19ca6401c0417b84ec1f007433e9dd7` |
| 15 | `def` | [SupportPrimitive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/supportprimitive--f93db486914b5a0f16ab8ef3.md) | 105 | `declaration-track:f93db486914b5a0f16ab8ef3b2c0ff72a61b0e8fe4a1fa1aa71bef9a7eadf285` |
| 16 | `def` | [boxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/boxfinset--cf4738e7904c8ed88f783196.md) | 112 | `declaration-track:cf4738e7904c8ed88f783196ffd58c7c0427e723e6e5655028ee3940e79c4481` |
| 17 | `theorem` | [mem_boxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/mem-boxfinset--2d196362d815f2dc94c8ff18.md) | 123 | `result-track:2d196362d815f2dc94c8ff182a1c8d0e0f132035302f6c56b3efe42a48e44021` |
| 18 | `def` | [boxCard](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/boxcard--73722568ff6e204531b54731.md) | 136 | `declaration-track:73722568ff6e204531b54731cc55108097cf9c1a22a4830036bdf6c4e26b6c08` |
| 19 | `theorem` | [coprime_monomial_totals_of_support](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/coprime-monomial-totals-of-support--7b1d50c35dd169f07d8a9efe.md) | 139 | `result-track:7b1d50c35dd169f07d8a9efe49f9a323da856348e1169c2297e857ec1d371f85` |
| 20 | `def` | [boxToTriple](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/boxtotriple--e430bf8a01b14beecb61f130.md) | 151 | `declaration-track:e430bf8a01b14beecb61f130b7c5f142c3aa7387eac63b7bedaf9564aef8f685` |
| 21 | `def` | [coveredTriples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/coveredtriples--81804799e63718e976fcbee2.md) | 165 | `declaration-track:81804799e63718e976fcbee27b6c2019292a034e3cd541537267baf536937769` |
| 22 | `theorem` | [card_coveredTriples_le_sum_boxCard](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/card-coveredtriples-le-sum-boxcard--2ff44990d51dd19c881ba6e1.md) | 169 | `result-track:2ff44990d51dd19c881ba6e1ce7eb3a8d6ffbf4d937b8bb3f33ecb7820e31e49` |
| 23 | `theorem` | [sum_le_card_mul_sup](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/sum-le-card-mul-sup--35122ae07da5c049a798199c.md) | 182 | `result-track:35122ae07da5c049a798199c431041f4007546c49fa702390d18a76b77e3f115` |
| 24 | `theorem` | [card_coveredTriples_le_card_mul_sup](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/declarations/card-coveredtriples-le-card-mul-sup--fd872072bbdb804bbf89e84c.md) | 194 | `result-track:fd872072bbdb804bbf89e84c6ffed1a590010c0e76f1a471d75e9324172e6d16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
