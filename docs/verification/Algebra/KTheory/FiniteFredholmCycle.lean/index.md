# Verification target: GRWTSK.Algebra.KTheory.FiniteFredholmCycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbeb329bb85b22e13a5c963165a5286c697e905e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KTheory/FiniteFredholmCycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/index.md) · [Full source](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbeb329bb85b22e13a5c963165a5286c697e905e`.

Source path: `GRWTSK/Algebra/KTheory/FiniteFredholmCycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KTheory/FiniteFredholmCycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExactCycle](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/exactcycle--2221999e4e4b77aba5d8d7b3.md) | 13 | `declaration-track:2221999e4e4b77aba5d8d7b37ee11b87c5235b3bbd767f97a98b6ed54636d23b` |
| 2 | `def` | [commutator](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/commutator--c809bb85535e563b4d71ccb8.md) | 26 | `declaration-track:c809bb85535e563b4d71ccb83706ccdfd02a14f35f57b0f978004e5c2d212478` |
| 3 | `theorem` | [commutator_eq_zero](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/commutator-eq-zero--115213a87be4b35ae73bca0d.md) | 31 | `result-track:115213a87be4b35ae73bca0de2e705fc2c07e0c3386f5b1d8f64b41d4559b044` |
| 4 | `def` | [operatorUnit](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/operatorunit--190adfade3f1acbdafe7b206.md) | 36 | `declaration-track:190adfade3f1acbdafe7b206cea542a2de5ecb3a2b8f559ba147f2ea48f3067b` |
| 5 | `theorem` | [operator_star_mul](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/operator-star-mul--1b6e965b660aa3c6fdbc704f.md) | 44 | `result-track:1b6e965b660aa3c6fdbc704fcffa544a4c65c9f13de941993b04c7632442b03b` |
| 6 | `theorem` | [operator_mul_star](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/operator-mul-star--56ce3253f46d088a466b553f.md) | 49 | `result-track:56ce3253f46d088a466b553f8519eb73072199fcbf3e4754a9d26a12813eb344` |
| 7 | `structure` | [UnitaryEquivalence](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/unitaryequivalence--4d4a463e4b00c34b88912aac.md) | 56 | `declaration-track:4d4a463e4b00c34b88912aac91a4f2633422d592706cfe3b2131f705fc5395d8` |
| 8 | `def` | [refl](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/refl--265322ab0febb77478a470c9.md) | 73 | `declaration-track:265322ab0febb77478a470c9464a43b48e40c52878c9f1b345cd48bc12bb11f4` |
| 9 | `def` | [symm](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/symm--7fd9162d3aa8a0ab2ab7a597.md) | 82 | `declaration-track:7fd9162d3aa8a0ab2ab7a597a7e8d13fd57301328dc61260945150e1e070f690` |
| 10 | `def` | [trans](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/trans--8fc9c93780369e35ba523d4e.md) | 118 | `declaration-track:8fc9c93780369e35ba523d4e7ee3ae380822a3ec2dcf379dcfb559ec09124838` |
| 11 | `def` | [scalarCycle](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/scalarcycle--1d4b2481a55665cf4e13b8ab.md) | 169 | `declaration-track:1d4b2481a55665cf4e13b8abdfab03195813cf53882ab93a9a70f88dd32225ec` |
| 12 | `theorem` | [scalarCycle_commutator](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/declarations/scalarcycle-commutator--a52d5ae7d9501bf0e0dcaf53.md) | 178 | `result-track:a52d5ae7d9501bf0e0dcaf5307b8f604f045c64b62e310f1bcd6e9dee9039b5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
