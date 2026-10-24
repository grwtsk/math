# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GzGp.Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d2f4b6cb9a60cd0a1a29c4c32fe8f2ed9d804b8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d2f4b6cb9a60cd0a1a29c4c32fe8f2ed9d804b8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Hypotheses` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_comp_neg_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/integral-comp-neg-real--4cafcb7115276f699303923f.md) | 38 | `result-track:4cafcb7115276f699303923f6124651206f916a00a469f81de07b73975f02602` |
| 2 | `lemma` | [phi_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/phi-neg--6401ae664ffd9cc6ec285af3.md) | 44 | `result-track:6401ae664ffd9cc6ec285af31c73079a581044d9286969b22c9d774dfb7ab49f` |
| 3 | `lemma` | [paperFT_fk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/paperft-fk--4515397865daf7b4d8fbac47.md) | 47 | `result-track:4515397865daf7b4d8fbac4726d80869c8218e5130677228f98acf460c7333b3` |
| 4 | `lemma` | [phiHat_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/phihat-conj--d57d609d8c198912ce62c0af.md) | 57 | `result-track:d57d609d8c198912ce62c0afc03899ff987597cc47e2acdcc81b2797370687f6` |
| 5 | `lemma` | [phiHat_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/phihat-ofreal--60488930525234369a0818db.md) | 73 | `result-track:60488930525234369a0818db348df6c6508ba764fff541792bf408a2b69f28ee` |
| 6 | `lemma` | [fk_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/fk-contdiff--2fd5cff24a5eeaba27d645f4.md) | 82 | `result-track:2fd5cff24a5eeaba27d645f45f394209ebb19a1c74e9a72d253bf8229e5ecb66` |
| 7 | `lemma` | [fk_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/fk-tsupport--d94d5b9924e65dcab495a48c.md) | 91 | `result-track:d94d5b9924e65dcab495a48c470ac26c55396157e2dddac17df4fa83ec704149` |
| 8 | `lemma` | [Gz_eq_W](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/gz-eq-w--9795d356cc43215fe66b2d42.md) | 98 | `result-track:9795d356cc43215fe66b2d4247f7016412098aa2b29bb6781b0e0e8887797197` |
| 9 | `lemma` | [EFrhs_eq_Gp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/efrhs-eq-gp--9258c5b671ede28098d5ae4e.md) | 108 | `result-track:9258c5b671ede28098d5ae4e097d85cc709a20a249ffaa82f22f682d02761e95` |
| 10 | `theorem` | [ZeroConfig.Gz_eq_Gp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/zeroconfig-gz-eq-gp--1fe543aaca6c97802078e637.md) | 124 | `result-track:1fe543aaca6c97802078e63708f3c28a50acece2a5091f01b82f3a640a713a33` |
| 11 | `theorem` | [ZeroConfig.summable_Gsummand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/declarations/zeroconfig-summable-gsummand--5994e8bb9ef5d82dbb6b2f71.md) | 136 | `result-track:5994e8bb9ef5d82dbb6b2f7116714d336ee875dc984b571fa2024b9b3b305ac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
