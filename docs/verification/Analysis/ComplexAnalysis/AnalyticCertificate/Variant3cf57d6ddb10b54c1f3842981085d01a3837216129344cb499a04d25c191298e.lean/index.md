# Verification target: GRWTSK.Analysis.ComplexAnalysis.AnalyticCertificate.Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9701dd440433145e254fbfcb8bf98f8ce13a10aa",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9701dd440433145e254fbfcb8bf98f8ce13a10aa`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalAnalyticCertificatePredicates](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/localanalyticcertificatepredicates--ceb86009196dbe15a9d59ca4.md) | 27 | `declaration-track:ceb86009196dbe15a9d59ca444f3a66f1963a6c353d363f3cf9fe18ef24cfa2d` |
| 2 | `def` | [IsLocalAnalyticCertificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/islocalanalyticcertificate--61ec35e4e57c251fec01b5cd.md) | 35 | `declaration-track:61ec35e4e57c251fec01b5cd03a03ba3fca0dd96a9e587e8b3290a0abdbc93f7` |
| 3 | `def` | [HasLocalAnalyticCertificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/haslocalanalyticcertificate--16331cc0ddd9e05a25359433.md) | 46 | `declaration-track:16331cc0ddd9e05a25359433d842f510360d69a8611f176a25b7173908d46b55` |
| 4 | `theorem` | [local_certificate_requires_membership](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/local-certificate-requires-membership--7273a92fa47f157a586d079c.md) | 53 | `result-track:7273a92fa47f157a586d079ce328c1a2ddd426d04a34631ed13f572bcb9e339d` |
| 5 | `theorem` | [local_certificate_requires_locality](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/local-certificate-requires-locality--40e557a24acdd0457b844200.md) | 61 | `result-track:40e557a24acdd0457b8442009108662f766c5e6434735b82e3d401ad7d2510ba` |
| 6 | `theorem` | [local_certificate_requires_representation](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/local-certificate-requires-representation--60dfd087553cd58c87a77555.md) | 69 | `result-track:60dfd087553cd58c87a77555419c1c0dacc61d1f5377498f84c39e0e8a3e54ec` |
| 7 | `theorem` | [local_certificate_requires_convergence](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/local-certificate-requires-convergence--f87ada94d916c8b82de8fe58.md) | 77 | `result-track:f87ada94d916c8b82de8fe582504d55f8c5cee0f92d0186dff188feac79153e9` |
| 8 | `theorem` | [local_certificate_requires_identification](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/local-certificate-requires-identification--23549f02a6acd6631a013317.md) | 85 | `result-track:23549f02a6acd6631a013317c12a3a620e9b96406b4c9daeb6a4b9dbc27b1446` |
| 9 | `structure` | [UniversalLocalAnalyticTheoremSchema](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/universallocalanalytictheoremschema--bce82c6c66a4cdeda997c4ad.md) | 97 | `declaration-track:bce82c6c66a4cdeda997c4adf881a458793275718e2e0de9924da1f7b2bcc1d5` |
| 10 | `theorem` | [universal_local_analytic_iff_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/universal-local-analytic-iff-certificate--2c3b54d0489dca6ff1182102.md) | 105 | `result-track:2c3b54d0489dca6ff11821020023151af2178bc50a76a6376e3d74d33ca42ffb` |
| 11 | `theorem` | [positive_local_certificate_implies_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/positive-local-certificate-implies-analytic--c428e27885bbfb93fe522f13.md) | 113 | `result-track:c428e27885bbfb93fe522f13ae638f3959a58bc08503e84c4bacbc8c3f836252` |
| 12 | `theorem` | [analytic_implies_positive_local_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/analytic-implies-positive-local-certificate--8bef9666b71f6ad83a29e5a5.md) | 120 | `result-track:8bef9666b71f6ad83a29e5a5190904a319ca1ac3b765f424405e3ccaef66ac37` |
| 13 | `structure` | [GlobalAnalyticCertificatePredicates](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/globalanalyticcertificatepredicates--d1278852015649b84789a08d.md) | 128 | `declaration-track:d1278852015649b84789a08dd404445955c7b0121a229182390faaf471bf5bab` |
| 14 | `structure` | [GlobalAnalyticCertificateData](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/globalanalyticcertificatedata--b833509088d47a80da3dcf3b.md) | 138 | `declaration-track:b833509088d47a80da3dcf3b45ff34ddd8038ac4b9a4760b8f5350fed41bd9c7` |
| 15 | `def` | [IsGlobalAnalyticCertificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/isglobalanalyticcertificate--583c5fb78a97caff9fd0d532.md) | 148 | `declaration-track:583c5fb78a97caff9fd0d532da04dfe4132398d4e4951001d5f65b9efa8ac988` |
| 16 | `def` | [HasGlobalAnalyticCertificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/hasglobalanalyticcertificate--9134f8f0c744d8f4fb0eeb8e.md) | 162 | `declaration-track:9134f8f0c744d8f4fb0eeb8efe804de407984d63ce5fd953b550e26d96c8ad02` |
| 17 | `theorem` | [global_certificate_requires_cover](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/global-certificate-requires-cover--6562ba327940143fa2d4ca8c.md) | 169 | `result-track:6562ba327940143fa2d4ca8cbdc92a0a4b7df3167958e22f87f9ab2b063593b7` |
| 18 | `theorem` | [global_certificate_requires_all_local_clauses](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/global-certificate-requires-all-local-clauses--ed5d8401532fbf6231af4e9f.md) | 177 | `result-track:ed5d8401532fbf6231af4e9f2eb0b4f436ae2326c1c3337a31dcc9b06e8853db` |
| 19 | `theorem` | [global_certificate_requires_locality](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/global-certificate-requires-locality--d111353c8da3397c486d46d4.md) | 188 | `result-track:d111353c8da3397c486d46d4fa3602ca090e75f5a4267a88cd89de5c654e50bf` |
| 20 | `theorem` | [global_certificate_requires_representation](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/global-certificate-requires-representation--eb2b862b2159d261ef812067.md) | 196 | `result-track:eb2b862b2159d261ef8120677c6917658e38e816a5bcb667bd057fd8b2f15bc2` |
| 21 | `theorem` | [global_certificate_requires_convergence](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/global-certificate-requires-convergence--07b6ac7b9d706c06acad25c1.md) | 204 | `result-track:07b6ac7b9d706c06acad25c12f841fa326fc2df9140d97b2af2ac5eb4f35cd7e` |
| 22 | `theorem` | [global_certificate_requires_identification](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/global-certificate-requires-identification--e71c64700c2a8f4fcf2e5b20.md) | 212 | `result-track:e71c64700c2a8f4fcf2e5b20920f62c985538abec9c46f7659a6a9c149db6a2d` |
| 23 | `theorem` | [global_certificate_requires_compatibility](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/global-certificate-requires-compatibility--be6345076870739e2a7bf434.md) | 220 | `result-track:be6345076870739e2a7bf434c438be3e8331c4929a17d3ad96ae2d1a8fd412e4` |
| 24 | `structure` | [UniversalGlobalAnalyticTheoremSchema](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/universalglobalanalytictheoremschema--075d2dc0a9f3e8d0c2541179.md) | 232 | `declaration-track:075d2dc0a9f3e8d0c25411790539ed9f972b3c63ae9bf93f07765c87ab11b116` |
| 25 | `theorem` | [universal_global_analytic_iff_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/universal-global-analytic-iff-certificate--835088f0bda6888097f1febb.md) | 240 | `result-track:835088f0bda6888097f1febb8431c01c6a4035051446e79734255313715e7bd7` |
| 26 | `theorem` | [positive_global_certificate_implies_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/positive-global-certificate-implies-analytic--11a520f1cb6fc0dc2fe7fa29.md) | 248 | `result-track:11a520f1cb6fc0dc2fe7fa29695a9a865d32863cf2f6f3751ba52c5c1c4e7b61` |
| 27 | `theorem` | [analytic_implies_positive_global_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e.lean/declarations/analytic-implies-positive-global-certificate--1075edd8316a9864b114e69f.md) | 255 | `result-track:1075edd8316a9864b114e69fbf0f7d8b046c989a8e5aa55a629937ace50dd08c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
