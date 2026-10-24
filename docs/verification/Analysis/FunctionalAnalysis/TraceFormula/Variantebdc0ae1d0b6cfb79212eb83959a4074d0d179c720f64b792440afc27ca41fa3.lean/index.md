# Verification target: GRWTSK.Analysis.FunctionalAnalysis.TraceFormula.Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c402b9178383dc516ea6f6cde8aceabe1e1fd98",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c402b9178383dc516ea6f6cde8aceabe1e1fd98`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.SpectralMeasure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hilbert.TraceFormulaSide](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulaside--19d4bfd1422f9913e4b621e6.md) | 57 | `declaration-track:19d4bfd1422f9913e4b621e672812ce12c14ec14d966aaa1effa8e0e1435472d` |
| 2 | `def` | [Hilbert.TraceFormulaSide.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulaside-ready--215765519df46d4ad571bfdf.md) | 66 | `declaration-track:215765519df46d4ad571bfdf960aa745b4786416e3c575aa5e90e7116bd855bb` |
| 3 | `theorem` | [Hilbert.TraceFormulaSide.ready_implies_admissible](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulaside-ready-implies-admissible--6560aed7289dfc101efe6f96.md) | 71 | `result-track:6560aed7289dfc101efe6f961bdb0cfb07924b8e48ef18fe4028942d6ce3d916` |
| 4 | `def` | [Hilbert.TraceFormulaSide.placeholder](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulaside-placeholder--4f875b78ff2e001e03035f47.md) | 83 | `declaration-track:4f875b78ff2e001e03035f47eccdf9affe6b4b40fbde070edf0269937d6cacca` |
| 5 | `theorem` | [Hilbert.TraceFormulaSide.placeholder_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulaside-placeholder-not-ready--4c8a5bbe1f0c2c9f403bd849.md) | 98 | `result-track:4c8a5bbe1f0c2c9f403bd849ef7c3fafc9a9c83a2a5e0539bea604bb30e8f679` |
| 6 | `structure` | [Hilbert.TraceFormulaCore](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulacore--4ee698e986eedf04d9d9423d.md) | 120 | `declaration-track:4ee698e986eedf04d9d9423d68a2a78a0b0caa67522c08ca31091d9aa9a99dcb` |
| 7 | `def` | [Hilbert.TraceFormulaCore.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulacore-ready--b96b256ad64389912a151a9d.md) | 139 | `declaration-track:b96b256ad64389912a151a9d632653331121be9825584859c5627b1beb9ffb99` |
| 8 | `def` | [Hilbert.TraceFormulaCore.theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulacore-theoremready--8f529ab63a4de84e123bf494.md) | 157 | `declaration-track:8f529ab63a4de84e123bf494d1f418c6d16ee5edb37b9156cb822d1543809d05` |
| 9 | `theorem` | [Hilbert.TraceFormulaCore.theoremReady_implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulacore-theoremready-implies-ready--a3640c0dd2474a1b9629fa8e.md) | 161 | `result-track:a3640c0dd2474a1b9629fa8e1220e9daad5aa9e74c621d6b3bc88802c04155da` |
| 10 | `structure` | [Hilbert.TraceFormulaTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulatheoremcertificate--6ab92403be15ed294c41ceee.md) | 177 | `declaration-track:6ab92403be15ed294c41ceee553a349010605d6515c13d328eba8178bade9a48` |
| 11 | `def` | [Hilbert.TraceFormulaTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulatheoremcertificate-certifiedformajorproof--09c2a5e2b97478d9a9dc8bfb.md) | 210 | `declaration-track:09c2a5e2b97478d9a9dc8bfb810285aacf0f3c8b50b77719be08785f7321ea5c` |
| 12 | `theorem` | [Hilbert.TraceFormulaTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulatheoremcertificate-certifiedformajorproof-of-fields--1d476b06958263343431270b.md) | 230 | `result-track:1d476b06958263343431270bcd5ca89ba9b86fce59336ba1c91bcaf2df8ced23` |
| 13 | `theorem` | [Hilbert.TraceFormulaTheoremCertificate.implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulatheoremcertificate-implies-ready--b440e6e26401be2c303aaff0.md) | 251 | `result-track:b440e6e26401be2c303aaff090677c5b636e6163eda0f91a7029cb258a3d13da` |
| 14 | `theorem` | [Hilbert.TraceFormulaTheoremCertificate.implies_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-traceformulatheoremcertificate-implies-theoremready--863e272ee4723619a3c8eb6b.md) | 264 | `result-track:863e272ee4723619a3c8eb6bc1ae91a01feb81fb0c461fa95d5c0fc0c2cb1de4` |
| 15 | `def` | [Hilbert.standardTraceFormulaCore](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-standardtraceformulacore--c01e7ee1478f3be035b6e6ce.md) | 282 | `declaration-track:c01e7ee1478f3be035b6e6ced75e0261f92adce15c8519478ecc5cdd1d0683c7` |
| 16 | `theorem` | [Hilbert.standardTraceFormulaCore_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-standardtraceformulacore-not-ready--0c5b924cb846f770ab840865.md) | 314 | `result-track:0c5b924cb846f770ab840865cd68335dd1f0e895fe73054918398cab2c270088` |
| 17 | `theorem` | [Hilbert.standardTraceFormulaCore_not_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-standardtraceformulacore-not-theoremready--ce280e2f81c536155dd275b4.md) | 320 | `result-track:ce280e2f81c536155dd275b4c48c7c3e6b328fd139923e76d83dd6774cbfe592` |
| 18 | `structure` | [Hilbert.ConnesTraceShapeDescriptor](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-connestraceshapedescriptor--bbf5ade3022ce5f58fb5e3db.md) | 347 | `declaration-track:bbf5ade3022ce5f58fb5e3dbbde52c11aefcf2b29f8f58162815c6eeba41d3bb` |
| 19 | `def` | [Hilbert.standardConnesTraceShapeDescriptor](../../../../../mathematics/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/declarations/hilbert-standardconnestraceshapedescriptor--1b5d69bf5b54b11390bdb331.md) | 358 | `declaration-track:1b5d69bf5b54b11390bdb33196c5016d22531768be71370f6c8b5a034208d21a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
