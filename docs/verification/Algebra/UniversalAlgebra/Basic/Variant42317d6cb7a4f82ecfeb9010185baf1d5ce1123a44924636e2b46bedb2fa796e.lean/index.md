# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6537fd332f236b6431606f60673827f9dd5f8c5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6537fd332f236b6431606f60673827f9dd5f8c5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJordan](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/isjordan--e2923170c34b41ac80ab0c92.md) | 86 | `declaration-track:e2923170c34b41ac80ab0c920625bd149a7e35c519ef4aea226edad3149bbc19` |
| 2 | `class` | [IsCommJordan](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/iscommjordan--b428179c3e4971781adfb929.md) | 94 | `declaration-track:b428179c3e4971781adfb929bf8e40a0149b82b356c86143765005149215ed70` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/instance--83a39183563cc831d2bf15bd.md) | 99 | `declaration-track:83a39183563cc831d2bf15bda79d29f9a1f31f13763a1bc58e7d2bb8b43a5e6b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/instance--5c42a5648c2e5f2416bf8423.md) | 113 | `declaration-track:5c42a5648c2e5f2416bf8423f940710edd7ef0dd316aaf6dec395225394ae46c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/instance--5fccb802e0667ba49ca68d0c.md) | 121 | `declaration-track:5fccb802e0667ba49ca68d0cc744fd64c7d1b4d62e89b7b3815cecf2495d84b3` |
| 6 | `theorem` | [commute_lmul_rmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/commute-lmul-rmul--8c3f4e10fb5e7f5e47037b5b.md) | 138 | `result-track:8c3f4e10fb5e7f5e47037b5b54bcbc293b89e597b5470b7ccf0150ebf6466643` |
| 7 | `theorem` | [commute_lmul_lmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/commute-lmul-lmul-sq--62c7571a1c6886392630742f.md) | 142 | `result-track:62c7571a1c6886392630742f3510b37a241238c7b3e1d00e19aa3252a2e40e52` |
| 8 | `theorem` | [commute_lmul_rmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/commute-lmul-rmul-sq--621870bf845b523c3ac54e57.md) | 146 | `result-track:621870bf845b523c3ac54e57266d8698f8adab9c3ae35110022ad6791944efcb` |
| 9 | `theorem` | [commute_lmul_sq_rmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/commute-lmul-sq-rmul--175a2e348a3ff05f534b56a9.md) | 150 | `result-track:175a2e348a3ff05f534b56a9cb4ee75ae5f81e77659888a7c4291bce6fef0fa8` |
| 10 | `theorem` | [commute_rmul_rmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/commute-rmul-rmul-sq--62e051f5f51e863abdc9c313.md) | 154 | `result-track:62e051f5f51e863abdc9c31317f4d09d84d8aae7681774de755012e08599b1a6` |
| 11 | `theorem` | [two_nsmul_lie_lmul_lmul_add_eq_lie_lmul_lmul_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/two-nsmul-lie-lmul-lmul-add-eq-lie-lmul-lmul-add--62a36c44af7e9180ce0c96ae.md) | 166 | `result-track:62a36c44af7e9180ce0c96ae5b9d15cf14ea3a919c64bb84089a1e8362f175e2` |
| 12 | `theorem` | [aux0](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/aux0--953bea14b0385276c4c611a0.md) | 177 | `result-track:953bea14b0385276c4c611a09809b8f94e2798c719a956489f0be2b4c5167b62` |
| 13 | `theorem` | [aux1](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/aux1--aff9daaf542fdda6417bd6ac.md) | 188 | `result-track:aff9daaf542fdda6417bd6ac7e3d340be0d12e382f70bef54cc689ee57e8c8fc` |
| 14 | `theorem` | [aux2](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/aux2--eafabe6e0e5d35d6ca54ffd0.md) | 203 | `result-track:eafabe6e0e5d35d6ca54ffd083e1ebd8883ea9304b3a323cef4bb852f2aa612e` |
| 15 | `theorem` | [aux3](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/aux3--af2bfe35f48b16e15ceb07fb.md) | 220 | `result-track:af2bfe35f48b16e15ceb07fbb783be533a704045387f797326c8feccd241e01d` |
| 16 | `theorem` | [two_nsmul_lie_lmul_lmul_add_add_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/declarations/two-nsmul-lie-lmul-lmul-add-add-eq-zero--05ceb6a05832af6028fb2cd1.md) | 236 | `result-track:05ceb6a05832af6028fb2cd11adbb354f8b133cbccee1416a0f070bc615f45c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
