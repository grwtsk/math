# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BoundedContinuousFunction.Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7d14ea6430a48ae9d8081ef9d9317b79a732a45",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7d14ea6430a48ae9d8081ef9d9317b79a732a45`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [apply_le_nndist_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/apply-le-nndist-zero--7ba72acaf442efa1112c91c3.md) | 25 | `result-track:7ba72acaf442efa1112c91c30e52e6e5e268c054b6e245e7795a33f0750b2b16` |
| 2 | `lemma` | [lintegral_le_edist_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/lintegral-le-edist-mul--97430347d28f2eb0d5f436de.md) | 32 | `result-track:97430347d28f2eb0d5f436de3ecee44f1e8054c19ff608bfc9e734530cb0d41b` |
| 3 | `theorem` | [measurable_coe_ennreal_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/measurable-coe-ennreal-comp--6515ab71e1f16f1905bf046b.md) | 36 | `result-track:6515ab71e1f16f1905bf046b838060d74c5a5dcdf022ccdfbbc91ca22b1f2af0` |
| 4 | `theorem` | [lintegral_lt_top_of_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/lintegral-lt-top-of-nnreal--8e7cfa50f1176ffcb5eb9b67.md) | 42 | `result-track:8e7cfa50f1176ffcb5eb9b673a01ef04d72c824e95a9c97c2f2f17c0b24f8d5e` |
| 5 | `theorem` | [integrable_of_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/integrable-of-nnreal--0a16509d838e4f0dd7b36e16.md) | 48 | `result-track:0a16509d838e4f0dd7b36e16504a029c72ba713bcdcf0a80752439ebe7814566` |
| 6 | `theorem` | [integral_eq_integral_nnrealPart_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/integral-eq-integral-nnrealpart-sub--a616742709f92ae818278518.md) | 54 | `result-track:a616742709f92ae818278518e5f69fb31f94429f43b7cf3bb89bad94f9eb7f22` |
| 7 | `theorem` | [lintegral_of_real_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/lintegral-of-real-lt-top--c5436df665de9428cfdc2f38.md) | 60 | `result-track:c5436df665de9428cfdc2f383f919bee1036ddca12fb32e14c665d78a014ba7f` |
| 8 | `theorem` | [toReal_lintegral_coe_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/toreal-lintegral-coe-eq-integral--7bfc0d2982c94a4e91741d39.md) | 63 | `result-track:7bfc0d2982c94a4e91741d39eb41e7a98d0641f7ac81b864f21bb9313c363d2f` |
| 9 | `lemma` | [lintegral_nnnorm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/lintegral-nnnorm-le--c4033b3ca96e87d4e60bb76f.md) | 78 | `result-track:c4033b3ca96e87d4e60bb76f50b67c6057cf5a3db83fb4d4e28c3750f748a81c` |
| 10 | `lemma` | [integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/integrable--fd344aab74dbe4e7267f8af2.md) | 86 | `result-track:fd344aab74dbe4e7267f8af24fd33ca5931918f5c7c24d290f099687b7d780f6` |
| 11 | `lemma` | [norm_integral_le_mul_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/norm-integral-le-mul-norm--3ee1d82408dc28f02e18eaad.md) | 95 | `result-track:3ee1d82408dc28f02e18eaad134dd77b9700aba12687df0f7942a33b5472beed` |
| 12 | `lemma` | [norm_integral_le_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/norm-integral-le-norm--1fcc5d6c6abc18f8bff33821.md) | 104 | `result-track:1fcc5d6c6abc18f8bff33821af5fa67faf9f30f76215c2d8688a954ecf034195` |
| 13 | `lemma` | [isBounded_range_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/isbounded-range-integral--c7b4cc97dce0274f77dde375.md) | 109 | `result-track:c7b4cc97dce0274f77dde3756af7ea2af15b390b2c4176aa36edfbfc79cf03fa` |
| 14 | `lemma` | [integral_add_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/integral-add-const--11a8ec6dca0f6a9019d4a284.md) | 124 | `result-track:11a8ec6dca0f6a9019d4a2848367918729d9305bb72896c90e2dad6276f08a7d` |
| 15 | `lemma` | [integral_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/integral-const-sub--c99167c3dc614221d47ebcac.md) | 128 | `result-track:c99167c3dc614221d47ebcac16bdba36fdebf5ec83c3c3bc710d893ccf578f17` |
| 16 | `lemma` | [tendsto_integral_of_forall_limsup_integral_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/tendsto-integral-of-forall-limsup-integral-le-integral--e7ceedad0dba6cf01296429d.md) | 138 | `result-track:e7ceedad0dba6cf01296429d5c7ca40a19ca46fd19ee64538f6f6722708debb4` |
| 17 | `lemma` | [tendsto_integral_of_forall_integral_le_liminf_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variant135534aa40adf43b211c99b744d69589b03c2688f99e2b328b853b6d08989b54.lean/declarations/tendsto-integral-of-forall-integral-le-liminf-integral--306381727859ff8af0731d0c.md) | 160 | `result-track:306381727859ff8af0731d0c303f413794ac71b4daab283a9bf9a07c8137e612` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
