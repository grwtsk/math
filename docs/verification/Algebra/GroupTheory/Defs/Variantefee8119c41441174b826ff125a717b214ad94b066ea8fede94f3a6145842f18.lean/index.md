# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50c52bb012c782a648b1191c57d870781787b4fb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50c52bb012c782a648b1191c57d870781787b4fb`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedCancelAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/orderedcanceladdcommmonoid--459515328cf302ab725590b1.md) | 32 | `declaration-track:459515328cf302ab725590b1983227a4a11330be70c75c1b07ebcf067396c6ed` |
| 2 | `class` | [OrderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/orderedcancelcommmonoid--667aa4c5c2c20b594568de4d.md) | 43 | `declaration-track:667aa4c5c2c20b594568de4d128b229dcef3292723d4da306cb848363832b938` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/instance--6b33302c0f837abc79f4e04f.md) | 58 | `declaration-track:6b33302c0f837abc79f4e04fdc0c0a5bd842df16ff8dc6fdc299f5baa51e4dcb` |
| 4 | `theorem` | [OrderedCancelCommMonoid.lt_of_mul_lt_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/orderedcancelcommmonoid-lt-of-mul-lt-mul-left--3b63664b697e1d35e963847e.md) | 65 | `result-track:3b63664b697e1d35e963847e3c6c5c6bae1f538eda25f00dfe957aa6e1c97e3b` |
| 5 | `instance` | [OrderedCancelCommMonoid.to_contravariantClass_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/orderedcancelcommmonoid-to-contravariantclass-left--cf00d4a9f099d2ff9239166b.md) | 73 | `declaration-track:cf00d4a9f099d2ff9239166bbc38cb74bf3a1f3f12e59c201fd025576a1d68bc` |
| 6 | `instance` | [OrderedCancelCommMonoid.to_contravariantClass_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/orderedcancelcommmonoid-to-contravariantclass-right--baf4e647ba9327966a2481eb.md) | 85 | `declaration-track:baf4e647ba9327966a2481eb381c00a1c7a21be601e5fd38448c92eb9018f605` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/instance--b03dee6af9581e22e6bfce94.md) | 94 | `declaration-track:b03dee6af9581e22e6bfce94663977d9ce7383b5988d82a58fa038c81adc83f7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/instance--900458d99a644e9aa14b8385.md) | 101 | `declaration-track:900458d99a644e9aa14b838521cbb18e6be98ec25f20a204b5216733bf79e4e2` |
| 9 | `class` | [LinearOrderedCancelAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/linearorderedcanceladdcommmonoid--e0acf3b54958773e1fc7e6e8.md) | 113 | `declaration-track:e0acf3b54958773e1fc7e6e80ffb26d1708d312fc551ca1c45df78c637f5b083` |
| 10 | `class` | [LinearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/declarations/linearorderedcancelcommmonoid--f21a0aef4ca5ffe5e17a778a.md) | 120 | `declaration-track:f21a0aef4ca5ffe5e17a778a00840166a926d4f091bd69e8892f796b8220f2f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
