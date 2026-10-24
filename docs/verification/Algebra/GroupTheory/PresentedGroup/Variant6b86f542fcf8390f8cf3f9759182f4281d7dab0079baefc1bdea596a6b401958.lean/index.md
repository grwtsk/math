# Verification target: GRWTSK.Algebra.GroupTheory.PresentedGroup.Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e991ed7de87d6d5dd9dedbc99d74263836adaf0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e991ed7de87d6d5dd9dedbc99d74263836adaf0`.

Source path: `GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PresentedGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/presentedgroup--06fbc5738351045bcf54c240.md) | 35 | `declaration-track:06fbc5738351045bcf54c2402784aa522fe01c3efdb4f560dadd914f5c56bf17` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/instance--cba45dd7b55b42a65467bb9a.md) | 41 | `declaration-track:cba45dd7b55b42a65467bb9a8c03852d462550f918e08def6a43c626459b6d65` |
| 3 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/of--8456c997a6846aa571da0c95.md) | 46 | `declaration-track:8456c997a6846aa571da0c9513b5f3880550539518a08da48976c15d78750aca` |
| 4 | `theorem` | [closure_rels_subset_ker](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/closure-rels-subset-ker--cbf6946bc9233670173da3b0.md) | 65 | `result-track:cbf6946bc9233670173da3b06be9b1eb20e86dfc7c43dc86a340f2716d4175ae` |
| 5 | `theorem` | [to_group_eq_one_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/to-group-eq-one-of-mem-closure--6c6b1a75057e1ff40cb40a35.md) | 69 | `result-track:6c6b1a75057e1ff40cb40a356c609e5c7fb48447a0342cf4f4e2f1f6f05758fc` |
| 6 | `def` | [toGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/togroup--cb9ed05b7b896d02a756fd38.md) | 75 | `declaration-track:cb9ed05b7b896d02a756fd3818a5624c591ed0db1b99bdf79936c8521acb8182` |
| 7 | `theorem` | [toGroup.of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/togroup-of--5aa9027e7339c48f5014aeac.md) | 80 | `result-track:5aa9027e7339c48f5014aeacd880098d17538f550bef2cbae7190feb4e9cd8b6` |
| 8 | `theorem` | [toGroup.unique](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/togroup-unique--81ee6b54a3f5fb5bcb3d6ab4.md) | 84 | `result-track:81ee6b54a3f5fb5bcb3d6ab4240cc876f9c248906e3b4420636cd70df3790390` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958.lean/declarations/instance--a03f259b74b5db0b85c67fcc.md) | 93 | `declaration-track:a03f259b74b5db0b85c67fccf6c0d4c2259f28746d8d505fe0fba463b459a79d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
