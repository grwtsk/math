# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt02.Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddf8a6470ad34ed7aec34d8f054f38261675c661",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddf8a6470ad34ed7aec34d8f054f38261675c661`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DensityDecoder` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeAtoms](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primeatoms--19dc64c13805a1c75f4091e4.md) | 18 | `declaration-track:19dc64c13805a1c75f4091e4156dc3fec3ae3015607ba2a283c45fa83845a09b` |
| 2 | `def` | [primeCorrected](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primecorrected--4b135c67ae04542b81861260.md) | 22 | `declaration-track:4b135c67ae04542b818612607efbfbe3a052a89650ac59bc2a9b35616f919471` |
| 3 | `theorem` | [primeCorrected_at_atom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primecorrected-at-atom--8decf0cf3a42a7262a01b1ec.md) | 25 | `result-track:8decf0cf3a42a7262a01b1ec30ac5aee6804996c7a5f5203e753d00fa09c2c66` |
| 4 | `theorem` | [primeCorrected_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primecorrected-ae--69ac5626e1e430da26ac42e2.md) | 32 | `result-track:69ac5626e1e430da26ac42e209940be59e99a242027ffd2d881384c000a957a9` |
| 5 | `theorem` | [primeCorrected_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primecorrected-integrable--809f34199468c3317e4278ba.md) | 38 | `result-track:809f34199468c3317e4278ba6e6a984e493bd5b104a594accc928afaa020f901` |
| 6 | `theorem` | [primeCorrected_primeLogSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primecorrected-primelogsum--0461c2b862fe7813a88cec2d.md) | 42 | `result-track:0461c2b862fe7813a88cec2d836dfb5d11815b33d5a30816de7b40dbb3893402` |
| 7 | `theorem` | [primeCorrected_density_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primecorrected-density-integral--a9128a1d3bae0d764ac757f8.md) | 50 | `result-track:a9128a1d3bae0d764ac757f8711d7d6db62b64c9ac2bbe822cadb909565e7121` |
| 8 | `theorem` | [primeCorrected_readout_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primecorrected-readout-error--43d5040038e06a55dacd7761.md) | 59 | `result-track:43d5040038e06a55dacd7761c406d7c9a4eebdbcb10eae97b3d6265b1633a30e` |
| 9 | `theorem` | [primeCorrected_readout_increment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primecorrected-readout-increment--3337889819cb1d583ffbe09d.md) | 77 | `result-track:3337889819cb1d583ffbe09d0c277c51620e29ed08e59c3b3145b85a379779cb` |
| 10 | `def` | [primeResolutionCount](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primeresolutioncount--7bcddad43e2c3db1c7aa024a.md) | 88 | `declaration-track:7bcddad43e2c3db1c7aa024ae46407205dd47183988d57f5acf2aec5be355828` |
| 11 | `theorem` | [primeResolutionCount_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primeresolutioncount-pos--66742eb2e3a6dc54bd99978a.md) | 91 | `result-track:66742eb2e3a6dc54bd99978acd2bd82b226e8db466eae11f8a13f4794900d0bd` |
| 12 | `theorem` | [primeResolutionCount_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/primeresolutioncount-monotone--e157a664f6955c855bc4c82e.md) | 94 | `result-track:e157a664f6955c855bc4c82e9c6cabad2a8dc6f4caea740aaaec472feacb6da9` |
| 13 | `theorem` | [prime_resolution_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/prime-resolution-budget--cde4cb605130a2d4994914ae.md) | 105 | `result-track:cde4cb605130a2d4994914ae3c613f93d9d3986646313c7081ae3a7e903a841c` |
| 14 | `theorem` | [prime_resolving_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/prime-resolving-error--6067d2a1ef4f25d8b1b8d9d1.md) | 127 | `result-track:6067d2a1ef4f25d8b1b8d9d15a7dc3da4b72c31dad7648936c27e557267b34e6` |
| 15 | `theorem` | [prime_decoder_tail_transfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/declarations/prime-decoder-tail-transfer--9edd9edc7d976b7d33abd9a2.md) | 160 | `result-track:9edd9edc7d976b7d33abd9a2cee4e26d93fb49fe829a0965d0e320fe6960d3b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
