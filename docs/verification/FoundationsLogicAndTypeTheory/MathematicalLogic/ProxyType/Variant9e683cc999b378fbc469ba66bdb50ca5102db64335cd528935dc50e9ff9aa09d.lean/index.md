# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProxyType.Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "622dea343a6db47ac6c775cf21adc047d5b89798",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `622dea343a6db47ac6c775cf21adc047d5b89798`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/initialize--b849de9afd0165355f56d578.md) | 54 | `declaration-track:b849de9afd0165355f56d578fd769683ed6c203043d319842390f026b4760aa8` |
| 2 | `structure` | [ProxyEquivConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/proxyequivconfig--fba4b106a525a4350ce6c108.md) | 57 | `declaration-track:fba4b106a525a4350ce6c1084fd4a1044082d0b579a4c2fcccc6f1a6d4f4c9d3` |
| 3 | `def` | [defaultMkCtorProxyType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/defaultmkctorproxytype--216af41e4574fec18a5c5516.md) | 85 | `declaration-track:216af41e4574fec18a5c551671a8c28bbfce66a66ae447ab8696cf7b8c689462` |
| 4 | `def` | [defaultMkProxyType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/defaultmkproxytype--a94922200960b340a25b4f46.md) | 112 | `declaration-track:a94922200960b340a25b4f46aa911c1fba4830e2f57fcd8df95d872aa82bbda9` |
| 5 | `def` | [ProxyEquivConfig.default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/proxyequivconfig-default--0f2f72493600703f286a7fe1.md) | 147 | `declaration-track:0f2f72493600703f286a7fe19e2c192ca00cbd3004c7d0fa8adc67ba244f83e3` |
| 6 | `def` | [ensureProxyEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/ensureproxyequiv--2254c12f293681202d5cabd5.md) | 158 | `declaration-track:2254c12f293681202d5cabd58607b461b72a7f9dde5928217e2aa5a218475f9c` |
| 7 | `def` | [elabProxyEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/elabproxyequiv--dd967e58c864c9945bb7604e.md) | 254 | `declaration-track:dd967e58c864c9945bb7604e9d805c7130f5af0fad7bbd10f7397c3acb540ef0` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/syntax--d8e93ebe086972e608674053.md) | 293 | `declaration-track:d8e93ebe086972e6086740536fcd220510a14da31ab1ea70542c122c7f24fa10` |
| 9 | `def` | [elab_proxy_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant9e683cc999b378fbc469ba66bdb50ca5102db64335cd528935dc50e9ff9aa09d.lean/declarations/elab-proxy-equiv--851776c9123b645b77effdd4.md) | 297 | `declaration-track:851776c9123b645b77effdd4eb398ba5ceddb381466450b78e3dae34de46a730` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
