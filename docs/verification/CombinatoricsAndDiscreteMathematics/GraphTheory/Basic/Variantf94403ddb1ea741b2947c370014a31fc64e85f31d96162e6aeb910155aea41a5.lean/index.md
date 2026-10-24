# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf55ae93ba2ffec7af600b5d185583612c20d2bf",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf55ae93ba2ffec7af600b5d185583612c20d2bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Copy` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExtremal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/isextremal--aeb5dbf899f0a90792bc270a.md) | 46 | `declaration-track:aeb5dbf899f0a90792bc270adaa6649bb729690e1efcd08c42096d8db3085bc2` |
| 2 | `lemma` | [IsExtremal.prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/isextremal-prop--b38514f4a8b554b69642856e.md) | 49 | `result-track:b38514f4a8b554b69642856ef438e9e5ce4134547127dc5948789d70a2e12461` |
| 3 | `theorem` | [exists_isExtremal_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/exists-isextremal-iff-exists--6218d6d78e2d3d3148ffbde6.md) | 53 | `result-track:6218d6d78e2d3d3148ffbde68cbdbf7a9d197a46b1b972c95951850c575116cd` |
| 4 | `theorem` | [exists_isExtremal_free](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/exists-isextremal-free--3e7d1ace41af2ac366256c2d.md) | 63 | `result-track:3e7d1ace41af2ac366256c2d7341a8abed64ccfd42daaa29bb25b6e837c2c220` |
| 5 | `def` | [extremalNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/extremalnumber--00ad9acebc90167821446740.md) | 76 | `declaration-track:00ad9acebc901678214467402b0cc2db13381b3aac82c36f201fc619ec05fa91` |
| 6 | `theorem` | [extremalNumber_of_fintypeCard_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/extremalnumber-of-fintypecard-eq--69e08ce9989f59830c5479b1.md) | 82 | `result-track:69e08ce9989f59830c5479b14ea2211712e9749b5b6fc62012dab856f3958575` |
| 7 | `theorem` | [card_edgeFinset_le_extremalNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/card-edgefinset-le-extremalnumber--0787307cbe8aff03beda722b.md) | 102 | `result-track:0787307cbe8aff03beda722bdcb7d4abf42bdaed54391cd71e3e342d3a933cc0` |
| 8 | `theorem` | [IsContained.of_extremalNumber_lt_card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/iscontained-of-extremalnumber-lt-card-edgefinset--2b96ba7d8b6fbd464db9292e.md) | 108 | `result-track:2b96ba7d8b6fbd464db9292e3e12385dfde342bf7c12019cad3b2ce943cbd77c` |
| 9 | `theorem` | [extremalNumber_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/extremalnumber-le-iff--1c949dfa9595660344912670.md) | 115 | `result-track:1c949dfa9595660344912670ff71b27d3d98db41aab35505d7a316314ae087f5` |
| 10 | `theorem` | [lt_extremalNumber_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/lt-extremalnumber-iff--2ffe4ccc86a56199a2b947a2.md) | 123 | `result-track:2ffe4ccc86a56199a2b947a2d4bcfe8525f48723d486d53636eb8fac58c15e1c` |
| 11 | `theorem` | [extremalNumber_le_iff_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/extremalnumber-le-iff-of-nonneg--d55ac7127a8c055aeaebdd2f.md) | 132 | `result-track:d55ac7127a8c055aeaebdd2f0e1379a44a2ebd41d1e452e1b7b6ac7a0187df01` |
| 12 | `theorem` | [lt_extremalNumber_iff_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/lt-extremalnumber-iff-of-nonneg--669b320087f1099c60c413bc.md) | 139 | `result-track:669b320087f1099c60c413bc63e9d419d39944fa5d1710e00308639621b19472` |
| 13 | `theorem` | [IsContained.extremalNumber_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/iscontained-extremalnumber-le--975c5378c7b6b459c385040d.md) | 146 | `result-track:975c5378c7b6b459c385040d315a9e26acfa89f6f19d6a7d2405730e21992890` |
| 14 | `theorem` | [extremalNumber_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/extremalnumber-congr--3034a0f6bf6780083dd5799b.md) | 156 | `result-track:3034a0f6bf6780083dd5799b901800122f7b85a1c034df56addc43b727f85faa` |
| 15 | `theorem` | [extremalNumber_congr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/extremalnumber-congr-right--42f0a47709130a308f49d2e7.md) | 172 | `result-track:42f0a47709130a308f49d2e78730a031d23c6eb8b8f9683c4d7e6a7d1fb464b6` |
| 16 | `theorem` | [isExtremal_free_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/isextremal-free-iff--e5ee3c8f66f251bc4d9c1d70.md) | 177 | `result-track:e5ee3c8f66f251bc4d9c1d70095ae9ecefbef417eca26ed0da060683be1cf5a2` |
| 17 | `lemma` | [card_edgeFinset_of_isExtremal_free](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantf94403ddb1ea741b2947c370014a31fc64e85f31d96162e6aeb910155aea41a5.lean/declarations/card-edgefinset-of-isextremal-free--1f04f484bceccd9fcb193675.md) | 182 | `result-track:1f04f484bceccd9fcb193675fb3429c27ab7162f21ca14eb32c0ab60fb480194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
