# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OpenArithmeticSuppliers.Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ea2f827e2f71e292715088653753b385aba3847",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ea2f827e2f71e292715088653753b385aba3847`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.ArithmeticPrimitive` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.ZeroStripConsumer` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.CausalRecords` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProblemP](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/problemp--2019798f8419b5f8dc1a3ce4.md) | 30 | `declaration-track:2019798f8419b5f8dc1a3ce4ecf1a24a59622d029f4ac3a850012dad86e94b74` |
| 2 | `def` | [SignedMertensSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/signedmertenssupplier--11c4607d3411364f85415e54.md) | 33 | `declaration-track:11c4607d3411364f85415e54ceba69059947d712d636927e4cb593741cbf31da` |
| 3 | `theorem` | [problemP_iff_signedMertensSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/problemp-iff-signedmertenssupplier--e348337ecb442892914a7e7b.md) | 35 | `result-track:e348337ecb442892914a7e7bb28c18503a5a58b9006652a244e059e98b2e549a` |
| 4 | `def` | [ordinaryPrimeCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/ordinaryprimecoefficient--f0dc3d8295e5319d93658dd0.md) | 43 | `declaration-track:f0dc3d8295e5319d93658dd0d3c62dfb6c2ac50ab7cf1a840b5c740b5b02f30b` |
| 5 | `theorem` | [ordinaryPrimeCoefficient_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/ordinaryprimecoefficient-one--205381b6d4b1655f4eb3ca2f.md) | 46 | `result-track:205381b6d4b1655f4eb3ca2f7506906325abf4842dcc5d59e2413d0ea730dfce` |
| 6 | `theorem` | [ordinaryPrimeCoefficient_at_source_index](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/ordinaryprimecoefficient-at-source-index--412bd27efd5158c8a4f39825.md) | 49 | `result-track:412bd27efd5158c8a4f39825bb7698cb648970708be14a359f85713992147c51` |
| 7 | `def` | [ordinaryPrimePrimitive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/ordinaryprimeprimitive--6a63423ab007c8dc47074276.md) | 57 | `declaration-track:6a63423ab007c8dc47074276c97d428918df359d024e7c77f023f2ff47fe7886` |
| 8 | `def` | [primePositiveDebt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/primepositivedebt--84dce5e12dc4332d230fe731.md) | 64 | `declaration-track:84dce5e12dc4332d230fe73165c521a17684f5d546fc37d78e52829e98326a0a` |
| 9 | `def` | [AccordionReserveSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/accordionreservesupplier--3b616c74410db8dd19512bc5.md) | 70 | `declaration-track:3b616c74410db8dd19512bc5082b1296353173ea48a5e860bfbb9fa327331254` |
| 10 | `def` | [OrdinaryPrimeEventualSignSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/ordinaryprimeeventualsignsupplier--cf148b57fbc060054c44258a.md) | 75 | `declaration-track:cf148b57fbc060054c44258aafbf57aa365b6c4ecdc268719d34ef098f312118` |
| 11 | `def` | [primeRecordLevel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/primerecordlevel--7d256c131fc043a0c13b4199.md) | 79 | `declaration-track:7d256c131fc043a0c13b4199dcdf648489251bd932eb455f872949fac467b79d` |
| 12 | `def` | [primeRecordIncrement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/primerecordincrement--e17a0a751a504ae2af6bb713.md) | 89 | `declaration-track:e17a0a751a504ae2af6bb713eaa290aac996462ed41b7ab22b5d547ec1716e8f` |
| 13 | `def` | [NativeRecordEnergySupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/nativerecordenergysupplier--aba0718868a0214e6b0b18d0.md) | 94 | `declaration-track:aba0718868a0214e6b0b18d0bcb1ce9412431e2e3e1166b683e1939b3badc7bd` |
| 14 | `def` | [SourceRateStripSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant96e22dc8b71b24e9592b7271e41dd8e76f48f43ed96ede1255c73d196235c89d.lean/declarations/sourceratestripsupplier--9ebfde8d0688c872c775f0cf.md) | 100 | `declaration-track:9ebfde8d0688c872c775f0cfcb048694db44cb660b4a4eb12eefb1f06c5b0819` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
