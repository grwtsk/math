# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9e2601aea93c40ac0ec3296856281b0b1dc4cd9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9e2601aea93c40ac0ec3296856281b0b1dc4cd9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.HashSet` — import line 14; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.SavedState` — import line 15; external provider; requires a separately pinned dependency.
- `Aesop.Tree.RunMetaM` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Tree.State` — import line 17; external provider; requires a separately pinned dependency.
- `Batteries.Data.Array.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkids--a763817c46f707c398c0fa5a.md) | 30 | `declaration-track:a763817c46f707c398c0fa5a799821efd04e53ddab471d13c4c24192187c5e9e` |
| 2 | `def` | [checkAcyclic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkacyclic--13ea0eb4b21b0ac746615763.md) | 49 | `declaration-track:13ea0eb4b21b0ac746615763f6b3b21f921455862e03c6a3e7cc95b517ce89b3` |
| 3 | `def` | [checkConsistentParentChildLinks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkconsistentparentchildlinks--b437550dfe9bb842fcd2cfbf.md) | 70 | `declaration-track:b437550dfe9bb842fcd2cfbf266e48062b4174740adc1283a65c2898edfe70ef` |
| 4 | `def` | [mvarClusterId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/mvarclusterid--650efa14157370f9937754f9.md) | 92 | `declaration-track:650efa14157370f9937754f9e3404929dd0d887f5ebc70d6b4c328c735dbc33c` |
| 5 | `def` | [checkState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkstate--0248e5aa611e764e7a58308f.md) | 97 | `declaration-track:0248e5aa611e764e7a58308fc5b44490df8d4a3fa0e8467c395beeb6275c21d4` |
| 6 | `def` | [checkIrrelevance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkirrelevance--fdf8b463f977039cbae96cd5.md) | 116 | `declaration-track:fdf8b463f977039cbae96cd5e4d8112ca2b783a670464765896e1037041c60fb` |
| 7 | `def` | [checkMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkmvars--a2426194b00c529ef0b5fdd8.md) | 138 | `declaration-track:a2426194b00c529ef0b5fdd8502b587ef88c805f346972781eb337cbadd73492` |
| 8 | `def` | [checkIntroducedMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkintroducedmvars--2bd75458b069a4e1882b6265.md) | 211 | `declaration-track:2bd75458b069a4e1882b62659013ff71aec14b37668cfcd19669010a54394d01` |
| 9 | `def` | [checkInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkinvariants--ee756ac3f35668e6d1b607ba.md) | 230 | `declaration-track:ee756ac3f35668e6d1b607badb993eb4f80aa1f2f7ed8fb417e7c49d4edf3c67` |
| 10 | `def` | [checkInvariantsIfEnabled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkinvariantsifenabled--d4035e3c1c5a24b4e6afff81.md) | 240 | `declaration-track:d4035e3c1c5a24b4e6afff8159891f4dbe8b5c5288c28bc885aee7912dd34b1f` |
| 11 | `def` | [checkInvariantsIfEnabled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant7b24e467b6c473a997e8f2a03fb04afb8762bc7c98eddd7ce57628962a1c1737.lean/declarations/checkinvariantsifenabled--4ff3c4fee3fc94665eca55fb.md) | 247 | `declaration-track:4ff3c4fee3fc94665eca55fb1835ce9233bcf2f2cae02b906b60e5695867489b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
