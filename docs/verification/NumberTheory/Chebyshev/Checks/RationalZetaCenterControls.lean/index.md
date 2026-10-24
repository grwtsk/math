# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.RationalZetaCenterControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fe12fe619f280f89f74163f3934eac7c2097c7a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fe12fe619f280f89f74163f3934eac7c2097c7a`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.VerifiedRationalNewtonCenter`](../../../../../mathematics/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [terminal_empty](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/terminal-empty--0f3f06f0f770d64d36e3e412.md) | 15 | `result-track:0f3f06f0f770d64d36e3e41210ddb3df3548a333ab4b132b1e0ed7b205e4a2b6` |
| 2 | `theorem` | [terminal_not_last](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/terminal-not-last--1d4f05a7a529c30211e7780a.md) | 16 | `result-track:1d4f05a7a529c30211e7780af59a63cf8e517188f129dca8131574878808d91d` |
| 3 | `theorem` | [empty_finite_sum](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/empty-finite-sum--bb5c2ce96586ce5e76a0ec96.md) | 18 | `result-track:bb5c2ce96586ce5e76a0ec96d9157e7dfbb5f0f65ce8ce1507adb76f751abd77` |
| 4 | `theorem` | [factor_at_two](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/factor-at-two--35e3658fab13da94c40bdb42.md) | 21 | `result-track:35e3658fab13da94c40bdb420313297ed2c2429df8f8722240a4abe6cb9ee41d` |
| 5 | `theorem` | [negative_pole_derivative](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/negative-pole-derivative--a62e2e84d2a3c402855da8e2.md) | 25 | `result-track:a62e2e84d2a3c402855da8e22dc98d7b32084b0623ea827c48349e97ae503493` |
| 6 | `theorem` | [empty_prefix_keeps_tail](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/empty-prefix-keeps-tail--56916e0b80b85d3e75e0c66d.md) | 29 | `result-track:56916e0b80b85d3e75e0c66dcc3b131087f131472433748a1bd7bf72bc11b482` |
| 7 | `theorem` | [pole_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/pole-rejected--eb7a83fde4ad7e5e6ae0a8c0.md) | 33 | `result-track:eb7a83fde4ad7e5e6ae0a8c02c0539747f1917c7ef5854ae3763a6c27e7a8098` |
| 8 | `theorem` | [zero_radius_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/zero-radius-rejected--b6d94a15b6979d0898cf25b4.md) | 38 | `result-track:b6d94a15b6979d0898cf25b41b9cf0da91bf42011d6a2c5737f2411bdc02336f` |
| 9 | `theorem` | [too_large_radius_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/too-large-radius-rejected--26fbaff99642329fa9427d08.md) | 45 | `result-track:26fbaff99642329fa9427d0866d96062ed3a7225dc5d57d88a8569b543687a7d` |
| 10 | `theorem` | [bad_prefix_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/bad-prefix-rejected--4783f265e4c5b9e1ab8d678a.md) | 49 | `result-track:4783f265e4c5b9e1ab8d678a6603290b574ff36eac06f84f7f30420c999285c7` |
| 11 | `theorem` | [bad_terminal_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/bad-terminal-rejected--a25916d8c980b3dac2070f17.md) | 54 | `result-track:a25916d8c980b3dac2070f178fa7aef703c9d08e681716f8ecc76a9cd6eaf4bc` |
| 12 | `theorem` | [altered_claim_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/altered-claim-rejected--5e1dc60e4c3717fff2066fe1.md) | 59 | `result-track:5e1dc60e4c3717fff2066fe1d231153e65f6cfcc813ae65c2a519c2c725b99c0` |
| 13 | `theorem` | [slope_target_is_independent](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/slope-target-is-independent--8880c9f6be08e7e269ac35d9.md) | 65 | `result-track:8880c9f6be08e7e269ac35d9309cd8ac70c07d230b7f5ca0e4a41f106c083f27` |
| 14 | `theorem` | [equality_is_numeric_tolerance](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalZetaCenterControls.lean/declarations/equality-is-numeric-tolerance--496256ee9fcf4fde071aa359.md) | 70 | `result-track:496256ee9fcf4fde071aa3593d4e8399be9fb13d4334156080bda1bc1e2ccf0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
