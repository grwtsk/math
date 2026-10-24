# Verification target: GRWTSK.Algebra.UniversalAlgebra.UniversalEnveloping.Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55c0d8f59acc350be5cfdc2e4b02364afb3bf032",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55c0d8f59acc350be5cfdc2e4b02364afb3bf032`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/rel--896d581807b45ba015932ece.md) | 54 | `declaration-track:896d581807b45ba015932ece7cffa2e3c951fe22e35e5d1246f4bbc503e13c3d` |
| 2 | `def` | [UniversalEnvelopingAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/universalenvelopingalgebra--84bb1a0f7637f2e486db5eac.md) | 61 | `declaration-track:84bb1a0f7637f2e486db5eac7b9f1e572a27248aba9df18e976f6e6dc5089ef1` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/instinhabited--c17ee0db14d806cce582bf1a.md) | 70 | `declaration-track:c17ee0db14d806cce582bf1aca79bc3ce2702f64bb5185bdae109fac7d529bb6` |
| 4 | `instance` | [instRing](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/instring--d136e95bb985c72d716d7e2b.md) | 74 | `declaration-track:d136e95bb985c72d716d7e2b26eea788c6120839b61560388558b04bce9fdffa` |
| 5 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/instalgebra--cfbcab1743d4a13021496054.md) | 78 | `declaration-track:cfbcab1743d4a13021496054578227e76596a6f171081df3cd6b60696e17b722` |
| 6 | `def` | [mkAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/mkalghom--1e62859f4bef5a52e0004553.md) | 85 | `declaration-track:1e62859f4bef5a52e0004553cba92d1406f363fa5d87b6ae401accd630c1e16a` |
| 7 | `def` | [ι](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/anonymous--d97131debbdc6a19abc4e0b2.md) | 93 | `declaration-track:d97131debbdc6a19abc4e0b26ab2f5ba57b680d302c6f8347b75c9f803e3485a` |
| 8 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/lift--e97cc751798058aed6d68762.md) | 105 | `declaration-track:e97cc751798058aed6d68762640162e061e178225e2cc7f0c261aa168a2f9e87` |
| 9 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/lift-symm-apply--bf3a81b2e9e14233ebb413eb.md) | 136 | `result-track:bf3a81b2e9e14233ebb413eb43d2cf062a5a7353e13002541cc204a71b1fd760` |
| 10 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/comp-lift--65f6ab784b1f25c13587fd3e.md) | 142 | `result-track:65f6ab784b1f25c13587fd3e3cc2ebb50693205eed2c166102f7fd0d8f626ce5` |
| 11 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/lift-apply--1730177c61df5f97b273e6b8.md) | 147 | `result-track:1730177c61df5f97b273e6b8bb47beb2bd2fefc204e92f6ad707675bc0d1b04b` |
| 12 | `theorem` | [lift_ι_apply'](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/lift-apply--154e4d736df0319bb5ec1374.md) | 152 | `result-track:154e4d736df0319bb5ec13745ba18ade49591e608137edb1a63efda3cd9492ae` |
| 13 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/lift-unique--36a2dc9df8fca62c88624647.md) | 156 | `result-track:36a2dc9df8fca62c886246470592b65c9a8e0370cbc6a27acda4eaa7fde2b6f0` |
| 14 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Varianta052049d70a0283cfac4865004f962a673a4844a5345e0aa8edf66c976043340.lean/declarations/hom-ext--0389df786a3f22b4ab6663fa.md) | 163 | `result-track:0389df786a3f22b4ab6663fa1f942d630d80f53a9ca655ea3a823bafa11f8e84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
