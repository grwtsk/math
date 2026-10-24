# Verification target: GRWTSK.Analysis.MeasureTheory.Lp.Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c3638bb8fa20d0b1ed8b53a0c85eb87aab84703",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c3638bb8fa20d0b1ed8b53a0c85eb87aab84703`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MemLp.finStronglyMeasurable_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean/declarations/memlp-finstronglymeasurable-of-stronglymeasurable--b8769196e80107503c021e12.md) | 47 | `result-track:b8769196e80107503c021e12134913ba6a34656996ff371480164f2579e79b30` |
| 2 | `theorem` | [MemLp.aefinStronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean/declarations/memlp-aefinstronglymeasurable--09af6161a7ae356452085641.md) | 67 | `result-track:09af6161a7ae3564520856412f0a5589bb367956e0188533652befacaa327b92` |
| 3 | `theorem` | [Integrable.aefinStronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean/declarations/integrable-aefinstronglymeasurable--45a9b80755d3b5b89468beb9.md) | 78 | `result-track:45a9b80755d3b5b89468beb9986e4cc37fdfad604c823fd2e6299961995322db` |
| 4 | `theorem` | [Lp.finStronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant2850d87693b2bd7083a515d5095eab644af8ac1b696179e23aa0cc64690ac9d6.lean/declarations/lp-finstronglymeasurable--06322db91bdfef72172a38ba.md) | 81 | `result-track:06322db91bdfef72172a38ba692df41f6177b0f38ad7f9d1a794c9095384cefc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
