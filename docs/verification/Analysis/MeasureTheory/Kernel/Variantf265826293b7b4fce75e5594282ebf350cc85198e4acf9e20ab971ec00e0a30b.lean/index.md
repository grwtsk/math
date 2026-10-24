# Verification target: GRWTSK.Analysis.MeasureTheory.Kernel.Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9681c44c5313a83ca5fbf90ea35f608a05f464c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9681c44c5313a83ca5fbf90ea35f608a05f464c`.

Source path: `GRWTSK/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SpectralProof.Core.FourierDecay` — import line 1; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.Weight` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpLog` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Kt](../../../../../mathematics/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean/declarations/kt--56a0edb8f500e273afdca352.md) | 21 | `declaration-track:56a0edb8f500e273afdca35207ff90a952ad8e3373fabae7c769c75f222cfe7c` |
| 2 | `def` | [KtWeighted](../../../../../mathematics/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean/declarations/ktweighted--b2458667ca1f3b50de5006f5.md) | 31 | `declaration-track:b2458667ca1f3b50de5006f5f9a4457778493075f709dcfe0f14e5c814ce21e8` |
| 3 | `lemma` | [measurable_KtWeighted](../../../../../mathematics/Analysis/MeasureTheory/Kernel/Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b.lean/declarations/measurable-ktweighted--471b611baca2e026dd19059f.md) | 38 | `result-track:471b611baca2e026dd19059f19855259baa193259490ea32a7e254043660a95a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
