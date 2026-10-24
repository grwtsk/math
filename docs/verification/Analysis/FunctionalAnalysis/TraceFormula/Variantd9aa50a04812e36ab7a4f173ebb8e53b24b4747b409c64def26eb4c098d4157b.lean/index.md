# Verification target: GRWTSK.Analysis.FunctionalAnalysis.TraceFormula.Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "025daddd628d8eec13a0ca5a33aba2752142a220",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `025daddd628d8eec13a0ca5a33aba2752142a220`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.SpectralMeasure` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hilbert.TraceFormulaSide](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulaside--aaa9148ebf02f9171755264f.md) | 49 | `declaration-track:aaa9148ebf02f9171755264f635ddaa18b5bb78e508a988abf74b9507b827e68` |
| 2 | `def` | [Hilbert.TraceFormulaSide.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulaside-ready--95052ce7118ad2dfe19638fd.md) | 58 | `declaration-track:95052ce7118ad2dfe19638fde7b5af62662d3c6b24b6c67d43e1aaa6193bf0f1` |
| 3 | `theorem` | [Hilbert.TraceFormulaSide.ready_implies_admissible](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulaside-ready-implies-admissible--c68f17b19adbb967a7f6b22c.md) | 63 | `result-track:c68f17b19adbb967a7f6b22c396f5c174bd718ca36f6af51ea9a7ab7baa085d7` |
| 4 | `def` | [Hilbert.TraceFormulaSide.placeholder](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulaside-placeholder--eebc825ff8acf36149e9c627.md) | 75 | `declaration-track:eebc825ff8acf36149e9c62767edc6f41ab6db9c5ba36408b5bd8dd5f4abc6ef` |
| 5 | `theorem` | [Hilbert.TraceFormulaSide.placeholder_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulaside-placeholder-not-ready--257c3c68a6cca614f25266cf.md) | 90 | `result-track:257c3c68a6cca614f25266cf79cdd3246ff5106c446658c4975d5ca682552f76` |
| 6 | `structure` | [Hilbert.TraceFormulaCore](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulacore--2cfec64e0b26169c519e7ec7.md) | 112 | `declaration-track:2cfec64e0b26169c519e7ec7c4c8252fd9abe8c18b1e42237cbbf261d7314ee5` |
| 7 | `def` | [Hilbert.TraceFormulaCore.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulacore-ready--b26aa1adfc550e1d8a9a7d1b.md) | 131 | `declaration-track:b26aa1adfc550e1d8a9a7d1bea34b879b44b859da2e8dc214d6295cf3b276056` |
| 8 | `def` | [Hilbert.TraceFormulaCore.theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulacore-theoremready--b58f39f17155d7dd88bcfe67.md) | 149 | `declaration-track:b58f39f17155d7dd88bcfe673f065dd5e55a431d848347291f21769addad28ff` |
| 9 | `theorem` | [Hilbert.TraceFormulaCore.theoremReady_implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulacore-theoremready-implies-ready--17c963309b2e0f16d00aecad.md) | 153 | `result-track:17c963309b2e0f16d00aecade3bd30af0cdd020c721220dbdef8e6077d542886` |
| 10 | `structure` | [Hilbert.TraceFormulaTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulatheoremcertificate--aa90e9a22b4067e56d023ac5.md) | 169 | `declaration-track:aa90e9a22b4067e56d023ac551f7df439e45e5ee5c666c3aec4c26d6d265d123` |
| 11 | `def` | [Hilbert.TraceFormulaTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulatheoremcertificate-certifiedformajorproof--705e11391b878643c0a4077a.md) | 202 | `declaration-track:705e11391b878643c0a4077a202912e4ecd8b0b24cbc2c84c7b2f60b802489ad` |
| 12 | `theorem` | [Hilbert.TraceFormulaTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulatheoremcertificate-certifiedformajorproof-of-fields--351e78b950e00437eded0739.md) | 222 | `result-track:351e78b950e00437eded0739a7a38429f1a3252051676c1e84f33ce2a31b57bc` |
| 13 | `theorem` | [Hilbert.TraceFormulaTheoremCertificate.implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulatheoremcertificate-implies-ready--2f15fc2891956422abaa1cb6.md) | 243 | `result-track:2f15fc2891956422abaa1cb6bea382f02f73445a3e0d6092be3fdc6e6d4fc62f` |
| 14 | `theorem` | [Hilbert.TraceFormulaTheoremCertificate.implies_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-traceformulatheoremcertificate-implies-theoremready--64ec6b0a3e2461b4ba333ed5.md) | 256 | `result-track:64ec6b0a3e2461b4ba333ed51a4857dc45fde71cb9de6466d9f94e94aef981f1` |
| 15 | `def` | [Hilbert.standardTraceFormulaCore](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-standardtraceformulacore--3c50996e1771dc31766264c3.md) | 274 | `declaration-track:3c50996e1771dc31766264c30def1018a44109dc8953ca7f8d40367b4ccdc53c` |
| 16 | `theorem` | [Hilbert.standardTraceFormulaCore_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-standardtraceformulacore-not-ready--90f6558fe3066783d40345f3.md) | 306 | `result-track:90f6558fe3066783d40345f3c672abd3a86403b964a32edf35245a0752b08a8c` |
| 17 | `theorem` | [Hilbert.standardTraceFormulaCore_not_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-standardtraceformulacore-not-theoremready--cdc7de108f8aa96c18fdeb5a.md) | 312 | `result-track:cdc7de108f8aa96c18fdeb5a36d8a0739a37c56ebdf00914d62a679f38501f81` |
| 18 | `structure` | [Hilbert.ConnesTraceShapeDescriptor](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-connestraceshapedescriptor--e56c9b9a52efa8242e5cb201.md) | 339 | `declaration-track:e56c9b9a52efa8242e5cb201ba41b4229a80f378666495d9a984733ca79221f2` |
| 19 | `def` | [Hilbert.standardConnesTraceShapeDescriptor](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/declarations/hilbert-standardconnestraceshapedescriptor--5f88bdc1a0525dc7ef51da2e.md) | 350 | `declaration-track:5f88bdc1a0525dc7ef51da2eb7bf8eab278ab2a8b1d0a3562e3990bc1b2e14d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
