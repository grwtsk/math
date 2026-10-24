# Verification target: GRWTSK.Algebra.LinearAlgebra.Grassmannian.Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95eff18f9add49527fa5e71e94c88fc279cfe57e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95eff18f9add49527fa5e71e94c88fc279cfe57e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.QuotientConvention` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pivotTransition](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition--3e6f0ed26e47a6e9d13ca044.md) | 25 | `declaration-track:3e6f0ed26e47a6e9d13ca0445cef16e54716eb776d5fa2c7a0302e504499f0e5` |
| 2 | `theorem` | [pivotTransition_eq_normalized_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-eq-normalized-submatrix--aacfa222b7050eda7d377439.md) | 30 | `result-track:aacfa222b7050eda7d3774397fab13e4defa0bcabccdeeafa232d2118b04f9bd` |
| 3 | `theorem` | [pivotTransition_mul_normalize](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-mul-normalize--6dcc757c6a492432cc168edb.md) | 37 | `result-track:6dcc757c6a492432cc168edbdbfc9fcbedc92b41f6594a1bb9cd32685ea9049d` |
| 4 | `theorem` | [pivotTransition_self](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-self--527dc24ed5e1495b40852197.md) | 44 | `result-track:527dc24ed5e1495b40852197c2280023d487e1be392087a9a9a71597463638ed` |
| 5 | `theorem` | [pivotTransition_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-cocycle--2d94ae7567510148609fba47.md) | 50 | `result-track:2d94ae7567510148609fba470c6e2e5587d90e9ed0f93e8b289ffa3f5b29f259` |
| 6 | `theorem` | [pivotTransition_reverse_mul](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-reverse-mul--354e3d3d65ac21b841e4883d.md) | 58 | `result-track:354e3d3d65ac21b841e4883da573ea83360e7214a54f185aa2bfb3799d0cf8aa` |
| 7 | `theorem` | [det_pivotTransition_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/det-pivottransition-ne-zero--1dd3e062d45be679e572e34a.md) | 65 | `result-track:1dd3e062d45be679e572e34a2b0dcb0c1d9f01a9fdae54b3056d39cb0f7a0153` |
| 8 | `theorem` | [pivotTransition_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-reverse--6ad701ba65fcd806e6d9c104.md) | 73 | `result-track:6ad701ba65fcd806e6d9c104654041aae7bef86522f40e4b1bb8997a9dc01272` |
| 9 | `theorem` | [det_pivotTransition](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/det-pivottransition--864512e2611b378518a7b77b.md) | 87 | `result-track:864512e2611b378518a7b77b47bc9637737285e887aa5c0da0a43ee462f759f1` |
| 10 | `theorem` | [det_pivotTransition_pos](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/det-pivottransition-pos--14127788b89bf6445648bf5e.md) | 94 | `result-track:14127788b89bf6445648bf5ec26e6329bc65ea475e2542dae3af3bd146d20289` |
| 11 | `theorem` | [pivotTransition_eq_of_rowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-eq-of-rowspace-eq--e6b2b89f263c53880391e88e.md) | 102 | `result-track:e6b2b89f263c53880391e88ea638c081f9d09e9ffc2a12ae80e79e84eb120264` |
| 12 | `theorem` | [pivotNormalize_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivotnormalize-mul-left--a4c0c154051016964b2bab62.md) | 110 | `result-track:a4c0c154051016964b2bab626f74ba06d847500dea14dd333d3f4d1cd856af7a` |
| 13 | `theorem` | [pivotTransition_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-mul-left--db8f485c15040e975e1efb35.md) | 120 | `result-track:db8f485c15040e975e1efb35e387024ab8454398bc2e8577b86230fd37bcd44c` |
| 14 | `def` | [pivotCoefficientTransport](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivotcoefficienttransport--b11a9488c2dbc5b5b3e255a5.md) | 128 | `declaration-track:b11a9488c2dbc5b5b3e255a5412f2a0f670ca34a090c4cd8d924df7f3108afa7` |
| 15 | `theorem` | [pivotCoefficientTransport_realize](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivotcoefficienttransport-realize--c422bfed6a1b939c4d42fe55.md) | 133 | `result-track:c422bfed6a1b939c4d42fe550c5fdb1e451fdce72f11b1782e9a93d84803e127` |
| 16 | `theorem` | [pivotCoefficientTransport_comp](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivotcoefficienttransport-comp--a0781c3bdd539b683797f746.md) | 141 | `result-track:a0781c3bdd539b683797f746fc32bcfa411d9e536d13e18b2fa15e056fb29124` |
| 17 | `def` | [pivotCoefficientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivotcoefficientequiv--db9fe28128cb6ee5a9e36da5.md) | 149 | `declaration-track:db9fe28128cb6ee5a9e36da57a337acbcd5f3ec7c6e23e833ce5be9d8e03bb94` |
| 18 | `theorem` | [pivotTransition_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivottransition-zero--58105e1c4d0bfa2935e8a15e.md) | 164 | `result-track:58105e1c4d0bfa2935e8a15e59bc80478b355a5f0ddd285f5f0c9cd2c4255624` |
| 19 | `theorem` | [pivotNormalize_whole](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/pivotnormalize-whole--07af5152eee97f6e92bef10c.md) | 170 | `result-track:07af5152eee97f6e92bef10ce2ea2aca8de41ef68a04955245f5728fcdeccbb6` |
| 20 | `theorem` | [no_fullRankFrame_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/declarations/no-fullrankframe-of-lt--eefb2bac951e960f35b01525.md) | 176 | `result-track:eefb2bac951e960f35b015252d7cb703dc277c753fcc9495685121c5ff0be874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
