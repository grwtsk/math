# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TorusIntegral.Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e51e0229c33e6b24fd2e390d4564c2a756c9f5b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e51e0229c33e6b24fd2e390d4564c2a756c9f5b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Prod.Integral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/macro-rules--7a620f0990e401a118a75538.md) | 74 | `declaration-track:7a620f0990e401a118a75538dbd1ef7ae3fe30883f3f2effeb9a0ac8096fc850` |
| 2 | `def` | [torusMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusmap--85080fb473bdcf3f40831548.md) | 83 | `declaration-track:85080fb473bdcf3f40831548247752ad9fa34fcb598212c9ebcfc9e4bc8cad19` |
| 3 | `theorem` | [torusMap_sub_center](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusmap-sub-center--7738744dee5b13718f407631.md) | 86 | `result-track:7738744dee5b13718f407631fe900b9b5bac6f8bc31cac6967362c53dcfb5c0d` |
| 4 | `theorem` | [torusMap_eq_center_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusmap-eq-center-iff--5fde2a6d37bb20c803712734.md) | 90 | `result-track:5fde2a6d37bb20c803712734af575fbc562bdf3e66042610f742525717b79ee7` |
| 5 | `theorem` | [torusMap_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusmap-zero-radius--7280dbfae2ada6978afaf422.md) | 95 | `result-track:7280dbfae2ada6978afaf422df3d6cf6ef315a492ade747c97cf9a45a3c76f25` |
| 6 | `def` | [TorusIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegrable--fa96571469775e982dd88f0e.md) | 105 | `declaration-track:fa96571469775e982dd88f0e6aedf0e52bfe825850a1bdecc68467536d0e094c` |
| 7 | `theorem` | [torusIntegrable_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegrable-const--4ed60b04f64e79e8140cb18a.md) | 115 | `result-track:4ed60b04f64e79e8140cb18a9d8cb42173941795a1dc342969bbc14870f64b5f` |
| 8 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/neg--ba9b691eeb517a88e4e99dde.md) | 120 | `result-track:ba9b691eeb517a88e4e99dde84b4435f264657070505f2f020029f2d222dce1d` |
| 9 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/add--b4ae975286386d90ab125bcd.md) | 124 | `result-track:b4ae975286386d90ab125bcdf6b06ba1c1fa8dc584f7ece5cca7ef6cf08def32` |
| 10 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/sub--2641022c3959fdc2742916ee.md) | 130 | `result-track:2641022c3959fdc2742916eedfd46d77789192a24b732438a92c37052716df96` |
| 11 | `theorem` | [torusIntegrable_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegrable-zero-radius--eea8bfc39d85b5c7a27b69f1.md) | 135 | `result-track:eea8bfc39d85b5c7a27b69f1ef13f3af3f1d81f5b392538153661868a6ab00bb` |
| 12 | `theorem` | [function_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/function-integrable--46726256cf2ae55bd2b30021.md) | 141 | `result-track:46726256cf2ae55bd2b30021ad0a28b65c1990c7fab1051e00774ba10654a892` |
| 13 | `def` | [torusIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral--98959b41855825edaa3c0856.md) | 155 | `declaration-track:98959b41855825edaa3c08561ab66b34fe17b2504643cfbe10e70fe261b9a4a9` |
| 14 | `theorem` | [torusIntegral_radius_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-radius-zero--9af0c06526a562aea7fc1f39.md) | 161 | `result-track:9af0c06526a562aea7fc1f39cce80edaa0275060b69b926fa2a8e911a6079b1d` |
| 15 | `theorem` | [torusIntegral_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-neg--3f85c4e2e2ca7e83a86d6305.md) | 167 | `result-track:3f85c4e2e2ca7e83a86d630537fa045fad7fd8e64b523344328bffb11d143999` |
| 16 | `theorem` | [torusIntegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-add--79da2b7c17a4263d88900365.md) | 171 | `result-track:79da2b7c17a4263d88900365030f5f399c0c804061d580ece3e4754d6aa15e3e` |
| 17 | `theorem` | [torusIntegral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-sub--e991c20fd9d19071ed1e127d.md) | 177 | `result-track:e991c20fd9d19071ed1e127df187c5edd9deb4b49cdccb4874e0098d1b39b328` |
| 18 | `theorem` | [torusIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-smul--8e05cb7140e45976204bb2fe.md) | 182 | `result-track:8e05cb7140e45976204bb2fe0333b7f325b83dc687c3e6412199e7d5318621ba` |
| 19 | `theorem` | [torusIntegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-const-mul--61ce95a1bf697d9293bca749.md) | 187 | `result-track:61ce95a1bf697d9293bca749c9d648aee5732b40247e81d7bd94747bcb5815ff` |
| 20 | `theorem` | [norm_torusIntegral_le_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/norm-torusintegral-le-of-norm-le-const--981d3b58d6e11781c9dd4c08.md) | 194 | `result-track:981d3b58d6e11781c9dd4c08d32155a110eba2d990b7e77395aab3445a7de1cd` |
| 21 | `theorem` | [torusIntegral_dim0](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-dim0--c074316b83d7bb15deb38635.md) | 211 | `result-track:c074316b83d7bb15deb386352d565c198317987511d8829519960b4e0d87f0de` |
| 22 | `theorem` | [torusIntegral_dim1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-dim1--a370a9bb1ef2fc5a9de9c406.md) | 220 | `result-track:a370a9bb1ef2fc5a9de9c4060f73eb79f46d85195c2447732cd91a08762bf29e` |
| 23 | `theorem` | [torusIntegral_succAbove](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-succabove--310c38c8a89938641f9895e2.md) | 235 | `result-track:310c38c8a89938641f9895e25d186c0f533737cf57abae50498e33c797448cd1` |
| 24 | `theorem` | [torusIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/declarations/torusintegral-succ--e7a1ca9de9c0f2ef25d6e10f.md) | 260 | `result-track:e7a1ca9de9c0f2ef25d6e10f8e65db8698bec78ac20c2d268b6a7b46b65ca89d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
