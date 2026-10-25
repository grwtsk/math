# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Engel.Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95f682c941e212184e88fe146452b23142aafbe1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95f682c941e212184e88fe146452b23142aafbe1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smul_add_of_span_sup_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/exists-smul-add-of-span-sup-eq-top--f32232c113138933bc61337f.md) | 92 | `result-track:f32232c113138933bc61337f74db26e6983032833ef51fdb24315044bff464bb` |
| 2 | `theorem` | [lie_top_eq_of_span_sup_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/lie-top-eq-of-span-sup-eq-top--3ff38186b69aec200028c3a1.md) | 99 | `result-track:3ff38186b69aec200028c3a1bcdbb5f0535f3cae05c08bfd5f0412ad92204731` |
| 3 | `theorem` | [lcs_le_lcs_of_is_nilpotent_span_sup_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/lcs-le-lcs-of-is-nilpotent-span-sup-eq-top--848fe12def9ef9eb70fd6018.md) | 115 | `result-track:848fe12def9ef9eb70fd60184f172e716f6bc70ced3ed2a3458a2a7e4a69e8b2` |
| 4 | `theorem` | [isNilpotentOfIsNilpotentSpanSupEqTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/isnilpotentofisnilpotentspansupeqtop--89daeda6ae48dccf66931258.md) | 138 | `result-track:89daeda6ae48dccf66931258c8f1266e513954c4962e5eafb75fb4cdf7e423d2` |
| 5 | `def` | [LieAlgebra.IsEngelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/liealgebra-isengelian--6cf56f05cf7e07d95d86a43f.md) | 168 | `declaration-track:6cf56f05cf7e07d95d86a43fba73433f6381061e1e223ad262caa990d8c9c95d` |
| 6 | `theorem` | [LieAlgebra.isEngelian_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/liealgebra-isengelian-of-subsingleton--12ec6818f9d1db405e92b807.md) | 177 | `result-track:12ec6818f9d1db405e92b807e286842c12c86e390f082f3b5a41f2314fceae3c` |
| 7 | `theorem` | [Function.Surjective.isEngelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/function-surjective-isengelian--49905851a0271bc3e82d7aa7.md) | 185 | `result-track:49905851a0271bc3e82d7aa719d57ea5ae0d5ce491992c80f373fd5f8e7f4dd2` |
| 8 | `theorem` | [LieEquiv.isEngelian_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/lieequiv-isengelian-iff--4772fb8a7cc7ce13fe7e78a1.md) | 198 | `result-track:4772fb8a7cc7ce13fe7e78a1e96d390e4d07350f26317ec1b8b5a2b9567aee4b` |
| 9 | `theorem` | [LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/liealgebra-exists-engelian-liesubalgebra-of-lt-normalizer--d0ea270a6d42a78ea736c823.md) | 204 | `result-track:d0ea270a6d42a78ea736c823f0a259121f348ffd6eb43131d2a8ab293c848a50` |
| 10 | `theorem` | [LieAlgebra.isEngelian_of_isNoetherian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/liealgebra-isengelian-of-isnoetherian--a2aa8f0bd744c8b0c6a09f42.md) | 240 | `result-track:a2aa8f0bd744c8b0c6a09f42b8d680a32468e4186315bbfbf12095ef2f27d3b9` |
| 11 | `theorem` | [LieModule.isNilpotent_iff_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/liemodule-isnilpotent-iff-forall--1c24d49e694ade86f37d24e3.md) | 295 | `result-track:1c24d49e694ade86f37d24e36f16b25d1847366af2b346991ee48b66f367c519` |
| 12 | `theorem` | [LieAlgebra.isNilpotent_iff_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/declarations/liealgebra-isnilpotent-iff-forall--4f763bdb67f3b1eb1715fc9a.md) | 302 | `result-track:4f763bdb67f3b1eb1715fc9a82921bc9042a6b57963ae00984f610e256a5575b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
