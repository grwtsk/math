# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Duality.Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6f84251a398dd8c52cebec115b57c366c25ff8b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6f84251a398dd8c52cebec115b57c366c25ff8b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.MV.Spacing` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.MV` — import line 8; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg.HermitianPosPart` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EigenBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/eigenbound--5b534a7e31295368ab74a013.md) | 34 | `declaration-track:5b534a7e31295368ab74a01308bc7fccb41cf477ace67d4ffaa9e58834a38eb3` |
| 2 | `def` | [kfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/kfun--9ecc9bddf7cd84fa6b2e1150.md) | 44 | `declaration-track:9ecc9bddf7cd84fa6b2e1150a3b9dbf24bb45093bfa876ebb8bbce145752af97` |
| 3 | `lemma` | [kfun_antisymm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/kfun-antisymm--27be860774e2899481ef2072.md) | 48 | `result-track:27be860774e2899481ef2072d7c4fc522eafb28d1ac53e5532e7eb8443a9ab62` |
| 4 | `def` | [Mmat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/mmat--9e3f8d0b6535bea4cc1d546a.md) | 55 | `declaration-track:9e3f8d0b6535bea4cc1d546a6428de62e93d1317a6b5419260a874de1d9d1574` |
| 5 | `lemma` | [Mmat_isHermitian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/mmat-ishermitian--4cc7f47e416b94e5e2e0c64d.md) | 58 | `result-track:4cc7f47e416b94e5e2e0c64d720bc1dc8aa4d3e4173f691da94866837fa8158b` |
| 6 | `lemma` | [star_dotProduct_self](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/star-dotproduct-self--b1705b50db5711673398ae8c.md) | 67 | `result-track:b1705b50db5711673398ae8ce52a1802c851d3427a22cf5fbe7888e31dcd8c02` |
| 7 | `lemma` | [star_dotProduct_mulVec_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/star-dotproduct-mulvec-eq--6e320612c486c6ebb353ee14.md) | 74 | `result-track:6e320612c486c6ebb353ee144864a9ffb160601182295e23e383eeec0523ce94` |
| 8 | `lemma` | [sum_norm_sq_unitary](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/sum-norm-sq-unitary--b04dfc6a01f0b86d773b7c56.md) | 93 | `result-track:b04dfc6a01f0b86d773b7c5667f6edf018a8905fbb426464e7ff3d39fc0361a5` |
| 9 | `lemma` | [abs_eigenvalue_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/abs-eigenvalue-le--1e86cc310f64b9be43c239cd.md) | 106 | `result-track:1e86cc310f64b9be43c239cdbbb6a26ab02b8c11f7593e19aac8af5386f14ac3` |
| 10 | `lemma` | [norm_form_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/norm-form-le--0f1962af7c20ff280e214f01.md) | 147 | `result-track:0f1962af7c20ff280e214f015dedfbad77940b75bb7946dcabbf123d7635ba4a` |
| 11 | `theorem` | [mvDiag_of_eigenBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/mvdiag-of-eigenbound--ae3ab705efd1ae1ef316d52f.md) | 158 | `result-track:ae3ab705efd1ae1ef316d52f859dfef7f6958efc6a7f2f3a8c3244fcfac185af` |
| 12 | `theorem` | [mvHilbert_of_eigenBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant5250202b9eda682e5b283c0eddb9c960025908c0e7abf78decccb1905b54862d.lean/declarations/mvhilbert-of-eigenbound--0a8376edbf1035b871c3b233.md) | 196 | `result-track:0a8376edbf1035b871c3b233b607e0b2c442db820cf435171011af230da4794c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
