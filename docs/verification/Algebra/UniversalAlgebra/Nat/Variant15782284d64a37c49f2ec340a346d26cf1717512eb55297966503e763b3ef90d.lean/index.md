# Verification target: GRWTSK.Algebra.UniversalAlgebra.Nat.Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22559e0b9ec4d0b8a95c3765a2377d083ccfd32b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22559e0b9ec4d0b8a95c3765a2377d083ccfd32b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Nat/Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Nat/Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d.lean/declarations/instisstrictorderedring--71e4ec0883989e7ee4aa1c9d.md) | 24 | `declaration-track:71e4ec0883989e7ee4aa1c9d1c2afe022d3eed95038335da04cbce48d8d0d8c2` |
| 2 | `instance` | [instLinearOrderedCommMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d.lean/declarations/instlinearorderedcommmonoidwithzero--aed18c4a6a85d5ef834a8a59.md) | 32 | `declaration-track:aed18c4a6a85d5ef834a8a59e5a4ea8d8a6905388cac284d3f0a1fff787a6602` |
| 3 | `lemma` | [isCompl_even_odd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d.lean/declarations/iscompl-even-odd--0412c8d0c3ed0739b6948661.md) | 40 | `result-track:0412c8d0c3ed0739b6948661ca73ce7100ddc1b23c879b52f120194145c52e9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
