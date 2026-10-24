# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjugateSymmetry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9736ec1b20cf13ad35af53576d238f22d1404425",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9736ec1b20cf13ad35af53576d238f22d1404425`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleEdgeEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_riemannZeta_conj](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/deriv-riemannzeta-conj--41e8291c00e61aadd77e8390.md) | 49 | `result-track:41e8291c00e61aadd77e8390396ef9acf8a5704c480f1ffbb9702ede1495ced8` |
| 2 | `theorem` | [logDeriv_riemannZeta_conj](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/logderiv-riemannzeta-conj--ba401044689c2790d513f763.md) | 62 | `result-track:ba401044689c2790d513f763a008a319e97443bdefb5f50190b78714916731fd` |
| 3 | `theorem` | [topPoint_eq_conj_bottomPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/toppoint-eq-conj-bottompoint--6b0b332f408754a063d30b22.md) | 68 | `result-track:6b0b332f408754a063d30b22e3dfa40607f70880325ce216ea00c9bbf6c96630` |
| 4 | `theorem` | [rightPoint_neg_eq_conj_rightPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/rightpoint-neg-eq-conj-rightpoint--fb34118c61024d0a558e4b54.md) | 72 | `result-track:fb34118c61024d0a558e4b54f87492e89ce67a38460d9bb71d16c7281610d64c` |
| 5 | `theorem` | [leftPoint_neg_eq_conj_leftPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/leftpoint-neg-eq-conj-leftpoint--fae821bbf34b0ac922f937f9.md) | 76 | `result-track:fae821bbf34b0ac922f937f9400ce447a914395ffd5669d465c7dd41ab4a13d3` |
| 6 | `def` | [bottomRawIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/bottomrawintegral--faae1c722cc11dda8e510305.md) | 81 | `declaration-track:faae1c722cc11dda8e5103056e2fa5e9935e670b800788014d43b82bcd30b7bf` |
| 7 | `def` | [topRawIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/toprawintegral--789c19aba1955416b16845da.md) | 86 | `declaration-track:789c19aba1955416b16845da8982b78d695e89fb98f7cb37a345860fb8520ba4` |
| 8 | `def` | [rightEdgeIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/rightedgeintegrand--961da6f77d43ec7be4505f0f.md) | 91 | `declaration-track:961da6f77d43ec7be4505f0f702a7d49a705c4ee529ee27039a4018ee39bb80f` |
| 9 | `def` | [leftEdgeIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/leftedgeintegrand--b8ef99917b8a3c1af28c7ebe.md) | 96 | `declaration-track:b8ef99917b8a3c1af28c7ebe74aadb153fc578e0c2f8b20f3985ec94485387b5` |
| 10 | `def` | [rightRawIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/rightrawintegral--4e923f6dc33368332dbf2575.md) | 100 | `declaration-track:4e923f6dc33368332dbf2575ecb3ddd1857085e483adb09930255df0fb0974ee` |
| 11 | `def` | [leftRawIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/leftrawintegral--d71a8d5fafe8922c0b476b60.md) | 105 | `declaration-track:d71a8d5fafe8922c0b476b6092a4d000a22a4e7c0e9d9b2e9f44fd3b8a001c08` |
| 12 | `theorem` | [normalizedBottomContribution_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedbottomcontribution-eq--da2a4b897d997d260b10d176.md) | 109 | `result-track:da2a4b897d997d260b10d17680547542c173a4ef844f5ed69af887d79a6611c2` |
| 13 | `theorem` | [normalizedTopContribution_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedtopcontribution-eq--f110612926514ed2b0db82ad.md) | 113 | `result-track:f110612926514ed2b0db82ad1b7098ee779a291be22992ad341371d1291117eb` |
| 14 | `theorem` | [normalizedRightContribution_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedrightcontribution-eq--9406a45f360a5409381957bb.md) | 117 | `result-track:9406a45f360a5409381957bb160587957fb7a92937305bc6d0b43fb056bde211` |
| 15 | `theorem` | [normalizedLeftContribution_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedleftcontribution-eq--47aa6825e07bbce7b95c1426.md) | 121 | `result-track:47aa6825e07bbce7b95c1426f1750c2ba9ce0aac1622c0e1c53b11a42b02a2f6` |
| 16 | `theorem` | [conj_rectangleNormalizer](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/conj-rectanglenormalizer--b85e657969168c3986f70cbd.md) | 126 | `result-track:b85e657969168c3986f70cbdcf91b730d29526eafa3bf6bc77ca286511760f01` |
| 17 | `theorem` | [topRawIntegral_eq_neg_conj_bottomRawIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/toprawintegral-eq-neg-conj-bottomrawintegral--0690f90cf1ad15098b38669c.md) | 139 | `result-track:0690f90cf1ad15098b38669c6e703d057dd8ff4b5b119476ac86d679cb7d8345` |
| 18 | `theorem` | [normalizedTopContribution_eq_conj_bottomContribution](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedtopcontribution-eq-conj-bottomcontribution--2e56c6e0e29fa0b1e943727b.md) | 161 | `result-track:2e56c6e0e29fa0b1e943727b0cb845ccca040ba2cfa43a745399ee243513efd2` |
| 19 | `theorem` | [conj_rightEdgeIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/conj-rightedgeintegrand--2812a6d13a43a73d960e6b4b.md) | 172 | `result-track:2812a6d13a43a73d960e6b4bee4e2b3cb5b6e110bf8bc8683626147cc8607ea3` |
| 20 | `theorem` | [conj_rightRawIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/conj-rightrawintegral--53ebf2ef5d4f59dbef5f8a40.md) | 182 | `result-track:53ebf2ef5d4f59dbef5f8a40eafb1ab4c7704c6b4e3b43cf0703afd91b5d060e` |
| 21 | `theorem` | [conj_normalizedRightContribution](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/conj-normalizedrightcontribution--00b6a2b557854a199a7735e9.md) | 203 | `result-track:00b6a2b557854a199a7735e9bc47cbd570054a414ca46e1c877a81b92324c118` |
| 22 | `theorem` | [normalizedRightContribution_im_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedrightcontribution-im-eq-zero--1d1d429e03121e4bf6f3a827.md) | 211 | `result-track:1d1d429e03121e4bf6f3a82773fa886f7054f59724adb45e2ac97db799201df0` |
| 23 | `theorem` | [conj_leftEdgeIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/conj-leftedgeintegrand--9b6ee2a987921a0e656fc8c3.md) | 217 | `result-track:9b6ee2a987921a0e656fc8c36d64e5e1a337c23ee2502b6aac191395912ff675` |
| 24 | `theorem` | [conj_leftRawIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/conj-leftrawintegral--52e8a94f4a349fb55039dd34.md) | 227 | `result-track:52e8a94f4a349fb55039dd343a68c9ff6693c8759684930ae2cb860eac37ddf3` |
| 25 | `theorem` | [conj_normalizedLeftContribution](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/conj-normalizedleftcontribution--18aed8dd93140727d1f26676.md) | 248 | `result-track:18aed8dd93140727d1f2667655448a5c34bf6faea53b87ec69aadfc824e2f8f0` |
| 26 | `theorem` | [normalizedLeftContribution_im_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedleftcontribution-im-eq-zero--50490f5b4909e8dc6a6c9ff8.md) | 256 | `result-track:50490f5b4909e8dc6a6c9ff8d661d4ff5a79f47d68b047e237a978cbdcd2e54e` |
| 27 | `theorem` | [normalizedRectangleIndex_re_eq_symmetric_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedrectangleindex-re-eq-symmetric-sum--3f0c4ea793e2b9214f4e65ff.md) | 262 | `result-track:3f0c4ea793e2b9214f4e65ffc02e3072d3600c4797b9b80ef8edb2a29fb5df97` |
| 28 | `theorem` | [normalizedRectangleIndex_eq_ofReal_symmetric_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/normalizedrectangleindex-eq-ofreal-symmetric-sum--baf3d2bd27d06d49ff10ed3e.md) | 274 | `result-track:baf3d2bd27d06d49ff10ed3e22c136f6c6e095e9f0ee494f00e1fb9208b40603` |
| 29 | `theorem` | [horizontal_orientation_control](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/declarations/horizontal-orientation-control--97a914daa8e2e6fc61f7ee7b.md) | 289 | `result-track:97a914daa8e2e6fc61f7ee7bd5bc3e3e3497435b176ad19de11f5506d40afcb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
