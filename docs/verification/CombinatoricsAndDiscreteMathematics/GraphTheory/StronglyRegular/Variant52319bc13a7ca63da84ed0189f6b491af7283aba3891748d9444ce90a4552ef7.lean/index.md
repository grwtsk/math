# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.StronglyRegular.Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "335b84b790d194581b260b50a45576edcb3ad0dd",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `335b84b790d194581b260b50a45576edcb3ad0dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSRGWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith--8396596d2de5353381172d9c.md) | 50 | `declaration-track:8396596d2de5353381172d9cbc337b105e19b0801f63f984109684f39b1c6194` |
| 2 | `theorem` | [bot_strongly_regular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/bot-strongly-regular--fda39b433677c18372876f7d.md) | 60 | `result-track:fda39b433677c18372876f7d5962b1561cde2528de9b7184116984119e99d23f` |
| 3 | `theorem` | [IsSRGWith.ediam_eq_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-ediam-eq-two--e0d3a3db28794b8976a45e45.md) | 69 | `result-track:e0d3a3db28794b8976a45e4561bfa2cfbca89168db0563adc33d4f0f591b82f3` |
| 4 | `theorem` | [IsSRGWith.top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-top--d7163f26b36316d9cc246f3c.md) | 86 | `result-track:d7163f26b36316d9cc246f3c162a1421ff52a90ed4c6418fa94cb0e3e22d82f4` |
| 5 | `theorem` | [IsSRGWith.card_neighborFinset_union_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-card-neighborfinset-union-eq--9ac76b5d09683c18d8afcdba.md) | 94 | `result-track:9ac76b5d09683c18d8afcdba1cd3fdc60624116f91f6c666d5f2518db83cc1ee` |
| 6 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-card-neighborfinset-union-of-not-adj--f89d66ef3f9ce37f5813d3c2.md) | 107 | `result-track:f89d66ef3f9ce37f5813d3c215f759e4e60e84f775c89ca1f7fcd4a2c21a9c6d` |
| 7 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-card-neighborfinset-union-of-adj--42b2d0aa986b3ac8393c0141.md) | 113 | `result-track:42b2d0aa986b3ac8393c0141c0a9232d20531d1e154d186c717a81237c71e81a` |
| 8 | `theorem` | [compl_neighborFinset_sdiff_inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/compl-neighborfinset-sdiff-inter-eq--e57f0b2d693d4c971115944d.md) | 118 | `result-track:e57f0b2d693d4c971115944d85dfa8c492f4ed8940d96afc3bd3972ec1e50592` |
| 9 | `theorem` | [sdiff_compl_neighborFinset_inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/sdiff-compl-neighborfinset-inter-eq--aeaa4e1c784e3a71c09885ff.md) | 123 | `result-track:aeaa4e1c784e3a71c09885ff5ce116f5073f9140622c143eaede0dca56f8118b` |
| 10 | `theorem` | [IsSRGWith.compl_is_regular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-compl-is-regular--daf28c3a8ef2741c18a627cb.md) | 128 | `result-track:daf28c3a8ef2741c18a627cb120f36706e5952924409c2296a6292ab7f4e25cf` |
| 11 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_adj_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-card-commonneighbors-eq-of-adj-compl--db0f8f20a920f9adf5343532.md) | 133 | `result-track:db0f8f20a920f9adf534353205bceb02868fcee5ac9365c2d8224d4d40324512` |
| 12 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_not_adj_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-card-commonneighbors-eq-of-not-adj-compl--5cd8534264ae4ca54e6dba9f.md) | 148 | `result-track:5cd8534264ae4ca54e6dba9fb1779d027558c732806795d30aeeec1bcbd6b199` |
| 13 | `theorem` | [IsSRGWith.compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-compl--20b3eb920ad4055aed25a28f.md) | 159 | `result-track:20b3eb920ad4055aed25a28f81bd5a3b412cb5aed711e888290b59c24c19120d` |
| 14 | `theorem` | [IsSRGWith.param_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-param-eq--e4b991fa5ab70b5d45172715.md) | 168 | `result-track:e4b991fa5ab70b5d45172715c78521f2ae0b58d6bfadc31fb7fc4d1a2bab0077` |
| 15 | `theorem` | [IsSRGWith.matrix_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/declarations/issrgwith-matrix-eq--c30bb634a45b8a58614c2b89.md) | 205 | `result-track:c30bb634a45b8a58614c2b897cca06d81a0a5b13da522eb6899f61ff48321fad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
