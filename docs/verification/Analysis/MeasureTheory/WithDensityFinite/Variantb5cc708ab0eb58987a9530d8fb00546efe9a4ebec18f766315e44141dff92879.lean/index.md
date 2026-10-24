# Verification target: GRWTSK.Analysis.MeasureTheory.WithDensityFinite.Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ce8573454162aff7f65e321cde30df684f89465",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ce8573454162aff7f65e321cde30df684f89465`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.toFiniteAux](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/measure-tofiniteaux--a6577e71d44f851496eb979f.md) | 58 | `declaration-track:a6577e71d44f851496eb979f0e81b84e8d908b27ab0abfa8bebc22511cfde8b3` |
| 2 | `def` | [Measure.toFinite](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/measure-tofinite--1176a9b84541571844272140.md) | 67 | `declaration-track:1176a9b84541571844272140bb1a27ca161ec339d7aa92d5e8dfb19056563376` |
| 3 | `lemma` | [ae_toFiniteAux](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/ae-tofiniteaux--94172d60e9b6a107f333fae5.md) | 71 | `result-track:94172d60e9b6a107f333fae577a1d0beff11ca3f0cbf3741343d3d94cbfa3769` |
| 4 | `theorem` | [isFiniteMeasure_toFiniteAux](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/isfinitemeasure-tofiniteaux--bcdf07dadfd1dd6d01948307.md) | 79 | `result-track:bcdf07dadfd1dd6d019483074e59296ec79f20543b3fad1dfe9183f67244677e` |
| 5 | `lemma` | [ae_toFinite](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/ae-tofinite--4134a0fbc7b52eeefe5a40fd.md) | 86 | `result-track:4134a0fbc7b52eeefe5a40fd8a81e70bceb9c5cfa086cf7767fdf030bfacde1f` |
| 6 | `lemma` | [toFinite_apply_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/tofinite-apply-eq-zero-iff--1e8334992dfb8739b43059fb.md) | 90 | `result-track:1e8334992dfb8739b43059fba6dc7194511366e1afa048b590a0d45000133bf9` |
| 7 | `lemma` | [toFinite_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/tofinite-eq-zero-iff--8cc65a16d3dcf8c2f628bc07.md) | 94 | `result-track:8cc65a16d3dcf8c2f628bc07b73696e9026c12dd22b7bc1eafbfb4a18675eee5` |
| 8 | `lemma` | [toFinite_zero](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/tofinite-zero--2c8d12a78151456e7e388a41.md) | 98 | `result-track:2c8d12a78151456e7e388a412ee835316b20b8a742b0f4fa71de09d86a0d6576` |
| 9 | `lemma` | [toFinite_eq_self](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/tofinite-eq-self--29f5190a6be880e070b3503c.md) | 100 | `result-track:29f5190a6be880e070b3503c45a6ef26e2c467de3920d0fd1f33b9c4f0d704ea` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/instance--cf507b08807e35459a126e12.md) | 104 | `declaration-track:cf507b08807e35459a126e12e21e6646d00ad1b21059d59fbc329f34aaf37afa` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/instance--22a1ab4e3fc6422a6b2cefea.md) | 108 | `declaration-track:22a1ab4e3fc6422a6b2cefea7afcd104f22822def5f8ffe912cafc3fb680c725` |
| 12 | `lemma` | [absolutelyContinuous_toFinite](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/absolutelycontinuous-tofinite--bc1762f2ddc11838b907b6cf.md) | 112 | `result-track:bc1762f2ddc11838b907b6cf46fa2df7db88eee2782353362339d5b37a5507e9` |
| 13 | `lemma` | [sfiniteSeq_absolutelyContinuous_toFinite](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/sfiniteseq-absolutelycontinuous-tofinite--0958275525acaf2afa599618.md) | 115 | `result-track:0958275525acaf2afa59961841f934f186e545fc715dc8439ae5e1d869a38219` |
| 14 | `lemma` | [toFinite_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/tofinite-absolutelycontinuous--c41c57a6a26f70c7f9667834.md) | 119 | `result-track:c41c57a6a26f70c7f96678344d2e4102dd81e2407b0d9eec4fb85722763f4897` |
| 15 | `lemma` | [restrict_compl_sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/WithDensityFinite/Variantb5cc708ab0eb58987a9530d8fb00546efe9a4ebec18f766315e44141dff92879.lean/declarations/restrict-compl-sigmafiniteset--8378a2028aad06f5dcc9a9b0.md) | 122 | `result-track:8378a2028aad06f5dcc9a9b03faf21d948365dad093462517775515289d4bf3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
