# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Sub.Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1301ca819ba6768513e4a05329c0013aecdf545",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1301ca819ba6768513e4a05329c0013aecdf545`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-sub--13db296bd16b1e605ecb628e.md) | 30 | `result-track:13db296bd16b1e605ecb628ed1e8e5133a9745e3294353b3620d1d4f245745e0` |
| 2 | `theorem` | [lintegral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-sub--4b3a0992cb2bd335c3655f68.md) | 36 | `result-track:4b3a0992cb2bd335c3655f6856e6f3cb8f446f6dea69ef88c8af5a3e64f8a27d` |
| 3 | `theorem` | [lintegral_sub_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-sub-le--2519a6eaf20e8d4bb66d48b6.md) | 40 | `result-track:2519a6eaf20e8d4bb66d48b605e64c1a003e1f34a5adc6203b462fbe4ac26922` |
| 4 | `theorem` | [lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-sub-le--3e888ece9662d6b5df8db9c0.md) | 50 | `result-track:3e888ece9662d6b5df8db9c06d1f4054460eee7540dd979bee47d80c1dd54dd6` |
| 5 | `theorem` | [lintegral_iInf_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-iinf-ae--646494a195337bd053224ddf.md) | 55 | `result-track:646494a195337bd053224ddf33c1945a0da5de365d1cc0a52f922343d511c6b3` |
| 6 | `theorem` | [lintegral_iInf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-iinf--81d3661b3fabc272b293bc88.md) | 86 | `result-track:81d3661b3fabc272b293bc881b17ef717035e730c9b426cb98d218ba88bc5d8e` |
| 7 | `theorem` | [lintegral_iInf'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-iinf--c660224d6c1dc23ae724f61c.md) | 90 | `result-track:c660224d6c1dc23ae724f61c4818c231fb5543130c5ff5c904d5c83920c58c6a` |
| 8 | `theorem` | [lintegral_iInf_directed_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-iinf-directed-of-measurable--d65884872b6ce835ee3c127e.md) | 111 | `result-track:d65884872b6ce835ee3c127e12550119a36880d9d98d3075b3646550694531c5` |
| 9 | `theorem` | [lintegral_tendsto_of_tendsto_of_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/lintegral-tendsto-of-tendsto-of-antitone--5d1338b7aa3d1c21f5dd15cb.md) | 137 | `result-track:5d1338b7aa3d1c21f5dd15cba67421263c4d7a3dc0dbf2a24b2ad7730b39560a` |
| 10 | `theorem` | [exists_setLIntegral_compl_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/exists-setlintegral-compl-lt--210889d83fc0fb6c16707255.md) | 162 | `result-track:210889d83fc0fb6c1670725551a0a7cc2579bde29eecec83f745cdd699a29fa3` |
| 11 | `theorem` | [exists_measurable_le_setLIntegral_eq_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/declarations/exists-measurable-le-setlintegral-eq-of-integrable--a6ba760309c0ab2b9ddff388.md) | 190 | `result-track:a6ba760309c0ab2b9ddff38892fd548ece2ac7680e32aa71a3a47dd3b6449fc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
