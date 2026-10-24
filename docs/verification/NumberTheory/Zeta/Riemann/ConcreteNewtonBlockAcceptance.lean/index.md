# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f04a1dfc97014cc0032ff7b07cbdc996c2adf0ed",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f04a1dfc97014cc0032ff7b07cbdc996c2adf0ed`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaTranscript`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.Omega` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockIndices](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/blockindices--a632c92f37ebb111f63b74c3.md) | 27 | `declaration-track:a632c92f37ebb111f63b74c3968ceadf6df49404503b067805a166ee73b3a22e` |
| 2 | `theorem` | [mem_blockIndices](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/mem-blockindices--7eed73cbdab9889948788803.md) | 30 | `result-track:7eed73cbdab988994878880321fa16c408965b18eb14125a969c9b9c0c2a52f3` |
| 3 | `theorem` | [block_interval](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/block-interval--fdb6af8d8df7f41bf9c0ad13.md) | 33 | `result-track:fdb6af8d8df7f41bf9c0ad13d2e6bf266c19efd25a675627b59a37ee6af14136` |
| 4 | `theorem` | [block_coverage](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/block-coverage--9df79030ec4eb1e24bc26261.md) | 39 | `result-track:9df79030ec4eb1e24bc26261884bcab2201039265977a956518b814455879eb7` |
| 5 | `theorem` | [block_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/block-unique--42ffa353ac465c83e553e293.md) | 44 | `result-track:42ffa353ac465c83e553e2932d5df6e8cd22068d550b223a4bfbd139e1333221` |
| 6 | `theorem` | [geometry_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/geometry-accepts--93a7364530169ed609fcee12.md) | 50 | `result-track:93a7364530169ed609fcee12ca7d1930542fd162e79323e0d4f9e98967402f47` |
| 7 | `def` | [BlockObligations](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/blockobligations--3728188e3a12b8535b758cef.md) | 55 | `declaration-track:3728188e3a12b8535b758cefcd1a93a21158fcbe8c23eca414308b7506460425` |
| 8 | `theorem` | [source_acceptance_of_blocks](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/source-acceptance-of-blocks--8ba888c08460cfb4ed71b5e5.md) | 61 | `result-track:8ba888c08460cfb4ed71b5e5cd9564649491edfbafa67af28d0ea4a947a031c1` |
| 9 | `theorem` | [source_acceptance_iff_exists_blocks](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/source-acceptance-iff-exists-blocks--0dae2ba3f52c57787f47e151.md) | 68 | `result-track:0dae2ba3f52c57787f47e15167315fe432d8f26de7d1fe8ccff279fd93590a0b` |
| 10 | `theorem` | [local_zero_of_blocks](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/declarations/local-zero-of-blocks--df7b3a198f90640f21d19141.md) | 80 | `result-track:df7b3a198f90640f21d191417d9fd978579796f0d1009fc897f4f16ff8b96ce2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
