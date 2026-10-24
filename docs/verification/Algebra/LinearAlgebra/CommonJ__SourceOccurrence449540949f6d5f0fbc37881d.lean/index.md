# Verification target: GRWTSK.Algebra.LinearAlgebra.CommonJ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c74145f19ca6fdc9034dc773c98eba153dbf70b6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CommonJ.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c74145f19ca6fdc9034dc773c98eba153dbf70b6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CommonJ.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CommonJ.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Diagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.OrderedProduct`](../../../../mathematics/Algebra/OrderedProduct.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotationMatrix](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rotationmatrix--6d84c2820427cb9ebbc04276.md) | 31 | `declaration-track:6d84c2820427cb9ebbc04276c1dc40f581269bae415dd51f478e9da8f8f7fc77` |
| 2 | `theorem` | [rotationMatrix_comp](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rotationmatrix-comp--49c1d469f3eac361a1f1d55e.md) | 37 | `result-track:49c1d469f3eac361a1f1d55e906089558b6127f173f040772c119aa0b9927b1c` |
| 3 | `theorem` | [rotationMatrix_commute](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rotationmatrix-commute--cf642a3dbc26d721c66b7f15.md) | 47 | `result-track:cf642a3dbc26d721c66b7f15d366765768f5ebe14c6ed8f4e811e5286254e426` |
| 4 | `theorem` | [commonJ_square](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/commonj-square--a7e4aceb7483dc6c9b2a9f02.md) | 56 | `result-track:a7e4aceb7483dc6c9b2a9f02d271a99d4ad49beb7bbf3c37c1bbac05507820a4` |
| 5 | `theorem` | [circle_composition](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/circle-composition--410b044d62b7bd9881113767.md) | 65 | `result-track:410b044d62b7bd98811137678810659fd10f4113095098ff226d9551af6c1f84` |
| 6 | `theorem` | [circle_reverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/circle-reverse--282da41cf03002192226601e.md) | 75 | `result-track:282da41cf03002192226601e2b06fe577674ac475d85a739c588c8af5364c07e` |
| 7 | `theorem` | [rotationMatrix_reverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rotationmatrix-reverse--3257b95a54c02840cb07bfee.md) | 81 | `result-track:3257b95a54c02840cb07bfeeb73855cb46f3a2026693c6d844d41d6ef8d90e82` |
| 8 | `def` | [rotationUnit](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rotationunit--f295b393399e75484e64326a.md) | 96 | `declaration-track:f295b393399e75484e64326aa05b95645aae03ed4fcef175d417b3f14d2bdbae` |
| 9 | `theorem` | [rotationUnit_commute](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rotationunit-commute--54e2b2e45008360938e9b9e2.md) | 107 | `result-track:54e2b2e45008360938e9b9e26f04617d225b1e9ebd7487f8626a33396a6ceeef` |
| 10 | `theorem` | [rotationMatrix_eq_commonJ](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rotationmatrix-eq-commonj--8e529be18482a112a00217e7.md) | 117 | `result-track:8e529be18482a112a00217e7222f5307ac7c15ef0a1abe5ac4c8329105f0fac0` |
| 11 | `theorem` | [rotationUnit_reverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rotationunit-reverse--6142623fd8893cf47213ec71.md) | 126 | `result-track:6142623fd8893cf47213ec716e98d8879661db742b41d04ba27f34174469072c` |
| 12 | `def` | [rationalEdge](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rationaledge--b19d741b68c73c787b884a07.md) | 134 | `declaration-track:b19d741b68c73c787b884a075c7b0d98fd5149d0a819e0b723d5104ebb7e8999` |
| 13 | `theorem` | [rational_two_edge_loop_nonidentity](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rational-two-edge-loop-nonidentity--c63414f1a15c7323b89954dd.md) | 139 | `result-track:c63414f1a15c7323b89954dd51c87d3f3aff42975ba369f859e629ccf3e7c64e` |
| 14 | `def` | [flipMatrix](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/flipmatrix--8be4899e284f5c700c05bf5a.md) | 150 | `declaration-track:8be4899e284f5c700c05bf5a55c5ed9e3cf3728efc33f76a411e8b3da0d1514a` |
| 15 | `def` | [flipUnit](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/flipunit--dfeca526f98082846b7433e0.md) | 155 | `declaration-track:dfeca526f98082846b7433e0711106f0184cd15e168c709c1df87a2cbadcebe7` |
| 16 | `theorem` | [flip_rotation_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/flip-rotation-inverse--7011f609bbca0a7e32234c88.md) | 168 | `result-track:7011f609bbca0a7e32234c88ad68d8a032308c74db16ef796b0cc70f834c8e50` |
| 17 | `theorem` | [commonJ_loop_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/commonj-loop-inverse--9360a4ff9c74a1eaf69698aa.md) | 180 | `result-track:9360a4ff9c74a1eaf69698aa26bd274a3e9c1b685c9d32da42ca6ee9044622db` |
| 18 | `theorem` | [rational_reverse_loop_identity](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/rational-reverse-loop-identity--c08d3bb0df73f7e5aee1f021.md) | 192 | `result-track:c08d3bb0df73f7e5aee1f02131ef325e26df488d93c920b8aeb0b43a31031314` |
| 19 | `theorem` | [flipUnit_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/flipunit-inverse--eaf1d4c59e2cbad6c1cbe085.md) | 199 | `result-track:eaf1d4c59e2cbad6c1cbe085716ac53670630556d52c30d8bb0778148ee08cb3` |
| 20 | `theorem` | [commonJ_loop_sign_conjugation](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/commonj-loop-sign-conjugation--7e23cb36af33c0993dc73068.md) | 207 | `result-track:7e23cb36af33c0993dc73068351df3f4434d2b9227bfce19c9046dc6836c9e61` |
| 21 | `theorem` | [flip_commonJ_reverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/declarations/flip-commonj-reverse--c906fedd8818094015c1bb6b.md) | 216 | `result-track:c906fedd8818094015c1bb6bbf2d6c4d09fd43acc5fc6e7dca7496f029258e62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
