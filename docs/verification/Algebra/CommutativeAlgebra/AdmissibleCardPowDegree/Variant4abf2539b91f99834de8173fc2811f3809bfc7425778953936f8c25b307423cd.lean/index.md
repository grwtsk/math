# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AdmissibleCardPowDegree.Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4425896951531ac05803c1cea702ad9f29a24aa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4425896951531ac05803c1cea702ad9f29a24aa`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.CardPowDegree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eq_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/declarations/exists-eq-polynomial--61619c85426ce8462d5da860.md) | 32 | `result-track:61619c85426ce8462d5da8606088c01e66db88c8862c87b84552ecc1af2f93b7` |
| 2 | `theorem` | [exists_approx_polynomial_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/declarations/exists-approx-polynomial-aux--062eb344e1802dff32788aeb.md) | 58 | `result-track:062eb344e1802dff32788aebc4107a43304bc4f70b8e663d788afb99f38b95a9` |
| 3 | `theorem` | [exists_approx_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/declarations/exists-approx-polynomial--73d4f414e56844fb5e04725e.md) | 100 | `result-track:73d4f414e56844fb5e04725ee2d9cb969467f38020bee82b0ab04a50c4e92e3e` |
| 4 | `theorem` | [cardPowDegree_anti_archimedean](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/declarations/cardpowdegree-anti-archimedean--19c018f1e78f953881e6d026.md) | 146 | `result-track:19c018f1e78f953881e6d026a73fcaf2c20fd3ba53b9154981ab747f42d05e60` |
| 5 | `theorem` | [exists_partition_polynomial_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/declarations/exists-partition-polynomial-aux--22fe3f3d55e8918fbb828d97.md) | 170 | `result-track:22fe3f3d55e8918fbb828d97ce1b58ae1fdef9230d3640aab794646c801208f9` |
| 6 | `theorem` | [exists_partition_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/declarations/exists-partition-polynomial--ba0cebbf5d5097d14c27db60.md) | 238 | `result-track:ba0cebbf5d5097d14c27db60b88925eba422334d7edd84695597fc6df15c5a56` |
| 7 | `def` | [cardPowDegreeIsAdmissible](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/declarations/cardpowdegreeisadmissible--d770b6b877ed684d65e7ec95.md) | 247 | `declaration-track:d770b6b877ed684d65e7ec95d60a18fb51ec0675aee9595bd614d7071bc6b9f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
