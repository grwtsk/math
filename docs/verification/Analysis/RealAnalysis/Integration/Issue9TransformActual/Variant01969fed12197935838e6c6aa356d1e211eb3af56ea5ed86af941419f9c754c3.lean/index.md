# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Issue9TransformActual.Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "737d41f8e4ce6a9d8bf00177c63a30068979ef8d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `737d41f8e4ce6a9d8bf00177c63a30068979ef8d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/bumppolynomial--46638b358b6c0b2832ea7f07.md) | 21 | `declaration-track:46638b358b6c0b2832ea7f07832baff3bfc6de17da4d2662541603677bfd63e7` |
| 2 | `def` | [primitivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/primitivepolynomial--ba743a64f912e9e15e289e00.md) | 23 | `declaration-track:ba743a64f912e9e15e289e002e2f9877c17366101fd366356203450537af67a5` |
| 3 | `theorem` | [primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/primitive-derivative--224c7da4fd704974da92442a.md) | 34 | `result-track:224c7da4fd704974da92442a3e2f3e49eb7ebd1c52c285fb5e74b74e6451ab0e` |
| 4 | `theorem` | [primitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/primitive-endpoint-pos--39a3bc1d29d5ec153effcfdf.md) | 42 | `result-track:39a3bc1d29d5ec153effcfdfb2b83c1bcd3fa5b2f45f3c4040c1a21335d36998` |
| 5 | `theorem` | [primitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/primitive-endpoint-neg--d7a8cb2aef7c4a9416579e95.md) | 47 | `result-track:d7a8cb2aef7c4a9416579e954ea812e8e1d4f6f0bce2fb2ab148873385a2beb2` |
| 6 | `def` | [fullPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/fullprimitive--9b2265c1cfcec99a5c5bf7c7.md) | 52 | `declaration-track:9b2265c1cfcec99a5c5bf7c799d9c02d2fd82e8b8bb3b1142aaed38f4724625c` |
| 7 | `theorem` | [fullPrimitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/fullprimitive-derivative--93568e8a30ebf44de0c91212.md) | 56 | `result-track:93568e8a30ebf44de0c9121200c5883a0a57f2ed7546372d66b8c8df14bed14b` |
| 8 | `theorem` | [fullPrimitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/fullprimitive-endpoint-pos--1c90a636c2c3ffacafa9b74f.md) | 65 | `result-track:1c90a636c2c3ffacafa9b74ffa1d3451775264c9f7e90e6a0e0f9647aab470ee` |
| 9 | `theorem` | [fullPrimitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/fullprimitive-endpoint-neg--ab06ed0248dbae314bb4d5a4.md) | 71 | `result-track:ab06ed0248dbae314bb4d5a412a7d2203f6b4ae5de22a80ee5405681455c9b66` |
| 10 | `def` | [interior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/interior--db3e405478a24da823a08ffb.md) | 77 | `declaration-track:db3e405478a24da823a08ffb366809f0718ed278b295ab5c7221c69320a9a133` |
| 11 | `theorem` | [interior_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/interior-eq--ed4c6664d8af5262e0bc6564.md) | 81 | `result-track:ed4c6664d8af5262e0bc656430422693400d80468f469d8c29a812f5b376e598` |
| 12 | `theorem` | [exponential_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/exponential-primitive--47091387a9b51f8b1b32c7e3.md) | 95 | `result-track:47091387a9b51f8b1b32c7e39111b93b24c246670a36ae4b2089d243db8788d2` |
| 13 | `theorem` | [interior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/interior-continuous--86a4865c0c14927af02ed4f0.md) | 107 | `result-track:86a4865c0c14927af02ed4f0600b045de5a26cc7204ba7303a1748d3f027b0e7` |
| 14 | `theorem` | [actual_integrand_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/actual-integrand-indicator--33905cf69187f0999b5698bf.md) | 111 | `result-track:33905cf69187f0999b5698bf61014400fc422ee5b1322e3fbb631a8e17a315b8` |
| 15 | `theorem` | [actual_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/actual-integrable--c1f8a9c0155c9b6e0b8f1ca8.md) | 119 | `result-track:c1f8a9c0155c9b6e0b8f1ca8e9d900cdcacce08005d9fe7c70dba8f0d0668bac` |
| 16 | `theorem` | [actual_integral_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/actual-integral-interval--53a0716229c34d54487fc1dc.md) | 126 | `result-track:53a0716229c34d54487fc1dc86e0f41b10cbe65a00b27c1b4633342dc0c58b5c` |
| 17 | `theorem` | [normalized_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/normalized-primitive--e64c8b4925af613e823e56e3.md) | 133 | `result-track:e64c8b4925af613e823e56e3f81589a209ffe8e826a00e7d82305e6efeb2b0a5` |
| 18 | `theorem` | [source_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/source-scale--6589a1b50cd1cd9aa7c9c12e.md) | 148 | `result-track:6589a1b50cd1cd9aa7c9c12efb34f653002d048308a8d02f89470ddb9805a43f` |
| 19 | `theorem` | [actual_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/actual-transform--21fa66f1539a3ffd3e4b7faa.md) | 152 | `result-track:21fa66f1539a3ffd3e4b7faa0570234842658e79436605198f4282700934c5d3` |
| 20 | `theorem` | [bilateral_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/declarations/bilateral-transform--1d669099ba247b5ac9f32c34.md) | 166 | `result-track:1d669099ba247b5ac9f32c34755a7867b02262843a35aa33b44ce6515c86af93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
