# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d11a4de58785ae5bad25e2ad6b8f24024f6a2cd",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d11a4de58785ae5bad25e2ad6b8f24024f6a2cd`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Abelianization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Centralizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Alternating` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [odd_of_centralizer_le_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/odd-of-centralizer-le-alternatinggroup--092eb6449d2edd8f7252b387.md) | 43 | `result-track:092eb6449d2edd8f7252b387a54d3318af445a39a4fd2390232410cc450a0f10` |
| 2 | `theorem` | [map_subtype_of_cycleType](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/map-subtype-of-cycletype--cc0b0db7a82afdd578c14d50.md) | 65 | `result-track:cc0b0db7a82afdd578c14d50f2efb78d57c117c95e1a360cc15f9d670c48c005` |
| 3 | `theorem` | [card_of_cycleType_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/card-of-cycletype-mul-eq--61114df4fc977ebfef63dc14.md) | 86 | `result-track:61114df4fc977ebfef63dc142b8924af5ffb42debe389ec1ecbd1d8dbae130c1` |
| 4 | `theorem` | [card_of_cycleType](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/card-of-cycletype--63e66dcd81bee9a00f561d66.md) | 99 | `result-track:63e66dcd81bee9a00f561d6653eea3594f9b7f00ae8312aaf80b42869deaba9e` |
| 5 | `lemma` | [card_of_cycleType_singleton](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/card-of-cycletype-singleton--5044dc0dc6c3f225d9065d37.md) | 122 | `result-track:5044dc0dc6c3f225d9065d379ee555fef62f5d5eddfdb3ea82118178d69b6b05` |
| 6 | `theorem` | [card_le_of_centralizer_le_alternating](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/card-le-of-centralizer-le-alternating--9966ffdc745b980dcc2be1f8.md) | 136 | `result-track:9966ffdc745b980dcc2be1f8f1a73665d92900e5dc24a3375f1db7b2b06bc30a` |
| 7 | `theorem` | [count_le_one_of_centralizer_le_alternating](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/count-le-one-of-centralizer-le-alternating--f021e319eee8512554e2b367.md) | 149 | `result-track:f021e319eee8512554e2b367119a0c0b1a991eb2ae2885d72050aaa2fc6461a9` |
| 8 | `theorem` | [OnCycleFactors.kerParam_range_eq_centralizer_of_count_le_one](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/oncyclefactors-kerparam-range-eq-centralizer-of-count-le-one--033ff95385e4751fcea92d05.md) | 201 | `result-track:033ff95385e4751fcea92d058626e795818ec80feff1a65624da8d3babe3af68` |
| 9 | `theorem` | [centralizer_le_alternating_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/centralizer-le-alternating-iff--6980a4fe09c5cc1c7eb85b44.md) | 216 | `result-track:6980a4fe09c5cc1c7eb85b44fc3aae6af208c07aa0f4586b3e3f7ea25a9fe608` |
| 10 | `theorem` | [mem_commutatorSet_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/mem-commutatorset-alternatinggroup--76894e7be8ac0f31e8681a9d.md) | 252 | `result-track:76894e7be8ac0f31e8681a9d5f1aa7c4931ce2be29dcb8480fa684cb1a22bf41` |
| 11 | `theorem` | [mem_commutator_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/mem-commutator-alternatinggroup--0553ecc10ae19ea37a566df1.md) | 257 | `result-track:0553ecc10ae19ea37a566df17f0a2bbaf0a883e3b54e5c47b7fd0165075dcee5` |
| 12 | `theorem` | [alternatingGroup.commutator_perm_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/alternatinggroup-commutator-perm-le--19641e6886dd22c8eb7a1eb0.md) | 270 | `result-track:19641e6886dd22c8eb7a1eb019e989848a731d28bdcf6e6d8bd092ed5c460a6d` |
| 13 | `theorem` | [commutator_alternatingGroup_eq_top](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/commutator-alternatinggroup-eq-top--2a34fc904df1b59345cc8b84.md) | 278 | `result-track:2a34fc904df1b59345cc8b84668aa33b14df3d235772e77f607eeffa6932d15d` |
| 14 | `theorem` | [commutator_alternatingGroup_eq_self](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/commutator-alternatinggroup-eq-self--11b66df91bb564cdfa9ba3c6.md) | 288 | `result-track:11b66df91bb564cdfa9ba3c67d6d7b6571f834e50901ec13eedb7da299dd747d` |
| 15 | `theorem` | [alternatingGroup.commutator_perm_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/declarations/alternatinggroup-commutator-perm-eq--efc1dbeea78a99f3fd7a3dc3.md) | 294 | `result-track:efc1dbeea78a99f3fd7a3dc3911f442ad7f31fa4cf8ed0a820e87a15e0cd137f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
