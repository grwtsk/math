# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b44763d6893c48a9e70fc7943dc5950a59534a0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b44763d6893c48a9e70fc7943dc5950a59534a0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PositiveLift` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiTerm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetaphiterm--daf00880eecc6788e545cf99.md) | 31 | `declaration-track:daf00880eecc6788e545cf99b6d7ddd4277e04ee6fe374ff563816860fe23582` |
| 2 | `def` | [thetaPhi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetaphi--a6dcd7f7a89a6e88b62b6d6b.md) | 40 | `declaration-track:a6dcd7f7a89a6e88b62b6d6ba5875264f51f4c3bf5c83537c7f6c0d0e7a5aad4` |
| 3 | `def` | [evenBasis](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/evenbasis--2a8ccf133b4565afa6161eb0.md) | 44 | `declaration-track:2a8ccf133b4565afa6161eb097b3415db10cfa7ee5b226d45e4da319de51bd94` |
| 4 | `theorem` | [evenBasis_nonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/evenbasis-nonnegative--8887eb1363894b428891cd72.md) | 48 | `result-track:8887eb1363894b428891cd728c75ecab79f639de79d974db2c7cc2beaa3af9ff` |
| 5 | `def` | [thetaTail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetatail--e9853c2fc5c528f9c5ba0151.md) | 58 | `declaration-track:e9853c2fc5c528f9c5ba0151c0de492918f4b37b410f223c9f2735bf968ad8cd` |
| 6 | `theorem` | [thetaTail_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetatail-zero--30f6361b32dcc04e6ca399fe.md) | 65 | `result-track:30f6361b32dcc04e6ca399fef216f7f3fb62450dd8605dea37e4c9f774125590` |
| 7 | `def` | [ThetaPhiPositive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetaphipositive--2a71cef79a25b0ea5c710406.md) | 70 | `declaration-track:2a71cef79a25b0ea5c7104064b9cc1224c27555e21918f6f2aafb681643ecc3f` |
| 8 | `def` | [ThetaCoefficientFormula](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetacoefficientformula--b15cfd0973e696f8070e3b1e.md) | 74 | `declaration-track:b15cfd0973e696f8070e3b1e636344066ec2132a43b9a4f6097a3d9ee909ebe5` |
| 9 | `def` | [tailPairing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/tailpairing--2f2ee61aca04be1d05cc25ff.md) | 80 | `declaration-track:2f2ee61aca04be1d05cc25ffb17f0461e8e8f770542792fe7b164006d63b7124` |
| 10 | `def` | [ThetaTailTransport](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetatailtransport--c28f34d464d1adbf1a320d92.md) | 87 | `declaration-track:c28f34d464d1adbf1a320d92c386fde568819b82bdf4afc50cf76242f20649ad` |
| 11 | `structure` | [Separation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/separation--ccd8b52bd07763e9087b49c6.md) | 94 | `declaration-track:ccd8b52bd07763e9087b49c69307792b7acd0d57f220f4fc5c9d5793e7791518` |
| 12 | `def` | [rowDebt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/rowdebt--fb85a95121ffb5a5f3f9b419.md) | 106 | `declaration-track:fb85a95121ffb5a5f3f9b4197abc389c6ca2c1adf0dd2ba18fc07de17f9a2e9d` |
| 13 | `def` | [columnDegree](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/columndegree--81907571bfa1ae797195868c.md) | 110 | `declaration-track:81907571bfa1ae797195868ce2b87e136ba8b0713feaace33230ac15819945ed` |
| 14 | `theorem` | [difference_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/difference-eq--acdd432033b4cd98cc2de5d7.md) | 115 | `result-track:acdd432033b4cd98cc2de5d731715d00ef3c8c9a775667094ecc5cc01fccc2cb` |
| 15 | `theorem` | [row_le_column](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/row-le-column--a5a18f388df41e48d9e30ef1.md) | 123 | `result-track:a5a18f388df41e48d9e30ef17c8ed02cbb711ec7458a88a036d68cdbb1e2223e` |
| 16 | `def` | [Separated](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/separated--5d48b477f7f8e1a4e51a71a4.md) | 130 | `declaration-track:5d48b477f7f8e1a4e51a71a4ca10a6ba6b440a3c4d61b4aa3ffa731ad0c85b29` |
| 17 | `theorem` | [separated_entry_eq_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/separated-entry-eq-tail--e473fa16ab414a805e7eb62e.md) | 135 | `result-track:e473fa16ab414a805e7eb62ea300be44f503fabadd27a7aaec67bf9b995152c3` |
| 18 | `def` | [ThetaTailSignRegular](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetatailsignregular--732f4d8056836a3e3a2e72ba.md) | 151 | `declaration-track:732f4d8056836a3e3a2e72ba2525082377eab383aaec13b52919167f9e55c94f` |
| 19 | `def` | [finiteSourceMatrix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/finitesourcematrix--b58a28fc6876be96bde71949.md) | 158 | `declaration-track:b58a28fc6876be96bde71949b263c4368a707fcc21b2fe80def8a269508910cf` |
| 20 | `def` | [finiteTransverseMatrix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/finitetransversematrix--24cfd0cc7705cdb087d405a7.md) | 166 | `declaration-track:24cfd0cc7705cdb087d405a7eaf90c8415cd6d547141076e9b7e159fdac16f87` |
| 21 | `def` | [finiteLiftMatrix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/finiteliftmatrix--77ef135666ebf911ffa28eed.md) | 172 | `declaration-track:77ef135666ebf911ffa28eed6938175af7d6d0bc226629791632ae3e91e5110f` |
| 22 | `theorem` | [finiteLiftMatrix_det_nonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/finiteliftmatrix-det-nonnegative--03ca8e926eb277c0b27b0481.md) | 180 | `result-track:03ca8e926eb277c0b27b04815cbf6d10cceca7c60bc5c983388997e32866e8b3` |
| 23 | `def` | [SeparatedMinorNonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/separatedminornonnegative--809d4571424fb95569c7e45a.md) | 191 | `declaration-track:809d4571424fb95569c7e45a16896515a894073689f8c96420fde6eb801dccde` |
| 24 | `def` | [ThetaAndreiefClosure](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetaandreiefclosure--5cd354c863d4ae6421be69dc.md) | 199 | `declaration-track:5cd354c863d4ae6421be69dc714cf861a6f891c44eb8064053d771acea2c534f` |
| 25 | `def` | [ThetaBoundaryCompletion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/thetaboundarycompletion--4e6d0b5c936c8352d9959690.md) | 207 | `declaration-track:4e6d0b5c936c8352d99596902919fb11150a64f4b5334883f77c36352ea9087f` |
| 26 | `theorem` | [pfInfinity_of_separated_and_boundary](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/pfinfinity-of-separated-and-boundary--0b2af22e7812199abc2d1eb5.md) | 214 | `result-track:0b2af22e7812199abc2d1eb5456fe27a27b92af78a30e80cf0b398cdfbea9064` |
| 27 | `theorem` | [pfInfinity_of_theta_positive_lift](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant5088e37f72bf915ba071091233440e07de6a213c7bae7618b2d9bd846387fdc3.lean/declarations/pfinfinity-of-theta-positive-lift--b88d8ae9c8debe34afb6c9f5.md) | 226 | `result-track:b88d8ae9c8debe34afb6c9f58e121e3b92c700b4f331267265802e9e5e9a0dde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
