# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralMeasure.Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c56188d18336ea01e9767c60824c6f5b5ea2bc7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralMeasure/Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMeasure/Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMeasure/Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c56188d18336ea01e9767c60824c6f5b5ea2bc7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralMeasure/Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralMeasure/Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.TraceClass` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hilbert.SpectralMeasure](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMeasure/Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798.lean/declarations/hilbert-spectralmeasure--8a7148f0f2b262027cae68e5.md) | 32 | `declaration-track:8a7148f0f2b262027cae68e58ea37372e8f4aad1b540b73c34b000505357ee9a` |
| 2 | `structure` | [Hilbert.SpectralTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMeasure/Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798.lean/declarations/hilbert-spectraltheoremcertificate--94e26027fbe8238a205ef163.md) | 40 | `declaration-track:94e26027fbe8238a205ef1630c285285c6072276bae6e6f3e7918b0f6c1b6d14` |
| 3 | `theorem` | [Hilbert.spectralTheorem_certificate_applies](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralMeasure/Variant80f9d41077a09c610a8dd9dae126ee1bfe7e610878f06df1ec622d2ae231c798.lean/declarations/hilbert-spectraltheorem-certificate-applies--3d4b4daa4ddee66340a506ff.md) | 49 | `result-track:3d4b4daa4ddee66340a506ffe1287f76dc51a9cc91861446b972afafdff66777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
