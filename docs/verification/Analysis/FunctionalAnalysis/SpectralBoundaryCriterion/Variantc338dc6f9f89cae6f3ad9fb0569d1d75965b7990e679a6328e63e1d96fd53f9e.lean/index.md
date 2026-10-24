# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralBoundaryCriterion.Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1de52bb070d7a1d2883d91700e7d70e203f54808",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1de52bb070d7a1d2883d91700e7d70e203f54808`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.IndexSpectralTraceIdentity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositivitySelfAdjointnessData](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean/declarations/positivityselfadjointnessdata--c9305f2a0d31af45b9ca91af.md) | 18 | `declaration-track:c9305f2a0d31af45b9ca91afaa93fa04db0911dbbbc48f77aac7c9a79a27543c` |
| 2 | `structure` | [SpectralBoundaryCriterion](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean/declarations/spectralboundarycriterion--742ff5e88d773d31320337b7.md) | 26 | `declaration-track:742ff5e88d773d31320337b759256f02c22da5881b20c7bdb5c1f1b0ceebd771` |
| 3 | `theorem` | [positivity_rules_out_offcritical_resonances](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean/declarations/positivity-rules-out-offcritical-resonances--d49495b5bae9c08d91fa90bf.md) | 33 | `result-track:d49495b5bae9c08d91fa90bf9e8e96ed2d7ca410f5ffde65ceadfa0b5285a325` |
| 4 | `theorem` | [spectral_boundary_alignment_if_supplied](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean/declarations/spectral-boundary-alignment-if-supplied--6e43c6eae3693f7e612e1c4b.md) | 38 | `result-track:6e43c6eae3693f7e612e1c4b2b4c6d02f54a70bc8b1cc2085cdebc6769e6c1b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
