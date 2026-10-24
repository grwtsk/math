# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompensatedLaplaceCosine.Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05a7d143364885ccdbc0cdd6a62e4d2cbab01928",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05a7d143364885ccdbc0cdd6a62e4d2cbab01928`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.Analysis.ReciprocalKernel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [damped_cosine_eq_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/damped-cosine-eq-real--e8db3599318a8a3b014bdd26.md) | 26 | `result-track:e8db3599318a8a3b014bdd2620af5222944ca4420301ed4e1f23dcf46e095b94` |
| 2 | `theorem` | [damped_cosine_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/damped-cosine-integrable--80f0388dbe92f9dba1ae61b2.md) | 32 | `result-track:80f0388dbe92f9dba1ae61b26a216dc21616cce2bbdeb8bfd77bcf367ddd89f2` |
| 3 | `theorem` | [damped_cosine_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/damped-cosine-integral--3e494a5c0b161e0333ee47b1.md) | 38 | `result-track:3e494a5c0b161e0333ee47b16e7439e3871e4f0f0f222873ad8aaa35ff0e76ee` |
| 4 | `theorem` | [compensated_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/compensated-integrable--6d5a880bf8a84ac657fa4bd3.md) | 47 | `result-track:6d5a880bf8a84ac657fa4bd37339d2b5a64f72682c552bf795028698444eb7e7` |
| 5 | `theorem` | [compensated_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/compensated-nonneg--b13948a63168538e584bc524.md) | 56 | `result-track:b13948a63168538e584bc524dcd7639296f70ce8b7dbed570fef74c2270e786d` |
| 6 | `theorem` | [compensated_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/compensated-integral--533b579668be0c6b83634201.md) | 60 | `result-track:533b579668be0c6b836342015ad51d2da617c2a7b6b3b13a550b971db5d4e130` |
| 7 | `theorem` | [quarter_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/quarter-kernel-integral--7894d21d8801cb757fdfca34.md) | 75 | `result-track:7894d21d8801cb757fdfca344a4515dc4be633610c726761b513d95bd654856b` |
| 8 | `theorem` | [quarter_compensated_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/quarter-compensated-integrable--acfcc0c70e602e0952b087e9.md) | 86 | `result-track:acfcc0c70e602e0952b087e96024b322d494c1d025f112cf69d759220f416407` |
| 9 | `theorem` | [actual_multiplier_hasSum_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/declarations/actual-multiplier-hassum-integrals--620d3b36e2ec22f01289296f.md) | 93 | `result-track:620d3b36e2ec22f01289296f5571ddbf6baadc2c1db4a1f2dd0aef41265bc921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
