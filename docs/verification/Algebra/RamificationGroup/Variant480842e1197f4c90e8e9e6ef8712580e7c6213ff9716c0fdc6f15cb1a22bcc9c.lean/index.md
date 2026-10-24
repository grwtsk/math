# Verification target: GRWTSK.Algebra.RamificationGroup.Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e1be09cf8c9a9cdd1125c44f10aba8a48cb8fcf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean/index.md) · [Full source](../../../../mathematics/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e1be09cf8c9a9cdd1125c44f10aba8a48cb8fcf`.

Source path: `GRWTSK/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [decompositionSubgroup](../../../../mathematics/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean/declarations/decompositionsubgroup--06c507c2a8e13deada9815af.md) | 26 | `declaration-track:06c507c2a8e13deada9815af204a94bc7a8a682292c4753dc0697c532412d726` |
| 2 | `def` | [subMulAction](../../../../mathematics/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean/declarations/submulaction--b2bcd47f9ae3941a16d0e225.md) | 31 | `declaration-track:b2bcd47f9ae3941a16d0e2258ef5923558723f0eb3ebc91432261abd5b1b3a6e` |
| 3 | `instance` | [decompositionSubgroupMulSemiringAction](../../../../mathematics/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean/declarations/decompositionsubgroupmulsemiringaction--2b0d32d11ac912258f9e5223.md) | 36 | `declaration-track:2b0d32d11ac912258f9e5223fc3d7fca3e6fdadc1676132892303e1102ebc5ab` |
| 4 | `def` | [inertiaSubgroup](../../../../mathematics/Algebra/RamificationGroup/Variant480842e1197f4c90e8e9e6ef8712580e7c6213ff9716c0fdc6f15cb1a22bcc9c.lean/declarations/inertiasubgroup--c3cc935d5708e6ffc6e19daa.md) | 46 | `declaration-track:c3cc935d5708e6ffc6e19daa2bc9a93d347f5824e126903a118138b78037d5d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
