# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.MultiplicativeFunction.Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a987b3e6ee135c6871209d7550f91231c7e5cbe1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a987b3e6ee135c6871209d7550f91231c7e5cbe1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.Divisibility` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ArithFn](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/declarations/arithfn--1b62140c8d3087453ecf5d2f.md) | 13 | `declaration-track:1b62140c8d3087453ecf5d2ffa1c88398f3a37fec57c417437a96b94afda7643` |
| 2 | `def` | [IsMultiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/declarations/ismultiplicative--a7bcdd762766bf0939ddc94b.md) | 15 | `declaration-track:a7bcdd762766bf0939ddc94b8656df87282be472d7a1beb00caaf61d7f0f4435` |
| 3 | `def` | [IsCompletelyMultiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/declarations/iscompletelymultiplicative--7bc67bd2f20b718f4e127e8e.md) | 21 | `declaration-track:7bc67bd2f20b718f4e127e8e3a863a0b68ea1509103d8837b645ca1e72a4a326` |
| 4 | `theorem` | [completely_multiplicative_is_multiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/declarations/completely-multiplicative-is-multiplicative--b978e26fdc94b7534013895b.md) | 27 | `result-track:b978e26fdc94b7534013895b722604983e29998310d6e6ff3b3d8d518cf6cd14` |
| 5 | `theorem` | [multiplicative_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/declarations/multiplicative-mul--4ac4d59cf5dd63ee4bbbb7d2.md) | 37 | `result-track:4ac4d59cf5dd63ee4bbbb7d2893b1567bec7173c53592244c39eb4a78a5753f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
