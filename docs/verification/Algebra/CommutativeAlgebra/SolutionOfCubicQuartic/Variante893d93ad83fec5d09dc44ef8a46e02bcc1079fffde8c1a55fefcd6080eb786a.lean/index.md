# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SolutionOfCubicQuartic.Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b2f6590644dd68b2a5a869d8e10d69cf083b98a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b2f6590644dd68b2a5a869d8e10d69cf083b98a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.LinearCombination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cube_root_of_unity_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/declarations/cube-root-of-unity-sum--3188f7a22b8f4e19582be050.md) | 82 | `result-track:3188f7a22b8f4e19582be05038d0cecd9fb137562255fc910a2e9ba1c634a022` |
| 2 | `theorem` | [cubic_depressed_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/declarations/cubic-depressed-eq-zero-iff--a65a19c77b2a621e3df9b516.md) | 86 | `result-track:a65a19c77b2a621e3df9b516047794934bc52efb692742c2b063db12645149ac` |
| 3 | `theorem` | [cubic_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/declarations/cubic-eq-zero-iff--add288f76bd181310f0f2a8f.md) | 107 | `result-track:add288f76bd181310f0f2a8f6389c3d28f8bedc666bf2d50a285363b44618bdb` |
| 4 | `theorem` | [cubic_eq_zero_iff_of_p_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/declarations/cubic-eq-zero-iff-of-p-eq-zero--230a93374fba7c732f28985c.md) | 125 | `result-track:230a93374fba7c732f28985c928ba1f0f73e249a55d36f73e7d7e654e3ba0253` |
| 5 | `theorem` | [quartic_depressed_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/declarations/quartic-depressed-eq-zero-iff--7da9cce3316a139e6285bb80.md) | 166 | `result-track:7da9cce3316a139e6285bb8031941d47387aaf1c70fa1cedfaac29a1ab5f97f4` |
| 6 | `theorem` | [quartic_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/declarations/quartic-eq-zero-iff--1919cef69fc530dbbef17f10.md) | 198 | `result-track:1919cef69fc530dbbef17f109e4aea3b49a33afd739d434e30982237ed3f2aa5` |
| 7 | `theorem` | [quartic_eq_zero_iff_of_q_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variante893d93ad83fec5d09dc44ef8a46e02bcc1079fffde8c1a55fefcd6080eb786a.lean/declarations/quartic-eq-zero-iff-of-q-eq-zero--f9dd60989b309626b76e4bdb.md) | 224 | `result-track:f9dd60989b309626b76e4bdb419714d38c74f21821da4d4ac0d04e413097ec08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
