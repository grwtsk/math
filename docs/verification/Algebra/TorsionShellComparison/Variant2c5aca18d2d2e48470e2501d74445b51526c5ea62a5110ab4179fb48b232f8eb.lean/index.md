# Verification target: GRWTSK.Algebra.TorsionShellComparison.Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1b6413eef79762e570a974e50f354222c3730f3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/index.md) · [Full source](../../../../mathematics/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1b6413eef79762e570a974e50f354222c3730f3`.

Source path: `GRWTSK/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Expansion.ShellTorsion` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.EllipticTorsionAction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ShellTwistGroup](../../../../mathematics/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/declarations/shelltwistgroup--2157adb8605e22a206b3bbe6.md) | 30 | `declaration-track:2157adb8605e22a206b3bbe62af0e6d7a158befd6c910fece00fd0cb84b090d6` |
| 2 | `structure` | [EllipticToShellTorsion](../../../../mathematics/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/declarations/elliptictoshelltorsion--1e6f26ab35d4511844ac7556.md) | 34 | `declaration-track:1e6f26ab35d4511844ac7556143f947cb95484d4d239b7df1a9e60d57ce468f4` |
| 3 | `def` | [UsesTorsionClass](../../../../mathematics/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/declarations/usestorsionclass--b4b82d98d3cfc7d0bbb4e801.md) | 48 | `declaration-track:b4b82d98d3cfc7d0bbb4e801078705792ffb324dc7dee3ca97dbd22723fee83a` |
| 4 | `theorem` | [shell_twist_of_zero_is_identity](../../../../mathematics/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/declarations/shell-twist-of-zero-is-identity--1673ec1e9a71470e5f79ba06.md) | 57 | `result-track:1673ec1e9a71470e5f79ba064719b712a612795df1a7e349cba90c6944d36472` |
| 5 | `theorem` | [shell_twist_respects_add](../../../../mathematics/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/declarations/shell-twist-respects-add--37603e55165e0a44a43d6d4f.md) | 67 | `result-track:37603e55165e0a44a43d6d4f5ad43f37f339343f62ee7b2e1abe49810efb7dcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
