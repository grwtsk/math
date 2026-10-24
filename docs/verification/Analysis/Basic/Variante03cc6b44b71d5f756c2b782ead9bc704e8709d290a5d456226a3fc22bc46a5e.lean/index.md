# Verification target: GRWTSK.Analysis.Basic.Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a786daebc14c6c3ac2c2153fd6b01eccdf2ebe86",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/index.md) · [Full source](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a786daebc14c6c3ac2c2153fd6b01eccdf2ebe86`.

Source path: `GRWTSK/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CutDigest](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/cutdigest--a7e0cb9584fefa655da121f4.md) | 13 | `declaration-track:a7e0cb9584fefa655da121f4df018f3cae55e86a5cc54b96e866ebc4169df5f3` |
| 2 | `structure` | [CellDigest](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/celldigest--0a968a030e36a68b78b4c203.md) | 17 | `declaration-track:0a968a030e36a68b78b4c2031bfc06a0f4ff84854a4ddd346cb5910ee4f26db2` |
| 3 | `structure` | [CertificateDigest](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/certificatedigest--7a1c0eeb41c682019fde2bf8.md) | 21 | `declaration-track:7a1c0eeb41c682019fde2bf899db70f720db58200f7d80a4eb48ad271ec4e454` |
| 4 | `structure` | [AnalyticCellId](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/analyticcellid--d2abf328e76f2e2c8babdca5.md) | 25 | `declaration-track:d2abf328e76f2e2c8babdca563f0306b2e787736510200a461b079022a6b3c10` |
| 5 | `structure` | [RefinementId](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/refinementid--93311cabd5eb6fef243aee7c.md) | 29 | `declaration-track:93311cabd5eb6fef243aee7c88ffd3e0209ebb0da4bcc4a81bb607b435d56247` |
| 6 | `structure` | [ZeroLineageId](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/zerolineageid--bd69152a68c808e3510075b9.md) | 33 | `declaration-track:bd69152a68c808e3510075b95269352aae33198a42de2b558814efcaadd1ba10` |
| 7 | `structure` | [SpectralCutId](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/spectralcutid--13ee8f576db0e78de056e64c.md) | 37 | `declaration-track:13ee8f576db0e78de056e64c1cb4d5acb0849d66173c9e6191d6dbca92ca8f56` |
| 8 | `structure` | [SpectralCandidateId](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/spectralcandidateid--90206d11b865a534c7766b9b.md) | 41 | `declaration-track:90206d11b865a534c7766b9bd81f56bca171c3edd7a542dc40bfa11cc2be05e7` |
| 9 | `structure` | [AssumptionId](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/assumptionid--2288caf74acb5b58b1b6894e.md) | 45 | `declaration-track:2288caf74acb5b58b1b6894e2ad1574fd907e02fbfa790788c113ad4150fb0b0` |
| 10 | `structure` | [PriorityKey](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/prioritykey--ec85447b637a0a860581fdc2.md) | 49 | `declaration-track:ec85447b637a0a860581fdc2acd9aad58e9d018f7401af64dd0cd10834f18f9c` |
| 11 | `structure` | [RealInterval](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/realinterval--71095b40fbc526e1d8453707.md) | 54 | `declaration-track:71095b40fbc526e1d845370748660b45d86ae2368d154d9a3d3c43ea36d01c6c` |
| 12 | `def` | [RealInterval.Contains](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/realinterval-contains--9cbd1576d5cd8e365e499e0f.md) | 59 | `declaration-track:9cbd1576d5cd8e365e499e0f4cc7599136e7224b31fc10dac60b277e72587d2c` |
| 13 | `structure` | [ComplexInterval](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/complexinterval--0c19db48189d4e2c2447a021.md) | 64 | `declaration-track:0c19db48189d4e2c2447a0218adf787293abd6ed31ee5ef00d0d05fe8186b091` |
| 14 | `def` | [ComplexInterval.Contains](../../../../mathematics/Analysis/Basic/Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e.lean/declarations/complexinterval-contains--3adb18c94852283c3d75a7b1.md) | 67 | `declaration-track:3adb18c94852283c3d75a7b103d04667422754cd076a5d292caa5606d5463976` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
