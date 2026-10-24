# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.MultiplicativeFunction.Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc61d0a9b7a96f1cb9daadb25ca239f50102a363",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc61d0a9b7a96f1cb9daadb25ca239f50102a363`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.Divisibility` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ArithFn](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/declarations/arithfn--1a5ce444d875cc350e846cfc.md) | 21 | `declaration-track:1a5ce444d875cc350e846cfc28d23544d4ea02b72c852746f65090dd6aec02ed` |
| 2 | `def` | [IsMultiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/declarations/ismultiplicative--e3014cb67074d0c8874e04b2.md) | 23 | `declaration-track:e3014cb67074d0c8874e04b2103fb860f55d6a2888143bc583ab7f50c74dc49d` |
| 3 | `def` | [IsCompletelyMultiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/declarations/iscompletelymultiplicative--29fe127d43b1b585cc1bb05d.md) | 29 | `declaration-track:29fe127d43b1b585cc1bb05df99581e6fbe7f7bd4d648e3040801e98220ec5ff` |
| 4 | `theorem` | [completely_multiplicative_is_multiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/declarations/completely-multiplicative-is-multiplicative--7d6a60cf79217dc8d14b427e.md) | 35 | `result-track:7d6a60cf79217dc8d14b427e7c48cbcaedf827cfe6ade8d217a8770f795b0223` |
| 5 | `theorem` | [multiplicative_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/declarations/multiplicative-mul--2563c8ec45c0092ce275feaf.md) | 45 | `result-track:2563c8ec45c0092ce275feaf5d161dbff0aa2c2950a24bb37fb792c12ed34a7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
