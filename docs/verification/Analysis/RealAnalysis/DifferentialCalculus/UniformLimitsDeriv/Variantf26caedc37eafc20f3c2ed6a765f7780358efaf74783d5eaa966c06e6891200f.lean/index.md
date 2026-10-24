# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UniformLimitsDeriv.Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "586af740a70451f1d7493a9fc68b7999c4d729b8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `586af740a70451f1d7493a9fc68b7999c4d729b8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RCLike` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Curry` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniformCauchySeqOnFilter_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/uniformcauchyseqonfilter-of-fderiv--4b8af20eeb551886e406850c.md) | 111 | `result-track:4b8af20eeb551886e406850c86e06c9544bb0e316930797839241bbb5d362aed` |
| 2 | `theorem` | [uniformCauchySeqOn_ball_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/uniformcauchyseqon-ball-of-fderiv--0080078ddf410dc17bd69604.md) | 175 | `result-track:0080078ddf410dc17bd696046c14fc9169dde4b954962693d1486d69bb783793` |
| 3 | `theorem` | [cauchy_map_of_uniformCauchySeqOn_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/cauchy-map-of-uniformcauchyseqon-fderiv--a24878ff0e5a0867de3fd211.md) | 225 | `result-track:a24878ff0e5a0867de3fd2110747ceec5cd6a5303130dbc153533d79641ebc22` |
| 4 | `theorem` | [difference_quotients_converge_uniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/difference-quotients-converge-uniformly--6e0f732d06f22d140484d9d9.md) | 255 | `result-track:6e0f732d06f22d140484d9d92a9989f3bf9cb0c8bebd56d50bad2393abc637c4` |
| 5 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasfderivat-of-tendstouniformlyonfilter--748f78e5fc5afcc97514de0c.md) | 305 | `result-track:748f78e5fc5afcc97514de0c3fb72271dc774ba3f41870f88238e2ffde3b84bb` |
| 6 | `theorem` | [hasFDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasfderivat-of-tendstolocallyuniformlyon--8e5f272a46dbc8e2012a23d8.md) | 392 | `result-track:8e5f272a46dbc8e2012a23d80e27ca33af24fe4b7bba0ec970c68227a8e60fe9` |
| 7 | `theorem` | [hasFDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasfderivat-of-tendsto-locally-uniformly-on--a24d0b71c1f82d8a27e360b0.md) | 406 | `result-track:a24d0b71c1f82d8a27e360b06bfa484f5769151dac5344a4735b83babd168543` |
| 8 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasfderivat-of-tendstouniformlyon--af5cc743af1f658a713805fc.md) | 415 | `result-track:af5cc743af1f658a713805fca105e17d938d05054c18cc7e1558f509605baffe` |
| 9 | `theorem` | [hasFDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasfderivat-of-tendstouniformly--69bd1af88135234dc07efb97.md) | 424 | `result-track:69bd1af88135234dc07efb9757f0863fc3bffcbb0991bc9b951454408d067a05` |
| 10 | `theorem` | [UniformCauchySeqOnFilter.one_smulRight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/uniformcauchyseqonfilter-one-smulright--0abbf254e053c80c80c4ea2e.md) | 447 | `result-track:0abbf254e053c80c80c4ea2ed571353f439c3a8f7ae7e8acde4828340f2db71d` |
| 11 | `theorem` | [uniformCauchySeqOnFilter_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/uniformcauchyseqonfilter-of-deriv--bb2192b4b5443d355bbc56a1.md) | 470 | `result-track:bb2192b4b5443d355bbc56a1597bc3ae07e3a5b0b390c2b4e883c637221a2768` |
| 12 | `theorem` | [uniformCauchySeqOn_ball_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/uniformcauchyseqon-ball-of-deriv--ff33e64347f8685e845abc7d.md) | 476 | `result-track:ff33e64347f8685e845abc7dabb7f47f48d85a20b77fab0574214858b23be353` |
| 13 | `theorem` | [hasDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasderivat-of-tendstouniformlyonfilter--ba018e9ab79a928aaedf989a.md) | 488 | `result-track:ba018e9ab79a928aaedf989aff54df6c71f06d4847626fd6979edf1a80fd3598` |
| 14 | `theorem` | [hasDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasderivat-of-tendstolocallyuniformlyon--b6c79b9d33f8b2e1f115fded.md) | 516 | `result-track:b6c79b9d33f8b2e1f115fded9c7ef7dbcb617d76a105929aa59055b689d892a9` |
| 15 | `theorem` | [hasDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasderivat-of-tendsto-locally-uniformly-on--cb30f3e4b0ed0a214a0bde6c.md) | 529 | `result-track:cb30f3e4b0ed0a214a0bde6c26faba45c9ca81c3478b30e735f5d82b36d35d22` |
| 16 | `theorem` | [hasDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasderivat-of-tendstouniformlyon--eece5a9f956924d8b4827801.md) | 536 | `result-track:eece5a9f956924d8b48278019f7fd6ed1580d238725d7314603102163cb663a1` |
| 17 | `theorem` | [hasDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf26caedc37eafc20f3c2ed6a765f7780358efaf74783d5eaa966c06e6891200f.lean/declarations/hasderivat-of-tendstouniformly--5f292649b3a11f88ef87242b.md) | 543 | `result-track:5f292649b3a11f88ef87242b3bb507c3a224340bb6d69664803f5df3746f45bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
