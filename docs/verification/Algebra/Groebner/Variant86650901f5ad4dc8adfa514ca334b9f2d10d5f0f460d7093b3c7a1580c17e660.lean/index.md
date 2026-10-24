# Verification target: GRWTSK.Algebra.Groebner.Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "183e556f063cf72534a90212fd1864f38a7c7356",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/index.md) · [Full source](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `183e556f063cf72534a90212fd1864f38a7c7356`.

Source path: `GRWTSK/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.MonomialOrder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.WellFounded` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Homogeneous` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.MonomialOrder` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subLTerm](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/declarations/sublterm--bc17e553c67b50e2a3f06e9e.md) | 58 | `declaration-track:bc17e553c67b50e2a3f06e9e5437a3944d461861aef75caada004c49d9e64637` |
| 2 | `theorem` | [degree_sub_LTerm_le](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/declarations/degree-sub-lterm-le--f6da1092e9f4f66b05cf79f2.md) | 61 | `result-track:f6da1092e9f4f66b05cf79f25bc185ccc6f2cc3dd500e36b8baae200fcac9118` |
| 3 | `theorem` | [degree_sub_LTerm_lt](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/declarations/degree-sub-lterm-lt--4828d6709572c97d4000bf03.md) | 67 | `result-track:4828d6709572c97d4000bf03358f595443d83c14bf6c745fc570d94a91fb4b40` |
| 4 | `def` | [reduce](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/declarations/reduce--6c8f5433cd15178399356a9b.md) | 85 | `declaration-track:6c8f5433cd15178399356a9bdbe8035b7827f3feffc97501846a465749243dbb` |
| 5 | `theorem` | [degree_reduce_lt](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/declarations/degree-reduce-lt--bb6c7bab6a55ca5c2ef9ebec.md) | 89 | `result-track:bb6c7bab6a55ca5c2ef9ebeca5553c02ff01b3acd24258a20bea7bd4be31f003` |
| 6 | `theorem` | [div](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/declarations/div--ec22ee0040834ea78001a96a.md) | 123 | `result-track:ec22ee0040834ea78001a96a0499a4a08317019cf83aa510a14e05f72c511758` |
| 7 | `theorem` | [div_set](../../../../mathematics/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/declarations/div-set--b04714e3667e98ea71a95d39.md) | 225 | `result-track:b04714e3667e98ea71a95d39935cf3fcae11149c5b0d387bfdee9f65c7925cac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
