# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Says.Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25c2997fa05cd76fd65a3b93c8d2dc592aa3876d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25c2997fa05cd76fd65a3b93c8d2dc592aa3876d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Linter.UnreachableTactic` — import line 8; external provider; requires a separately pinned dependency.
- `Qq.Match` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [says.verify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/says-verify--ed45f25d40abcd8df7b14d2e.md) | 34 | `declaration-track:ed45f25d40abcd8df7b14d2e94dd7ffd9fbeb1b07c7a40fcdd4b3f72af19db20` |
| 2 | `register_option` | [says.no_verify_in_CI](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/says-no-verify-in-ci--3444ddd9d2d34da40678e379.md) | 40 | `declaration-track:3444ddd9d2d34da40678e379730de69e9e11d630ec87f194866e588e87224211` |
| 3 | `def` | [parseAsTacticSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/parseastacticseq--ed6a4aaff7e94f03dcd313f4.md) | 48 | `declaration-track:ed6a4aaff7e94f03dcd313f4334fadcc5a6db4eeb3d72be90443a2630bb943fd` |
| 4 | `def` | [evalTacticCapturingMessages](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/evaltacticcapturingmessages--dfc88789e1f0911808680e54.md) | 65 | `declaration-track:dfc88789e1f0911808680e54a8adb11760b9d3075c884de6a9c6396dbf92000f` |
| 5 | `def` | [evalTacticCapturingInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/evaltacticcapturinginfo--3fb3361f44450bf0ade3742d.md) | 82 | `declaration-track:3fb3361f44450bf0ade3742d68b57be84ddc659b2672cae367858edc4d0fed35` |
| 6 | `def` | [evalTacticCapturingTryThis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/evaltacticcapturingtrythis--00882938b1fd8a7dd529d9f3.md) | 88 | `declaration-track:00882938b1fd8a7dd529d9f3b2aad4bc9397f85f9d23d4f1c953e321e9d32927` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/syntax--3954f50f4d4b8d0f612e10b2.md) | 114 | `declaration-track:3954f50f4d4b8d0f612e10b2e6966159d8874d6f1a6203ee4e3f935626a9245c` |
| 8 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/elab-rules--744a9e3acab88b6fddca3771.md) | 116 | `declaration-track:744a9e3acab88b6fddca377127829c3d905e02b2099ce9f08d61beeb66703474` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/declarations/initialize--585e36ac20cceb2e82760fd5.md) | 136 | `declaration-track:585e36ac20cceb2e82760fd554b5a14f2441f1662a474da8b479f0dca866953f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
