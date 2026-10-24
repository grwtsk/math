# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Newton.Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba02692cff946c5f06ab074f2ec00b10023b9943",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba02692cff946c5f06ab074f2ec00b10023b9943`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Identities` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Nilpotent` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [newtonMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/newtonmap--0b5bff7a1ea9fe17c45395d3.md) | 44 | `declaration-track:0b5bff7a1ea9fe17c45395d309c7c6020fce51a23876fb2af42b539b331cdf44` |
| 2 | `theorem` | [newtonMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/newtonmap-apply--600aa5f83b2d2b0aba76fa03.md) | 47 | `result-track:600aa5f83b2d2b0aba76fa0397f669779e03d99ea43d6ee2897b42a7522e8cfc` |
| 3 | `theorem` | [newtonMap_apply_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/newtonmap-apply-of-isunit--807c85cc94c82f12d4e8f345.md) | 53 | `result-track:807c85cc94c82f12d4e8f3453f1063dc7a5f19e7ef9aa073102146356fc284a4` |
| 4 | `theorem` | [newtonMap_apply_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/newtonmap-apply-of-not-isunit--7e716f371ffe26e0fe3ba03e.md) | 57 | `result-track:7e716f371ffe26e0fe3ba03eb1e3bebcb03abb972738e645ce4b0068e4d39a93` |
| 5 | `theorem` | [isNilpotent_iterate_newtonMap_sub_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/isnilpotent-iterate-newtonmap-sub-of-isnilpotent--19b29655a6ce539a47e349ab.md) | 61 | `result-track:19b29655a6ce539a47e349ab12e5b922f1a24e1234c0892f44aa9c88f37971b0` |
| 6 | `theorem` | [isFixedPt_newtonMap_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/isfixedpt-newtonmap-of-aeval-eq-zero--ebde186832729c0e0f921acf.md) | 71 | `result-track:ebde186832729c0e0f921acfd4079bee11861027f478ff0a4d66e1e25033974d` |
| 7 | `theorem` | [isFixedPt_newtonMap_of_isUnit_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/isfixedpt-newtonmap-of-isunit-iff--54fc64451d917c4b64e556fa.md) | 75 | `result-track:54fc64451d917c4b64e556fa86120b9151e46e281d2ccda33cfbb54bdbedead8` |
| 8 | `theorem` | [aeval_pow_two_pow_dvd_aeval_iterate_newtonMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/aeval-pow-two-pow-dvd-aeval-iterate-newtonmap--d1f0d2c3567e67ae65a274f4.md) | 81 | `result-track:d1f0d2c3567e67ae65a274f4519857d9569b9a1e9dd302883dd61de2c645f2c2` |
| 9 | `theorem` | [existsUnique_nilpotent_sub_and_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/declarations/existsunique-nilpotent-sub-and-aeval-eq-zero--ce655bbcab41b886b0019ca1.md) | 106 | `result-track:ce655bbcab41b886b0019ca1fa236c1720c2dab4afeed231ad7f0b055519efb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
