# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.WithAbs.Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "034ad98acb7e5cae54bfdb3bca9542574f1286aa",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `034ad98acb7e5cae54bfdb3bca9542574f1286aa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/withabs--c6d81e535e9356db24577b94.md) | 35 | `declaration-track:c6d81e535e9356db24577b945c0509fcbb21f7ec8c339b4c4aa270d7c39342b6` |
| 2 | `instance` | [instNontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instnontrivial--8b628085f7fc5f04ff14535c.md) | 43 | `declaration-track:8b628085f7fc5f04ff14535c0d907c4c7fd910f23533c1dc8278375cea0f1a0b` |
| 3 | `instance` | [instUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instunique--a9f2501b92c7d7917c50281e.md) | 45 | `declaration-track:a9f2501b92c7d7917c50281e721a9b568889bfc2f8bd2e5122acd1097bcd576f` |
| 4 | `instance` | [instSemiring](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instsemiring--56579532078e08227ea81521.md) | 47 | `declaration-track:56579532078e08227ea8152118e6b74cf671ba3ac21df17bdd13ee114df9589a` |
| 5 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instinhabited--b2f205da3b69b0e7392588a5.md) | 49 | `declaration-track:b2f205da3b69b0e7392588a53840bbfd83a8729a8a93ae9f11ecedec169829a3` |
| 6 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv--3c088925d035cf6ab365f3a8.md) | 52 | `declaration-track:3c088925d035cf6ab365f3a8c9aa01cafb8dcdcf8999ff8758edb90930407cf0` |
| 7 | `def` | [ringEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/ringequiv--6d518c691bbd940676119e3d.md) | 56 | `declaration-track:6d518c691bbd940676119e3deee0adad4e9021ee7082ab3134c1f2ed9480d9e0` |
| 8 | `instance` | [instCommSemiring](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instcommsemiring--500286ba61c1a888fd4b7cd7.md) | 62 | `declaration-track:500286ba61c1a888fd4b7cd7094f52029b94499b4f7d4ac357559719d1741f2d` |
| 9 | `instance` | [instRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instring--1c99488fede33e887f39f486.md) | 65 | `declaration-track:1c99488fede33e887f39f486a804b0bdcba7e7fa297738f37d857c8e5e07b30e` |
| 10 | `instance` | [instCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instcommring--f51d3a625161782a98267258.md) | 67 | `declaration-track:f51d3a625161782a982672582ae74021a04919b1b1e5664f807e6485c6e2de7c` |
| 11 | `instance` | [normedRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/normedring--bd1e294174787f502353308b.md) | 70 | `declaration-track:bd1e294174787f502353308b2f17e2724f7ef38be54cce32b71e2ba8239b7257` |
| 12 | `lemma` | [norm_eq_abv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/norm-eq-abv--026159d7b6522e7790021807.md) | 73 | `result-track:026159d7b6522e7790021807e573855252797632c494b5387c273e7cfc2c06c9` |
| 13 | `instance` | [instModule_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instmodule-left--a4244c70f83cdf1fdc5eb168.md) | 82 | `declaration-track:a4244c70f83cdf1fdc5eb168ed37c5fc7c5bc947dc49e4dfc60be437ba642f7a` |
| 14 | `instance` | [instModule_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instmodule-right--14c1d36a44c8d8a5770719eb.md) | 86 | `declaration-track:14c1d36a44c8d8a5770719eb5ae93429548fe752688ad4f288f86e2d336c3e0a` |
| 15 | `instance` | [instAlgebra_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instalgebra-left--320a5d44395184014c41271a.md) | 96 | `declaration-track:320a5d44395184014c41271a331f3620f28c318f3d3313a43113d70c5fd0486c` |
| 16 | `instance` | [instAlgebra_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/instalgebra-right--2621b58b963b587fc6c1333e.md) | 99 | `declaration-track:2621b58b963b587fc6c1333e5306247e6dfca5bf4817e32e1e3110a26989734b` |
| 17 | `def` | [algEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/algequiv--3860b8e63636e998e0a7a4e4.md) | 104 | `declaration-track:3860b8e63636e998e0a7a4e4c4001bd6355eaafb4cd904d73ed9c5ccbdf85fee` |
| 18 | `theorem` | [equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-zero--5f61aeee5961f576a0114dbb.md) | 120 | `result-track:5f61aeee5961f576a0114dbbdac142adf52a6eb84bb8f8f9fd8ff8b91942ddac` |
| 19 | `theorem` | [equiv_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-symm-zero--ff9158b4a0200f5b87402171.md) | 123 | `result-track:ff9158b4a0200f5b874021713897ab837159757163bc6f99b2caaed0efaff941` |
| 20 | `theorem` | [equiv_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-add--a3b9914691dc3928728ffd83.md) | 126 | `result-track:a3b9914691dc3928728ffd83923990b694df070aab228cffc19a933eb397477d` |
| 21 | `theorem` | [equiv_symm_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-symm-add--4583753583272ced996d819b.md) | 129 | `result-track:4583753583272ced996d819b92d35f4ab826f4144684c0a1909ba17bfde304b6` |
| 22 | `theorem` | [equiv_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-mul--d7d6f00b407ab39725e96147.md) | 132 | `result-track:d7d6f00b407ab39725e961473ef47bee5d98d3e101bdad813b5b3d559bff0c4d` |
| 23 | `theorem` | [equiv_symm_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-symm-mul--0992940cdcc22bd16b92cbcc.md) | 135 | `result-track:0992940cdcc22bd16b92cbcc8710c4fa621a2861d32050e6cd8e83788affe794` |
| 24 | `theorem` | [equiv_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-sub--274107ff67f7236059485357.md) | 144 | `result-track:274107ff67f7236059485357e372ef944500eb0265b986c8217bd3b6fb299299` |
| 25 | `theorem` | [equiv_symm_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-symm-sub--9de1f24baef2ca35c9156569.md) | 147 | `result-track:9de1f24baef2ca35c9156569cfbac396f9997123974a6a1e5dba2a3fb99b904d` |
| 26 | `theorem` | [equiv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-neg--99a155a01d9387b32ee8071f.md) | 150 | `result-track:99a155a01d9387b32ee8071fb5114aabc9dc8d8f0146f4d3dc73a752d22ed379` |
| 27 | `theorem` | [equiv_symm_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithAbs/Variant83489db07559f19300a201995f0122ce8f117f621ea9aa82273586fb91b0dcae.lean/declarations/equiv-symm-neg--2b2d993270e10e42c6234f1f.md) | 153 | `result-track:2b2d993270e10e42c6234f1f28f421a94fe74f876a8e25a1b19745cda5acbc50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
