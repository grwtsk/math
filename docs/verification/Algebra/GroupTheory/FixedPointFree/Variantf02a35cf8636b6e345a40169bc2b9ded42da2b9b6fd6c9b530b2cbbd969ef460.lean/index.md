# Verification target: GRWTSK.Algebra.GroupTheory.FixedPointFree.Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ffe533345b4d9214d7cafbf36f8c8a9b766f41c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ffe533345b4d9214d7cafbf36f8c8a9b766f41c`.

Source path: `GRWTSK/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedPointFree](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/fixedpointfree--c5e1f7f1ac72f3514d245d2f.md) | 33 | `declaration-track:c5e1f7f1ac72f3514d245d2f42544ac6cb4ed5de601a87a3c2a936cae6da820e` |
| 2 | `def` | [commutatorMap](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/commutatormap--c4f353d77ce29b1b866bfefb.md) | 37 | `declaration-track:c4f353d77ce29b1b866bfefb1b5f207acd94c0b6e64d68eae29a2d418fbbafed` |
| 3 | `theorem` | [commutatorMap_apply](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/commutatormap-apply--df58011c76cfe2d6c18e0606.md) | 39 | `result-track:df58011c76cfe2d6c18e0606f7b108066fea87bed4b8194c4d4cbead29f27b3b` |
| 4 | `theorem` | [commutatorMap_injective](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/commutatormap-injective--61ebaa58f764c89367500cbe.md) | 46 | `result-track:61ebaa58f764c89367500cbe12563486adb5d6ca6e52007a9f8e34968f708f47` |
| 5 | `theorem` | [commutatorMap_surjective](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/commutatormap-surjective--1edb43f7cafdd3ac64d2aa9f.md) | 52 | `result-track:1edb43f7cafdd3ac64d2aa9f68124cf3a0682980d08e83cf2845c85da34256ea` |
| 6 | `theorem` | [prod_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/prod-pow-eq-one--bee171fce95b0c776b083d9d.md) | 55 | `result-track:bee171fce95b0c776b083d9d6fb2b203ae7b102e5334cac73b331d2d000f2722` |
| 7 | `theorem` | [coe_eq_inv_of_sq_eq_one](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/coe-eq-inv-of-sq-eq-one--7a6175d09f9690f7386b7151.md) | 61 | `result-track:7a6175d09f9690f7386b7151761603157616e81359fba4e575205a1e419deed6` |
| 8 | `theorem` | [coe_eq_inv_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/coe-eq-inv-of-involutive--c95e1c68ce202e8235a0e15f.md) | 68 | `result-track:c95e1c68ce202e8235a0e15f0ef726750985dff7e2b161308e4521528c67fb2b` |
| 9 | `theorem` | [commute_all_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/commute-all-of-involutive--bebce31f36244961526328ef.md) | 72 | `result-track:bebce31f36244961526328ef5b54dff8bfad010e51b7f1b93e214be8b189785d` |
| 10 | `def` | [commGroupOfInvolutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/commgroupofinvolutive--49d7882d4ac8a35ea9c0a1a8.md) | 78 | `declaration-track:49d7882d4ac8a35ea9c0a1a868507a2a90cd77daa3b04876bc6004f3fe58e002` |
| 11 | `theorem` | [orderOf_ne_two_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/orderof-ne-two-of-involutive--fdb672ddce8b0c74255223bb.md) | 81 | `result-track:fdb672ddce8b0c74255223bb0014f261ae51d5f9002f0c00c62a898f70a4dfa8` |
| 12 | `theorem` | [odd_card_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/odd-card-of-involutive--4c938db7774e6d7982c9aa53.md) | 89 | `result-track:4c938db7774e6d7982c9aa5360fe0c95845843068313bced00772bab8f9cd241` |
| 13 | `theorem` | [odd_orderOf_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/declarations/odd-orderof-of-involutive--4ddd54e1ea3a5ee0f955bc85.md) | 97 | `result-track:4ddd54e1ea3a5ee0f955bc8544163cab772725b77ab514e7163f74315d172deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
