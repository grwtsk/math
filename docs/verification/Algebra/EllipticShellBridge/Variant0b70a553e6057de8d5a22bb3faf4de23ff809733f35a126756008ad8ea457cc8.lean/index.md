# Verification target: GRWTSK.Algebra.EllipticShellBridge.Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58f85151dbaad6e7d5183c780500ee42f1f32b48",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/index.md) · [Full source](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58f85151dbaad6e7d5183c780500ee42f1f32b48`.

Source path: `GRWTSK/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.HeisenbergExtension` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Cellular.HeatQuantizedTorsion` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.Representation` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LoopPhaseMatchesWeil](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/declarations/loopphasematchesweil--b3cc2dde907f8927bcc1fb6e.md) | 21 | `declaration-track:b3cc2dde907f8927bcc1fb6e31b6da1267d87861fee1f2487da61afa0a7abffd` |
| 2 | `structure` | [ShellWeilCompatibility](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/declarations/shellweilcompatibility--ea82e67cf1054af6ce09ccbf.md) | 34 | `declaration-track:ea82e67cf1054af6ce09ccbf64b5e2e05058b9571f9e3efa0743debd790950f3` |
| 3 | `theorem` | [shell_weil_compatible](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/declarations/shell-weil-compatible--6c78e5782cb21ba5580a1cc7.md) | 50 | `result-track:6c78e5782cb21ba5580a1cc763c273289b653d69fb9cd3ec7fd048c25f679021` |
| 4 | `structure` | [ShellHeisenbergRepresentation](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/declarations/shellheisenbergrepresentation--58a90e25b54a87c22201bdd7.md) | 61 | `declaration-track:58a90e25b54a87c22201bdd7b0511b1fa468bf22dd52ebebd29a470ada24d24c` |
| 5 | `structure` | [SelectedShellTwistGroup](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/declarations/selectedshelltwistgroup--1de22c60dae8a3a613649ade.md) | 76 | `declaration-track:1de22c60dae8a3a613649ade5e902d5a96f3ad092048ab10fad8169267b57d45` |
| 6 | `def` | [SurjectiveOntoSelectedShellTwists](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/declarations/surjectiveontoselectedshelltwists--7144afca067f4e15dceec2b9.md) | 81 | `declaration-track:7144afca067f4e15dceec2b97c15a072f86cf6590ee4eef96eed1663f791a170` |
| 7 | `theorem` | [selected_shell_twist_has_preimage](../../../../mathematics/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/declarations/selected-shell-twist-has-preimage--cfbd2d1dd3db9a23075f182b.md) | 90 | `result-track:cfbd2d1dd3db9a23075f182b5e0f8000bac87d1c46ecdd924cb55e37c70dc8e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
