# Verification target: GRWTSK.Interfaces.OptionalAdapterGate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed83e35a76da95da1b4aa00b34e9b6c8210218f6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/OptionalAdapterGate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed83e35a76da95da1b4aa00b34e9b6c8210218f6`.

Source path: `GRWTSK/Interfaces/OptionalAdapterGate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/OptionalAdapterGate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Profile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/profile--c918bfc539cb48d11138679f.md) | 8 | `declaration-track:c918bfc539cb48d11138679f0acc26e65bac0c5b583bbf215dc027e3c6691fcb` |
| 2 | `inductive` | [Disposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/disposition--0e39524fa261850ae7ba056a.md) | 23 | `declaration-track:0e39524fa261850ae7ba056a542f306a245c1877caf21571f35d1302bbf30cdc` |
| 3 | `abbrev` | [Ledger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/ledger--25e99da0d13af81ed9625050.md) | 30 | `declaration-track:25e99da0d13af81ed96250502bd2cffc700d4e4de1ae9e38ec2903ca9ea35ec3` |
| 4 | `structure` | [Change](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/change--4fc5b90f177d97687404fc8c.md) | 33 | `declaration-track:4fc5b90f177d97687404fc8c681287712e05f9897929e8225cf86a8bbe674842` |
| 5 | `def` | [ValidFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/validfor--827eed9580c482069ada7f1d.md) | 49 | `declaration-track:827eed9580c482069ada7f1d7fd307986e2b4e7cea0061f0c6f2cd41baa168f6` |
| 6 | `def` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/apply--be8a1911b79fe5c557b67de6.md) | 56 | `declaration-track:be8a1911b79fe5c557b67de61bbd90fc4582fed0686c4da3c07db953dd12604e` |
| 7 | `theorem` | [apply_at_key](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/apply-at-key--4ef6411738335fa916c3fbad.md) | 60 | `result-track:4ef6411738335fa916c3fbad6380b966dcf8a7b606a7f51f301b9c43de97f5bc` |
| 8 | `theorem` | [apply_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/apply-of-ne--da4a2f0662b1f85e27aca7af.md) | 65 | `result-track:da4a2f0662b1f85e27aca7afbc9f89b8c31908facfe9753066ab0ea85727f4f2` |
| 9 | `theorem` | [discharge_bound_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/discharge-bound-zero--8c64cf522fb06b467e91b3d7.md) | 72 | `result-track:8c64cf522fb06b467e91b3d778abde12cf1cd222369a92c06495ad2988e32c46` |
| 10 | `theorem` | [sharpen_exposes_old](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/sharpen-exposes-old--4cd24b48e817d6e22d3bf18d.md) | 80 | `result-track:4cd24b48e817d6e22d3bf18df6977f8491741400d2b28bb315ab193c6733a978` |
| 11 | `theorem` | [add_requires_absent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/add-requires-absent--f42aaa7e3a5209d10fe7e210.md) | 88 | `result-track:f42aaa7e3a5209d10fe7e210e9a1e91ca5659170fab868b8f31b6acdbd02b85b` |
| 12 | `structure` | [AcceptedAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/acceptedadapter--dda9a9d587033deb353b3504.md) | 97 | `declaration-track:dda9a9d587033deb353b3504a63a3a158fb25bdc427e53f6267841539bf505fb` |
| 13 | `def` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/apply--83f6d1ca0aa61005943a8432.md) | 116 | `declaration-track:83f6d1ca0aa61005943a8432b36cc8488aea38ad55f7f649719e9629799d7245` |
| 14 | `theorem` | [apply_at_key](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/apply-at-key--6df819b4488e078779904754.md) | 120 | `result-track:6df819b4488e078779904754cc1f6514399af6662c724e6060370e0ecda1c023` |
| 15 | `theorem` | [apply_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/apply-of-ne--975ab27f18df8716719e0336.md) | 125 | `result-track:975ab27f18df8716719e033645a446db60949d7efb079c5ec08df968da66cb09` |
| 16 | `def` | [applySelected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/applyselected--a2dbe44b8f456a1577abc863.md) | 133 | `declaration-track:a2dbe44b8f456a1577abc8639c1f4810f9a0c8d528e42313e350a0b89e8d4752` |
| 17 | `theorem` | [applySelected_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/applyselected-none--2b7e9469705474cdea52b8a3.md) | 140 | `result-track:2b7e9469705474cdea52b8a34acf871f993044ee011ecbcb241f2683a777efda` |
| 18 | `theorem` | [applySelected_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/applyselected-some--463c1bc1d8156c011de19cbe.md) | 145 | `result-track:463c1bc1d8156c011de19cbee200e17da36f09a1fb0fd6cbd051791c19bad7c2` |
| 19 | `theorem` | [absent_route_preserves_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/absent-route-preserves-none--79711edd293333d3f73bdda4.md) | 151 | `result-track:79711edd293333d3f73bdda4bd9677750f9938343d66316839d13bd7b88d534b` |
| 20 | `theorem` | [accepted_has_evidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/accepted-has-evidence--ed2869fa31dbdf9b8fa29b3c.md) | 158 | `result-track:ed2869fa31dbdf9b8fa29b3cce795dc162fe50e2e7539eb0c86da826828dc760` |
| 21 | `inductive` | [Key](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/key--70d539743bf145b7bfca722a.md) | 167 | `declaration-track:70d539743bf145b7bfca722a57558b2e20279cf1ae4525b590ffde065c188fb8` |
| 22 | `def` | [emptyLedger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/emptyledger--5fc9cc4ab35acc8d67818cb7.md) | 173 | `declaration-track:5fc9cc4ab35acc8d67818cb727493f24821663c2a78ec55a7ddfc82c38edc2dc` |
| 23 | `def` | [addTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/addtransport--6c62905c301ac272e2ad1b9f.md) | 176 | `declaration-track:6c62905c301ac272e2ad1b9fff06066fd9a148c98fda1a9aa628d64499296ea8` |
| 24 | `theorem` | [addTransport_result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/addtransport-result--fd103a82466f8d11c9c08ece.md) | 189 | `result-track:fd103a82466f8d11c9c08ece950e27cf042c55cf374b7928abfc1a2aaec9a08d` |
| 25 | `theorem` | [noSelection_result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/declarations/noselection-result--d08de76572453cc5858f94bb.md) | 197 | `result-track:d08de76572453cc5858f94bb8d021929728f51286d15f309a7303ace12a88642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
