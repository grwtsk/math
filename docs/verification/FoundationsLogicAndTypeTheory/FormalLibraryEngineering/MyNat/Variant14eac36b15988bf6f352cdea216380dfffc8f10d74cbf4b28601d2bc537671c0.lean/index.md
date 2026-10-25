# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyNat.Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13d56844fee1506108ea96925d5bbf94bb258d5b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13d56844fee1506108ea96925d5bbf94bb258d5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MyNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/declarations/mynat--98e4647eff92f989353d5fce.md) | 12 | `declaration-track:98e4647eff92f989353d5fce8235e42c7a5b26e51fe0bd3f95f75e7a87b320c4` |
| 2 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/declarations/add--c618b39424ba0d0abc9fb8dc.md) | 24 | `declaration-track:c618b39424ba0d0abc9fb8dc6460eb73649ec361235166c6d0e290184c98bc68` |
| 3 | `theorem` | [zero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/declarations/zero-add--628452142182f0685ace4bf5.md) | 31 | `result-track:628452142182f0685ace4bf56299a67529809c11245756539714682622ba2db3` |
| 4 | `theorem` | [succ_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/declarations/succ-add--996df0dc29fdfd9b830f9413.md) | 37 | `result-track:996df0dc29fdfd9b830f941379ae54eac1cd0febf2c5aa8774845da7667eca93` |
| 5 | `theorem` | [add_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/declarations/add-comm--719a1591b12070ba19f1fdbb.md) | 44 | `result-track:719a1591b12070ba19f1fdbb55b89e39676363084008a5c483dde0004b0ee226` |
| 6 | `def` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/declarations/mul--939114cc7d7999dbcbbbd2e7.md) | 59 | `declaration-track:939114cc7d7999dbcbbbd2e7ceacc29f950062e0ab0fba1b215ce5460a8fbe65` |
| 7 | `theorem` | [mul_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/declarations/mul-comm--18539628f6a0477b8a6b9795.md) | 63 | `result-track:18539628f6a0477b8a6b97954115124244912e3e5f4e5990748b947075beefe1` |
| 8 | `theorem` | [flt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant14eac36b15988bf6f352cdea216380dfffc8f10d74cbf4b28601d2bc537671c0.lean/declarations/flt--bbebdac4bd87d94e0efdc030.md) | 76 | `result-track:bbebdac4bd87d94e0efdc0309e78f86d11c19fd12723f15e729828c172c6e8d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
