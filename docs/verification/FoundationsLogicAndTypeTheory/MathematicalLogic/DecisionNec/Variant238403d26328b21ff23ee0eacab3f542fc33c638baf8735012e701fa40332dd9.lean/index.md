# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DecisionNec.Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad8e61492ae9b19455fdab1bc3d0b7851e213364",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad8e61492ae9b19455fdab1bc3d0b7851e213364`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Archive.MiuLanguage.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Count` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CountEquivOrEquivTwoMulMod3](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/countequivorequivtwomulmod3--f2cbd62f684366110199f11b.md) | 52 | `declaration-track:f2cbd62f684366110199f11bc31a7a0ce93ec822a326cc0f27d6bcfe95ee8e49` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/example--f269d8ecc2804cd3bc2006c0.md) | 58 | `declaration-track:f269d8ecc2804cd3bc2006c0cef3fbec35e3b3e7a7d9e3c0317156773c9efbd5` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/example--36f5a7a61b971ac11d65cc08.md) | 61 | `declaration-track:36f5a7a61b971ac11d65cc0889b74e25b4c236c2c8659656cc9560cfeffa553d` |
| 4 | `theorem` | [mod3_eq_1_or_mod3_eq_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/mod3-eq-1-or-mod3-eq-2--6a79d50d880daa5f58486d33.md) | 66 | `result-track:6a79d50d880daa5f58486d333ea54a17a11af102c9d7176727227d6ce4239915` |
| 5 | `theorem` | [count_equiv_one_or_two_mod3_of_derivable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/count-equiv-one-or-two-mod3-of-derivable--1b6e25f748505cb7b449ff00.md) | 78 | `result-track:1b6e25f748505cb7b449ff0093f6a079b0ba338826a76bd923f697ec0d7d25b0` |
| 6 | `theorem` | [not_derivable_mu](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/not-derivable-mu--c1ea38d99bd9180409cf72fa.md) | 98 | `result-track:c1ea38d99bd9180409cf72fab47e5ea2b2003ae31c111b1c26ba37d1f2f78c8c` |
| 7 | `def` | [Goodm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/goodm--0c646eff8cae300cbe1e7432.md) | 113 | `declaration-track:0c646eff8cae300cbe1e7432fa769fa503d3901de2f084152dba1077ba581a62` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/instance--6f8a1de9292ff50456071d89.md) | 117 | `declaration-track:6f8a1de9292ff50456071d897cad2e82a7bdccf7428c9ad72cb86e5df5800afe` |
| 9 | `theorem` | [goodmi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/goodmi--17c74ac58e0f4395a5df604f.md) | 121 | `result-track:17c74ac58e0f4395a5df604fd0ab80e5fb3874b50aa1dfb226d60a030d529d88` |
| 10 | `theorem` | [goodm_of_rule1](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/goodm-of-rule1--9cada2ec9824c1a6c56ccbbe.md) | 133 | `result-track:9cada2ec9824c1a6c56ccbbe213c73f600becf914cb9f89c20c4225488c33bbe` |
| 11 | `theorem` | [goodm_of_rule2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/goodm-of-rule2--00cb06ba3ce25aaa7ba74aac.md) | 149 | `result-track:00cb06ba3ce25aaa7ba74aac9a6bec64e59ed2a36a37e0504794f12f35570dc6` |
| 12 | `theorem` | [goodm_of_rule3](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/goodm-of-rule3--40d597953d781c08297b0cfa.md) | 159 | `result-track:40d597953d781c08297b0cfa9c4b26285a22a57dd9deff5925a966b826e4915f` |
| 13 | `theorem` | [goodm_of_rule4](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/goodm-of-rule4--b7d2bd46d846b72fec4a8bd8.md) | 180 | `result-track:b7d2bd46d846b72fec4a8bd802e0d8743f6a95203f7199aea3219da1fd1df9fa` |
| 14 | `theorem` | [goodm_of_derivable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/goodm-of-derivable--6103a7db0dcdc455dc9f6a45.md) | 198 | `result-track:6103a7db0dcdc455dc9f6a45e7c312aa35421d3991929139c18cb92f230f738b` |
| 15 | `def` | [Decstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/decstr--43a1849e0261173d31543f39.md) | 218 | `declaration-track:43a1849e0261173d31543f39660a53cac7ac6ba0f2a592c60a364ed7b6cd8799` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/instance--93688b5f31ce3c9b71b60042.md) | 222 | `declaration-track:93688b5f31ce3c9b71b60042867d1707b99ce4b3cc8b4621c8bda8755236abc4` |
| 17 | `theorem` | [decstr_of_der](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/declarations/decstr-of-der--73b13ef53d0b9c53785a3568.md) | 226 | `result-track:73b13ef53d0b9c53785a35683736a468091bbd19e6aa5034579d24bf112ad6d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
