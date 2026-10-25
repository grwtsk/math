# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatLog.Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "065afcfb7e6c2870f635b3e984b700da9d2292e6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `065afcfb7e6c2870f635b3e984b700da9d2292e6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Log` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nat_log_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/declarations/nat-log-zero--93dda406ca7c698aa116bab2.md) | 26 | `result-track:93dda406ca7c698aa116bab2d1792cff00f12b38a2b6475963b7d0e8d4a9b339` |
| 2 | `lemma` | [nat_log_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/declarations/nat-log-one--c386d119e7036bb269af35d4.md) | 27 | `result-track:c386d119e7036bb269af35d4529b4f0178037e3bae2dab857f46ea176a35cba1` |
| 3 | `lemma` | [nat_log_helper0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/declarations/nat-log-helper0--8186af247c780c5f773a8d16.md) | 29 | `result-track:8186af247c780c5f773a8d16e5da8a0c3766ad6309fb6261ddd8602920fce059` |
| 4 | `lemma` | [nat_log_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/declarations/nat-log-helper--5012bf0c47dad6a240afe989.md) | 34 | `result-track:5012bf0c47dad6a240afe989173976acbb2ce7528ddcf83454b4f40dc4fafd72` |
| 5 | `theorem` | [isNat_log](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/declarations/isnat-log--42f23a5983823a8247837a50.md) | 39 | `result-track:42f23a5983823a8247837a508fb4cdc7889c636318d07638092042edd98e66ae` |
| 6 | `def` | [proveNatLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/declarations/provenatlog--a860bf2679339ffad3efbfe6.md) | 48 | `declaration-track:a860bf2679339ffad3efbfe66ea8f649aa81719e68ba994ddf42f5643fba13e7` |
| 7 | `def` | [evalNatLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/declarations/evalnatlog--16bb21512d72bb2fe26aee0e.md) | 67 | `declaration-track:16bb21512d72bb2fe26aee0e4b48d95556b94dc748f18df01e1b759c887d7e38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
