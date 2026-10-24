# Verification target: GRWTSK.Algebra.KTheory.BoundedKasparovCycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "903b2be5f79611c9398290781b2dd6f60304602a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KTheory/BoundedKasparovCycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/index.md) · [Full source](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `903b2be5f79611c9398290781b2dd6f60304602a`.

Source path: `GRWTSK/Algebra/KTheory/BoundedKasparovCycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KTheory/BoundedKasparovCycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Compact.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjointDefect](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/adjointdefect--5222d93f3de8b0c8d63a955c.md) | 15 | `declaration-track:5222d93f3de8b0c8d63a955ca05bce88a0754239222467ae92777a860171dbd8` |
| 2 | `def` | [squareDefect](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/squaredefect--bee22ee4cffcce1371ff4362.md) | 18 | `declaration-track:bee22ee4cffcce1371ff4362e567e5f3529b763ad3896a5ca74399df54ce956d` |
| 3 | `def` | [commutator](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/commutator--4d9cfde8b192327cc7fb86fc.md) | 22 | `declaration-track:4d9cfde8b192327cc7fb86fc3d38425f8b5c813f27d8bc83ac6e839e4db189de` |
| 4 | `structure` | [Cycle](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/cycle--074b0a60e2c8a9e6d2348616.md) | 30 | `declaration-track:074b0a60e2c8a9e6d2348616ad68e96c3ebecfdef2c83e4b8ee959030dd5e0e5` |
| 5 | `structure` | [ExactCycle](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/exactcycle--076a2b8c222e3cf5c0b82c03.md) | 40 | `declaration-track:076a2b8c222e3cf5c0b82c032eeb63f34ebf724f24843670c96a498e873b8b8e` |
| 6 | `theorem` | [adjointDefect_eq_zero](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/adjointdefect-eq-zero--6ac1d1a66aee3b203e3a6fa0.md) | 52 | `result-track:6ac1d1a66aee3b203e3a6fa01addb4ed1660ee8d5aa86f3531607fbf33b34fa2` |
| 7 | `theorem` | [squareDefect_eq_zero](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/squaredefect-eq-zero--86fbc43ea2433eeaeb216981.md) | 57 | `result-track:86fbc43ea2433eeaeb216981b9c7bf3227fa430afec2d54799c341694697b0e3` |
| 8 | `theorem` | [commutator_eq_zero](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/commutator-eq-zero--8994a078e2a34ad27a1fd5d9.md) | 62 | `result-track:8994a078e2a34ad27a1fd5d9508154de53405e27e12c648bd08c37e8074a1fc8` |
| 9 | `def` | [toCycle](../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/declarations/tocycle--e3e6c8e8bed38e671a48f37a.md) | 67 | `declaration-track:e3e6c8e8bed38e671a48f37ae29534793e260dff713b42e49735b69f3b19dedd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
