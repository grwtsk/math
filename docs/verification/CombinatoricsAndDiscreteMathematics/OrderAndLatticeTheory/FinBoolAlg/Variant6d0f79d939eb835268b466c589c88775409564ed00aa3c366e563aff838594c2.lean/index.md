# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBoolAlg.Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfe53c888dab04fa7f6585a079817e5378b1b1bd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfe53c888dab04fa7f6585a079817e5378b1b1bd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BoolAlg` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinBddDistLat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinBoolAlg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/finboolalg--78e0787c2a6a14cef399ebac.md) | 44 | `declaration-track:78e0787c2a6a14cef399ebacf36eaae8441b0de0e6deaaecbc83fdcae07de447` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/instance--dcf2ae96817da136f25b1fa2.md) | 51 | `declaration-track:dcf2ae96817da136f25b1fa234b716d8e5dadf8fc100727313b6555ec6b5b943` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/of--a7778d8fd46580f4b27a2348.md) | 55 | `declaration-track:a7778d8fd46580f4b27a2348c80937fc89a1c32491af5d67eaa5b2baa423f7d5` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/coe-of--2cf0ab80c80f5c442ba7c59e.md) | 58 | `result-track:2cf0ab80c80f5c442ba7c59e828e5197626acea57250648c1ed0f33759983c6c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/instance--7cccbd9afe0e98dd0d3457c5.md) | 61 | `declaration-track:7cccbd9afe0e98dd0d3457c5fd8db01d69047096bfe75cb9193c822461ee7628` |
| 6 | `instance` | [largeCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/largecategory--08561c0415275a42476dfbe9.md) | 64 | `declaration-track:08561c0415275a42476dfbe9a89202f42cb69d9dc9df0b53fd9ca9c0e6583e37` |
| 7 | `instance` | [concreteCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/concretecategory--53742ec352922666ce78fed2.md) | 67 | `declaration-track:53742ec352922666ce78fed26268434e61cb9d0f0a534d038c239d41b3100a37` |
| 8 | `instance` | [hasForgetToBoolAlg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/hasforgettoboolalg--0db60c0b943523f1d6ee2022.md) | 70 | `declaration-track:0db60c0b943523f1d6ee2022287514e438ab261504c172b5fda0a5b8b355730d` |
| 9 | `instance` | [hasForgetToFinBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/hasforgettofinbdddistlat--94227f566f350484fafdbf4b.md) | 73 | `declaration-track:94227f566f350484fafdbf4b661f4947da0dbf4c9aca913545060eb7c1f2c3da` |
| 10 | `instance` | [forgetToBoolAlg_full](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/forgettoboolalg-full--9eb1dbe6c4740d6d91570c16.md) | 77 | `declaration-track:9eb1dbe6c4740d6d91570c1657a76680949502b26ede255a1001869586dd3aa6` |
| 11 | `instance` | [forgetToBoolAlgFaithful](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/forgettoboolalgfaithful--7c3b9de1d14fafaa88a63b08.md) | 80 | `declaration-track:7c3b9de1d14fafaa88a63b08d04a0c574a24c44b405f18e6c5da64a5ae6fab95` |
| 12 | `instance` | [hasForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/hasforgettofinpartord--9eb0eda1dc415fe417765f75.md) | 84 | `declaration-track:9eb0eda1dc415fe417765f7517c5955865c506ba0edf8e690efb0687447a544e` |
| 13 | `instance` | [forgetToFinPartOrdFaithful](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/forgettofinpartordfaithful--c454f2737bf2496c59fe1c76.md) | 88 | `declaration-track:c454f2737bf2496c59fe1c766abcbd3feeffd1cf53e9d980757803d62fd4e27d` |
| 14 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/iso-mk--0eae6f076299de21dfd01a3f.md) | 96 | `declaration-track:0eae6f076299de21dfd01a3f9ac6374d217d479417eb01415456709b3f2c0932` |
| 15 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/dual--59aa946bd3a51eb505cafeba.md) | 104 | `declaration-track:59aa946bd3a51eb505cafebabc0bed53c9770df4c883a7b0595a1670d1e7fc47` |
| 16 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/dualequiv--bb2dac6df6cb32ddf8e7a5b5.md) | 110 | `declaration-track:bb2dac6df6cb32ddf8e7a5b59af967758deaa5c72d00418af26ee479aa509960` |
| 17 | `theorem` | [finBoolAlg_dual_comp_forget_to_finBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/finboolalg-dual-comp-forget-to-finbdddistlat--f7026519ab74ed92b324e64d.md) | 118 | `result-track:f7026519ab74ed92b324e64d4994eda29422cd09017572963f877fa8303b0161` |
| 18 | `def` | [fintypeToFinBoolAlgOp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlg/Variant6d0f79d939eb835268b466c589c88775409564ed00aa3c366e563aff838594c2.lean/declarations/fintypetofinboolalgop--ee1e9d1c770c1b2e52bdb11e.md) | 125 | `declaration-track:ee1e9d1c770c1b2e52bdb11e6972041e41dfe5a68284db236b8f59b961cb60b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
