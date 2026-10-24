# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralMap.Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc4a63335ac39199018c81836576fe3d3f76c15",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc4a63335ac39199018c81836576fe3d3f76c15`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SpectralProof.Operators.LsymPi` — import line 1; external provider; requires a separately pinned dependency.
- `SpectralProof.Determinants.ZetaDet` — import line 2; external provider; requires a separately pinned dependency.
- `SpectralProof.Determinants.CanonicalId` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralMap](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/declarations/spectralmap--c8134a05ed69510eb2fbac19.md) | 20 | `declaration-track:c8134a05ed69510eb2fbac1954c9f964a28c9ac7162020b1a0d46c7258ff7025` |
| 2 | `def` | [inverseSpectralMap](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/declarations/inversespectralmap--d2a19f6aa0235f2829bd33a3.md) | 29 | `declaration-track:d2a19f6aa0235f2829bd33a30d3fcaab3c44d041c51c0e56e6075bd7edebdee1` |
| 3 | `lemma` | [spectralMap_inverse](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/declarations/spectralmap-inverse--ed549ac283c521c2f18ef647.md) | 32 | `result-track:ed549ac283c521c2f18ef647936ae914c6652dea349a1560db818072e72f1d65` |
| 4 | `lemma` | [inverseMap_spectralMap](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/declarations/inversemap-spectralmap--09d42b9cf177ce70f82d7ca8.md) | 38 | `result-track:09d42b9cf177ce70f82d7ca810201751cb9b629390a9c979c5196ef64470ae90` |
| 5 | `lemma` | [zero_maps_to_spectrum](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/declarations/zero-maps-to-spectrum--b9a8c7bee8ac2b8a2cbf8f47.md) | 48 | `result-track:b9a8c7bee8ac2b8a2cbf8f473164109b18965eeb9be3e52562f582bb8bfa2a37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
