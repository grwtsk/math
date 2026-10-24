# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBumpMomentsStatements.Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bc5f240a57343122457cafb19b8df17baba6012",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bc5f240a57343122457cafb19b8df17baba6012`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/bumpmoment--cd958860c6be9f9dafe124f6.md) | 21 | `declaration-track:cd958860c6be9f9dafe124f61b93a03fccf2fdc0abd32113e13d2c22ade0bfd8` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/bumpmoment-intervalintegrable--f89a289dc27aa76f339d756a.md) | 26 | `result-track:f89a289dc27aa76f339d756ac34eb5f79c646fbfa00fcefa967dc96bbc2aec13` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/bumpmoment-zero-eq-source--9217fe599b2f007a64ea86d6.md) | 33 | `result-track:9217fe599b2f007a64ea86d667c9dd3ad57d3342631f407a41563036d66c408a` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/bumpmoment-zero-zero--c199931c6afcabda5a545b2d.md) | 46 | `result-track:c199931c6afcabda5a545b2d1f035457ab48b7c004bb414f2b2f3392a9c1eb0c` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/bumpflux-hasderivat--9fc75b1a5b44998bb90148ce.md) | 56 | `result-track:9fc75b1a5b44998bb90148ce6d3cb17905d500c88f26984052214fd06ef20354` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/bumpmoment-equation--dfb672a0ea075c0a446333ac.md) | 67 | `result-track:dfb672a0ea075c0a446333acd407a1e0c00f9b08495641fe61b605c6b6736183` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/re-eq-zero-of-weighted-energy--0fdeba34505afb56064726ff.md) | 102 | `result-track:0fdeba34505afb56064726ffeb1787dd91c4bfda02666126423aa6c53f01162d` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/example--4eb5092ce23253d178403570.md) | 126 | `declaration-track:4eb5092ce23253d1784035708df2338ad72e0a152ed1b7b88e7475d8fbb16730` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/example--2c9a11ce5d43652c8828f86f.md) | 129 | `declaration-track:2c9a11ce5d43652c8828f86f86161691effb885b7e8c691e7a2d1fe138093cdb` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/example--1ac37d6952185402bc288f5c.md) | 133 | `declaration-track:1ac37d6952185402bc288f5cc95d2cf1c5caf11c7e5adaff2245d4dac94404a2` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/example--2971730f0f545558c88aee4b.md) | 137 | `declaration-track:2971730f0f545558c88aee4b6417504c717d10a3c11e6fdf18e2eada49d51886` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/example--3f4b6c034766e51e31d0d480.md) | 139 | `declaration-track:3f4b6c034766e51e31d0d48009de5ab2ac118c4d5428336c75bd03697b93a376` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/example--205fee4fb534cf9891c5b8f8.md) | 143 | `declaration-track:205fee4fb534cf9891c5b8f8222b6fb22d73fa7cb5295b2ca267104cd7c81d14` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/example--4cf7561c7c0eb14037a976bd.md) | 147 | `declaration-track:4cf7561c7c0eb14037a976bd4bd27fce65b8f05f871fc668ddba808676ebaa1f` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1.lean/declarations/example--592af794d9b83b7a44e3d39f.md) | 149 | `declaration-track:592af794d9b83b7a44e3d39f4523802e3ff6e4c6ec86cb7f2697cea5ad8c94c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
