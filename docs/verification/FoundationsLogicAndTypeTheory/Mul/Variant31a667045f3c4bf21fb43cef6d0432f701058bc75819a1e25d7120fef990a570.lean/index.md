# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Mul.Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b898db0e28275015a82e3e22c1bcac88319d3e64",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b898db0e28275015a82e3e22c1bcac88319d3e64`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.RingNF` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [choose_mul_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean/declarations/choose-mul-add--7ae6c2fef8dc86f782ae865d.md) | 19 | `result-track:7ae6c2fef8dc86f782ae865d0cd91a48ea989b012c5fb02ce783224ac6f085eb` |
| 2 | `theorem` | [choose_mul_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Mul/Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570.lean/declarations/choose-mul-right--6d24aacacb7995d92ed86d1b.md) | 38 | `result-track:6d24aacacb7995d92ed86d1b89a80b29e6a2ba4808706d6584da5e10e53d8b70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
