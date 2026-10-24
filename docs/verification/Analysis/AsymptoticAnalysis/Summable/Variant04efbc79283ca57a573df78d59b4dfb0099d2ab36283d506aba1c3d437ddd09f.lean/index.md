# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Summable.Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8656058c675251faac70645415ac068a2280c1e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8656058c675251faac70645415ac068a2280c1e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean.json)

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
| 1 | `lemma` | [exists_forall_abs_repr_le_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/exists-forall-abs-repr-le-norm--110d7eb9567be07a0ed80f2a.md) | 39 | `result-track:110d7eb9567be07a0ed80f2add55092cd066906a9a5eb123eb5af4c0872369a4` |
| 2 | `def` | [normBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/normbound--f44ba9f24546c069c28a76ee.md) | 74 | `declaration-track:f44ba9f24546c069c28a76ee0086808efd5079dc80fa212b19f26f35f6cf46e6` |
| 3 | `lemma` | [normBound_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/normbound-pos--aa0c58ef54dd3637a989fced.md) | 77 | `result-track:aa0c58ef54dd3637a989fced4a4efa11df4ee9567cede20da091b0f18a392ea3` |
| 4 | `lemma` | [normBound_spec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/normbound-spec--9124e4f28fa77e56ead47cfa.md) | 80 | `result-track:9124e4f28fa77e56ead47cfaeb84b9b4ddcae02f556d570c59aafaf604042051` |
| 5 | `lemma` | [abs_repr_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/abs-repr-le--2e7e1e86f67d68e9035b8301.md) | 84 | `result-track:2e7e1e86f67d68e9035b83014d2331d3cbe4362797b04bae04e9fc37dae870b9` |
| 6 | `lemma` | [abs_repr_lt_of_norm_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/abs-repr-lt-of-norm-lt--556219084f0c8acb8e1e3f41.md) | 89 | `result-track:556219084f0c8acb8e1e3f414ffaff919ceb52e908986b0d89d67e7f98d18e6d` |
| 7 | `lemma` | [le_norm_of_le_abs_repr](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/le-norm-of-le-abs-repr--0ee7717ea4788b110ae2cd41.md) | 94 | `result-track:0ee7717ea4788b110ae2cd41ba27e55ea4d4c05d3b7750aaf1e90329e39bfbbb` |
| 8 | `lemma` | [sum_piFinset_Icc_rpow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/sum-pifinset-icc-rpow-le--8763adaba01ab29b3f6dc420.md) | 100 | `result-track:8763adaba01ab29b3f6dc4202da140841e56c0dbaaadf862d183a52984cfdd57` |
| 9 | `lemma` | [exists_finsetSum_norm_rpow_le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/exists-finsetsum-norm-rpow-le-tsum--bdafd44de352fabf27efbc4f.md) | 159 | `result-track:bdafd44de352fabf27efbc4f643beeab697d05cb1860fc7b0bcf6a7667c248af` |
| 10 | `def` | [tsumNormRPowBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/tsumnormrpowbound--37428f989e5828f817f24756.md) | 214 | `declaration-track:37428f989e5828f817f247567fa02d159c9dc4ba23278a76ebba90f3ba534840` |
| 11 | `lemma` | [tsumNormRPowBound_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/tsumnormrpowbound-pos--6bf418ec084656505c0aa18b.md) | 217 | `result-track:6bf418ec084656505c0aa18bac1765ecf4caac5234d16653cb102b20a2f71010` |
| 12 | `lemma` | [tsumNormRPowBound_spec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/tsumnormrpowbound-spec--69b1962d0e56e33b10132542.md) | 220 | `result-track:69b1962d0e56e33b10132542d1b3910654066c49466cfa7b7b4e8d524c42a3a6` |
| 13 | `lemma` | [summable_norm_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/summable-norm-rpow--1e888b122d5c43cb80a3c172.md) | 226 | `result-track:1e888b122d5c43cb80a3c172279657c8a3ea914accd3d5f42ac68b2f68313059` |
| 14 | `lemma` | [tsum_norm_rpow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/tsum-norm-rpow-le--2a5ab8498d8c8f8271be17a4.md) | 231 | `result-track:2a5ab8498d8c8f8271be17a40a32ab273b1fe7e59c0d7ca6566ff0d28300e82d` |
| 15 | `lemma` | [summable_norm_sub_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/summable-norm-sub-rpow--baefe0db68c4975251f42399.md) | 237 | `result-track:baefe0db68c4975251f42399776524ce569e0a6111c770d94b07e7d43638612f` |
| 16 | `lemma` | [summable_norm_sub_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/summable-norm-sub-zpow--696e8ff84d0fede85ab97046.md) | 260 | `result-track:696e8ff84d0fede85ab970467b5f4996323dfe69de046418ea8f34524e0fdf7d` |
| 17 | `lemma` | [summable_norm_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/summable-norm-zpow--dde18f769f3eb07c13f8cda4.md) | 264 | `result-track:dde18f769f3eb07c13f8cda46eda9cea093fe022286d0ce0a6875de0b0abed15` |
| 18 | `lemma` | [summable_norm_sub_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/summable-norm-sub-inv-pow--609071b11ed6dbbe26bb5141.md) | 268 | `result-track:609071b11ed6dbbe26bb5141c7c2a8c32cb38e5a8c9c184852cfa24550a40e85` |
| 19 | `lemma` | [summable_norm_pow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/declarations/summable-norm-pow-inv--4640557ab1f214c566d2b9b1.md) | 272 | `result-track:4640557ab1f214c566d2b9b139cac30e1fa728695bb14098588c8c47ba2a0160` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
