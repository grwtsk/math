# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProxyType.Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d012a25baf13caee932de7704e3116d75f3a356",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d012a25baf13caee932de7704e3116d75f3a356`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/initialize--e8e3a5612d584f2ff198a206.md) | 46 | `declaration-track:e8e3a5612d584f2ff198a206af0dfd8310ad92fd157737e1ea4c6e44c0298407` |
| 2 | `structure` | [ProxyEquivConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/proxyequivconfig--48938e3a14a0c4d06063d5f8.md) | 49 | `declaration-track:48938e3a14a0c4d06063d5f8ad40fbc4f588290f7473a3b0d934c37bc4a2d8c2` |
| 3 | `def` | [defaultMkCtorProxyType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/defaultmkctorproxytype--aa3f7f4d32d11968d8cdae70.md) | 77 | `declaration-track:aa3f7f4d32d11968d8cdae70cd1fed3e4ba6668263452ee4005b6fd8c851d9b0` |
| 4 | `def` | [defaultMkProxyType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/defaultmkproxytype--2069cae1ccc3bd32626e2264.md) | 104 | `declaration-track:2069cae1ccc3bd32626e2264f9f8309bcd82c6da25bf25bf0ad410000d9af2d2` |
| 5 | `def` | [ProxyEquivConfig.default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/proxyequivconfig-default--77fda1201f0057a6abeb7f7c.md) | 139 | `declaration-track:77fda1201f0057a6abeb7f7c6849e05c0b35b20e1fa7eed8cf33a25214abd7c4` |
| 6 | `def` | [ensureProxyEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/ensureproxyequiv--9cef3f654aa3466678bd5e26.md) | 150 | `declaration-track:9cef3f654aa3466678bd5e2638099b866ed99984b11bd641554c8effecbce51f` |
| 7 | `def` | [elabProxyEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/elabproxyequiv--4b7d17c1a7b1a5bf7654f88a.md) | 246 | `declaration-track:4b7d17c1a7b1a5bf7654f88a6546902f12762059519ef5f9021abf055cd71088` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/syntax--36fafa80ffcd690e89c9b71b.md) | 285 | `declaration-track:36fafa80ffcd690e89c9b71b5136fe41d2cf1b584a3455c9af178e7c78d22b07` |
| 9 | `def` | [elab_proxy_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant4ba5060ce0fa9c76aa9a036610db6075821a36537124c2cc3ffc0aced3b5761a.lean/declarations/elab-proxy-equiv--48b449012bee1a6c7501288a.md) | 289 | `declaration-track:48b449012bee1a6c7501288a857facd1ada532abf1cb1575ef3d643fc69ab67e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
