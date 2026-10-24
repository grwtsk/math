# Verification target: GRWTSK.Algebra.GroupTheory.Group.Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d13a0c7a8798749ab16dde44e9b71e10da82a60d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d13a0c7a8798749ab16dde44e9b71e10da82a60d`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FailIfNoProgress` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commutator` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zpow_trick](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/zpow-trick--87f2d4bfde5854d856b5fc83.md) | 35 | `result-track:87f2d4bfde5854d856b5fc83a1f6201632aa217a9f40de0dbd67cc1831ecabd3` |
| 2 | `theorem` | [zpow_trick_one](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/zpow-trick-one--f9c00b71a4251885bd486c07.md) | 39 | `result-track:f9c00b71a4251885bd486c079d48f2bce24ddaff1cedb0f583240e48aeebd6c7` |
| 3 | `theorem` | [zpow_trick_one'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/zpow-trick-one--f0af9738275488a5a1392147.md) | 43 | `result-track:f0af9738275488a5a1392147a90bce73091e2c33e8e599982bd849c9f54507bd` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/syntax--013c37805a0a1d65ee3074b4.md) | 47 | `declaration-track:013c37805a0a1d65ee3074b4428786b31dbc1a35cb664138c60fc1a984e41458` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/macro-rules--90a3a063bb69457185d2d480.md) | 49 | `declaration-track:90a3a063bb69457185d2d4800c77778d262048e85e5195568b82a62f24f72079` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/syntax--df28874985df41859f27e4ea.md) | 63 | `declaration-track:df28874985df41859f27e4ea25d4fbd19170b8766db2e349fabdc4952364f340` |
| 7 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/macro-rules--4d3de1be7d82713f8bf6a0ad.md) | 65 | `declaration-track:4d3de1be7d82713f8bf6a0ad55c490e51840849b4759a7ddc2c0494cb33aabb9` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/syntax--12f28819510010c04041fd8b.md) | 83 | `declaration-track:12f28819510010c04041fd8b8852449a7fe30eeb158b833c0b7d12613c00ffa3` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/declarations/macro-rules--83eaac160f023ebdc9f718cd.md) | 85 | `declaration-track:83eaac160f023ebdc9f718cdf356eff92c8e19b1d2e6359ff4c35aa95395cedf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
