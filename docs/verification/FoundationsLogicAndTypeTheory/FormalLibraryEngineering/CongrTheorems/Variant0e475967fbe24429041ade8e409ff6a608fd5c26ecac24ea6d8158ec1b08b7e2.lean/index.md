# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrTheorems.Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "565b7b3b1b205d31dc1b109c85699d14dc4aa5e0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `565b7b3b1b205d31dc1b109c85699d14dc4aa5e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Cleanup` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.IsEmpty` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/initialize--528602ee119a4a952aba1957.md) | 16 | `declaration-track:528602ee119a4a952aba1957051f7f5e17bce88387f4b51cc7220f984e36c09e` |
| 2 | `def` | [mkHCongrWithArity'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/mkhcongrwitharity--e76f4b50564e79600859531c.md) | 30 | `declaration-track:e76f4b50564e79600859531cf2661c7a06906c9ae01b2350ea25d4abf7c5c70e` |
| 3 | `class` | [FastSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/fastsubsingleton--55142aab47f853bad95eb783.md) | 97 | `declaration-track:55142aab47f853bad95eb783dda616fc06ab4e442c1d59787e15730ec258705c` |
| 4 | `class` | [FastIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/fastisempty--05db76d27c1d30592ff400fe.md) | 102 | `declaration-track:05db76d27c1d30592ff400fe20e2c945e4f3b83d60b53418bb5561880a08addc` |
| 5 | `theorem` | [FastSubsingleton.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/fastsubsingleton-elim--572bcfec9d84106f905312eb.md) | 105 | `result-track:572bcfec9d84106f905312eb3ba558de590fbdb9370f739b938fd5f69539fe97` |
| 6 | `theorem` | [FastSubsingleton.helim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/fastsubsingleton-helim--98983c76eae1af04bb560427.md) | 108 | `result-track:98983c76eae1af04bb5604278ee1e3b73be78424bb3e39835bc1ae58584787e0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--2e0f474e5e5ebb1741c8fd0f.md) | 113 | `declaration-track:2e0f474e5e5ebb1741c8fd0fe4015223da07cea1518e9df42d977a4806e54e05` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--057e29a2a7b4cebcf9abe251.md) | 116 | `declaration-track:057e29a2a7b4cebcf9abe251c91f0997b1d72575e7cb7ec12c8448dda28cb8d0` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--14b4ac84409af9fe993b2398.md) | 118 | `declaration-track:14b4ac84409af9fe993b23980d4677a3eedd49aa984cd14abed20aa2947a99e5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--595f94a53a25f72ab56f4261.md) | 120 | `declaration-track:595f94a53a25f72ab56f42614bdf6d5b4bbd550b548a13a2135e6fd7864b6048` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--17690463d5347782453dc617.md) | 122 | `declaration-track:17690463d5347782453dc6178f368faf47bdf6ad36d1ad80d5c0fe4d62eb1db3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--88df8e5f54d3d2da58151a61.md) | 124 | `declaration-track:88df8e5f54d3d2da58151a61693536846985dc3707e0a32c8ef505b315bde817` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--d6e62e88cc28dd39d5583910.md) | 126 | `declaration-track:d6e62e88cc28dd39d55839101eef6b2ce03bd2d1cc617ad7d1e1d325a595546f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--c3b48fea1ee23650f8b51df2.md) | 128 | `declaration-track:c3b48fea1ee23650f8b51df2a724a858e179463042121aa6a4e1c38bffb16369` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--1738d4d4bee141af1bfa51b0.md) | 130 | `declaration-track:1738d4d4bee141af1bfa51b088324a732ac8755e95510a397ebb0d622affa851` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/instance--cba7126ace82bef459fd04fa.md) | 134 | `declaration-track:cba7126ace82bef459fd04fa7db38e4648a7875be19ed43c72c49d0e40e43420` |
| 17 | `def` | [withSubsingletonAsFast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/withsubsingletonasfast--dc259ed9cf0efd6643db6d9b.md) | 144 | `declaration-track:dc259ed9cf0efd6643db6d9b209422f2e5a909a94f6e57ca1cf56dfbac8094d7` |
| 18 | `def` | [fastSubsingletonElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/fastsubsingletonelim--8ea04eccd374baf56e152598.md) | 159 | `declaration-track:8ea04eccd374baf56e152598ae8a125e84d9996b33d164543d6a20925db08ca2` |
| 19 | `def` | [mkRichHCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant0e475967fbe24429041ade8e409ff6a608fd5c26ecac24ea6d8158ec1b08b7e2.lean/declarations/mkrichhcongr--72b054ea4e84d8b9086a6384.md) | 214 | `declaration-track:72b054ea4e84d8b9086a63841fa953d8333897bae5321e1917e8ef7e70f8bcc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
