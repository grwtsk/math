# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingAudit.Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11295f9d8e7d8601b849859be81f6a5c881f5865",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11295f9d8e7d8601b849859be81f6a5c881f5865`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothingBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothingbump--382b77de2f1724dfa62b1be8.md) | 23 | `declaration-track:382b77de2f1724dfa62b1be899697c8f9054097f11ec859c6e03876472c460bf` |
| 2 | `def` | [mollifier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier--b058dd3a7eea8d325bc705dd.md) | 30 | `declaration-track:b058dd3a7eea8d325bc705dd8e04411a3bf04bf1403e53a956cb12f51a6e3e33` |
| 3 | `theorem` | [mollifier_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier-nonneg--9b7f75aca7d1962504285886.md) | 34 | `result-track:9b7f75aca7d1962504285886e3dd1343289589e392aafb56623de271ffdeb86a` |
| 4 | `theorem` | [mollifier_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier-even--9d7470c7a8acecdca1dac933.md) | 39 | `result-track:9d7470c7a8acecdca1dac933d1b0278b16e5e01de441552de309435bf0f4f18b` |
| 5 | `theorem` | [mollifier_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier-contdiff--35c4cbb7e2b926c6ca55d3b7.md) | 43 | `result-track:35c4cbb7e2b926c6ca55d3b7d7afef2e913d121b9a76290dfff910792fe3a41f` |
| 6 | `theorem` | [mollifier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier-integrable--5be5108e9e3ab7a03edb336a.md) | 48 | `result-track:5be5108e9e3ab7a03edb336af12879ac196d6226428198c5230e69665ccf2e9c` |
| 7 | `theorem` | [mollifier_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier-integral--9c1b7196c660048a2ad9657f.md) | 53 | `result-track:9c1b7196c660048a2ad9657f24e8fa902202e702a283828cef6c5a21559a71cc` |
| 8 | `theorem` | [mollifier_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier-support--3f65d542bd47d55212e1bba2.md) | 58 | `result-track:3f65d542bd47d55212e1bba211ecf454f3e1bb7041547a24404a9d233f35353e` |
| 9 | `theorem` | [mollifier_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier-tsupport--fd2aad6e82bd89a3e687edf4.md) | 64 | `result-track:fd2aad6e82bd89a3e687edf4ba2c5e67acadb743146538ac124eaa7fe593f1c4` |
| 10 | `theorem` | [mollifier_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/mollifier-hascompactsupport--c1271692fd0803a8d38e3ea4.md) | 70 | `result-track:c1271692fd0803a8d38e3ea47819c417b4af702f2d1b8d6408368022d3019921` |
| 11 | `def` | [smoothedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest--bc1270eeaffd7ceafe439ec8.md) | 75 | `declaration-track:bc1270eeaffd7ceafe439ec83bed59ca1ded79cbecbe1bda6c8101f3ea73716f` |
| 12 | `theorem` | [smoothedTest_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-eq-integral--7af43fecb02b726dacd2cd84.md) | 79 | `result-track:7af43fecb02b726dacd2cd84e97cf704ff2a58b5d1af99ff7306ad4f654fc487` |
| 13 | `theorem` | [smoothing_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothing-integrand-integrable--7eed13f43a6e2d6547d4e55d.md) | 84 | `result-track:7eed13f43a6e2d6547d4e55de13524a1c19e12d3de3073583af6d9e45292f20a` |
| 14 | `theorem` | [smoothedTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-contdiff--ba39e065f56ffb55bd87e76a.md) | 91 | `result-track:ba39e065f56ffb55bd87e76a1944c03277aaa5df46be8818fc829224db05765f` |
| 15 | `theorem` | [smoothedTest_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-even--9804e2ebf5bbe6df5c8d9b62.md) | 98 | `result-track:9804e2ebf5bbe6df5c8d9b62d96fc944c7fb76020249d5faf85d6d62f7d2327f` |
| 16 | `theorem` | [smoothedTest_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-support-subset--0c88ad461c6d1db11d2a3558.md) | 107 | `result-track:0c88ad461c6d1db11d2a3558a64b7925a0af72919ab83fe1014c138859ba1fc3` |
| 17 | `theorem` | [smoothedTest_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-tsupport-subset--90007ab800fab7f6fec03170.md) | 117 | `result-track:90007ab800fab7f6fec03170eed6f271a7754148b73d267ca1f4ca67596ff9d3` |
| 18 | `theorem` | [smoothedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-hascompactsupport--4a245a942733b45eb0a505b9.md) | 122 | `result-track:4a245a942733b45eb0a505b94de4bd5328c7621fccef46f34926ed4a97c170ac` |
| 19 | `theorem` | [smoothedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-integrable--62e56fadc1441f86c4c3cdc8.md) | 127 | `result-track:62e56fadc1441f86c4c3cdc855f936aea79702958d871a38211c7d280f568916` |
| 20 | `theorem` | [smoothedTest_tsupport_subset_common](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-tsupport-subset-common--fd22a79f71db72985dea620a.md) | 133 | `result-track:fd22a79f71db72985dea620aa520d42d789684f391dab94d25f5485e3e0bd748` |
| 21 | `theorem` | [smoothedTest_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/declarations/smoothedtest-tendsto--3e24931a53e0685417c83508.md) | 141 | `result-track:3e24931a53e0685417c8350871a1f25fae4d591d46bda0de41574b6c36e8f692` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
