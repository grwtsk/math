# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FourierBridgeFullAudit.Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1f6584a7fefed470b6b49c9ba72a99c973b6732",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1f6584a7fefed470b6b49c9ba72a99c973b6732`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourierInv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/declarations/integral-fourierinv-mul-eq--fc3a5001f6d031260836df56.md) | 12 | `result-track:fc3a5001f6d031260836df5621e9082fa5db83dea2235c6906148262d6bfc442` |
| 2 | `theorem` | [continuous_fourierInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/declarations/continuous-fourierinv--b2f8eec4c7c23a0ac27fb1de.md) | 26 | `result-track:b2f8eec4c7c23a0ac27fb1de0217fe2556720d9f6cd178afab2a0acd510c1f62` |
| 3 | `theorem` | [fourierInv_toLp_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/declarations/fourierinv-tolp-ae--e51bdcb15ec88dbbe0a077b6.md) | 33 | `result-track:e51bdcb15ec88dbbe0a077b6a7031c308f49812aeb5e7e2eb83e794f37d1a28d` |
| 4 | `theorem` | [fourierInv_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/declarations/fourierinv-memlp--0b0c187776415f6b8750e28f.md) | 64 | `result-track:0b0c187776415f6b8750e28f5c343dc9a1c5d994a5c057e8522688a718c6a1e2` |
| 5 | `theorem` | [fourierInv_toLp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/declarations/fourierinv-tolp-eq--76fd9886e1e60e47041f713b.md) | 69 | `result-track:76fd9886e1e60e47041f713b5a779a2c5eff7bf8d742f958dbfec8879922d3e8` |
| 6 | `theorem` | [norm_fourierInv_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/declarations/norm-fourierinv-tolp--b35aa7729f739fd66c0da24d.md) | 75 | `result-track:b35aa7729f739fd66c0da24dbffe2352320a73ec3a7ce57d11ea6142b603f1a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
