# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Closure.Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7241cf83970080acb889cb8d2e7649b6b17191b2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7241cf83970080acb889cb8d2e7649b6b17191b2`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closure_isCycle](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean/declarations/closure-iscycle--a194b31d45bb9419c395b9cb.md) | 35 | `result-track:a194b31d45bb9419c395b9cb2fb7e19c91c4b0afcb3e29e3c6a272ad6f674398` |
| 2 | `theorem` | [closure_cycle_adjacent_swap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean/declarations/closure-cycle-adjacent-swap--03de63e2546614e5abcda6d5.md) | 43 | `result-track:03de63e2546614e5abcda6d5581155152eb876905ddd310a745c3a101660aaaa` |
| 3 | `theorem` | [closure_cycle_coprime_swap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean/declarations/closure-cycle-coprime-swap--c935cdd977c2ffee83de3c20.md) | 94 | `result-track:c935cdd977c2ffee83de3c2053c88fe91a728af535f2d16543114ca4452a5c64` |
| 4 | `theorem` | [closure_prime_cycle_swap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean/declarations/closure-prime-cycle-swap--d46f9f06bbff804fd1c2641f.md) | 108 | `result-track:d46f9f06bbff804fd1c2641f6ac8db7af50e11a62f9e1fa1ceeaa890cff09603` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
