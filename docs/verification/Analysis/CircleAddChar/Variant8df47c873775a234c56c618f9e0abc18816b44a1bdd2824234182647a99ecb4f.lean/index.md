# Verification target: GRWTSK.Analysis.CircleAddChar.Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dbdcc40a856f5b44d16a6f899819ab0ac7ca988",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/index.md) · [Full source](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dbdcc40a856f5b44d16a6f899819ab0ac7ca988`.

Source path: `GRWTSK/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.AddCharacter` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddCircle.toCircle_addChar](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/addcircle-tocircle-addchar--bafc449853728a4b37a6a354.md) | 26 | `declaration-track:bafc449853728a4b37a6a354c5571c07c8cc63d04719a17aada83975d66c0bab` |
| 2 | `def` | [toCircle](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/tocircle--c800ffb6c240edc5e73b3c0a.md) | 45 | `declaration-track:c800ffb6c240edc5e73b3c0a64437813b15e2a80d245535f883c7e378f93f4c5` |
| 3 | `lemma` | [toCircle_intCast](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/tocircle-intcast--3f69193f3d32e5d2e130a677.md) | 48 | `result-track:3f69193f3d32e5d2e130a6774a13d0e4dbb53ce6f41aa474f55bc282437cbb7b` |
| 4 | `lemma` | [toCircle_natCast](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/tocircle-natcast--5c59748f8dcb2480b43e5c04.md) | 55 | `result-track:5c59748f8dcb2480b43e5c0491eb5eb80ceae33d352686c892ea2267ea06188e` |
| 5 | `lemma` | [toCircle_apply](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/tocircle-apply--9632b51b08c68ef8a1d8268b.md) | 63 | `result-track:9632b51b08c68ef8a1d8268b3c6f77cd5e10d23813ea57aea90de6b01e3bf8c7` |
| 6 | `lemma` | [toCircle_eq_circleExp](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/tocircle-eq-circleexp--a32e4c47c8eb809704299ab5.md) | 67 | `result-track:a32e4c47c8eb809704299ab5f2650317821ef903f64948f1fdd459a710e7e982` |
| 7 | `lemma` | [injective_toCircle](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/injective-tocircle--a408f8a94101412f4967f921.md) | 74 | `result-track:a408f8a94101412f4967f9212b1118ca7e5e7ad11f5dd6de0ce3d0501794fd4a` |
| 8 | `def` | [stdAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/stdaddchar--fe6aa9a15fcd6b14677148d5.md) | 78 | `declaration-track:fe6aa9a15fcd6b14677148d5b9d7c22bbbc248e8bd8c6cdfeb57aa222d8ddcab` |
| 9 | `lemma` | [stdAddChar_coe](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/stdaddchar-coe--42bf86f55a870af51797f2f4.md) | 80 | `result-track:42bf86f55a870af51797f2f463589057229aa3c485aa2a42bf6fceb839f61833` |
| 10 | `lemma` | [stdAddChar_apply](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/stdaddchar-apply--a080e32c71064a84a2d6aaa8.md) | 83 | `result-track:a080e32c71064a84a2d6aaa8d3c0dafc3cb78157a534a91f015dc0fc0d5a77aa` |
| 11 | `lemma` | [injective_stdAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/injective-stdaddchar--19ad38597bba7414abff314b.md) | 85 | `result-track:19ad38597bba7414abff314b1982cc24ece95bf3b7f4143e64a092dc047001b5` |
| 12 | `lemma` | [isPrimitive_stdAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/isprimitive-stdaddchar--e14a92e84a9bbb4da869662e.md) | 89 | `result-track:e14a92e84a9bbb4da869662e0147de91ef0665b6ad320ae0c35cf0b459a7577f` |
| 13 | `def` | [rootsOfUnityAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/rootsofunityaddchar--fba51ff039b2a0a8e0b54c82.md) | 95 | `declaration-track:fba51ff039b2a0a8e0b54c82cac7768bb7f70699fcfb2c0680b6e3b67ab49943` |
| 14 | `lemma` | [rootsOfUnityAddChar_val](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/rootsofunityaddchar-val--2515d3d77887448b38662f76.md) | 101 | `result-track:2515d3d77887448b38662f764c7c0c08f93af80c11996a678468e183f49bc0c8` |
| 15 | `def` | [rootsOfUnitytoCircle](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/rootsofunitytocircle--ce06aec0675b319087535ae9.md) | 110 | `declaration-track:ce06aec0675b319087535ae9a84ce3eb497673857405782d6abb7bb3e70e2702` |
| 16 | `def` | [rootsOfUnityCircleEquiv](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/rootsofunitycircleequiv--846cda61dbec48354ff81780.md) | 118 | `declaration-track:846cda61dbec48354ff81780e1ab01be63e2d2634136d7e5d6d88c394a77c7b6` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/instance--22d28cfc3328c0c26efb8354.md) | 128 | `declaration-track:22d28cfc3328c0c26efb835482b66254a6686b6707174bb41b136943bec46278` |
| 18 | `lemma` | [rootsOfUnityCircleEquiv_apply](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/rootsofunitycircleequiv-apply--970771b9690a7cf3c58818f6.md) | 130 | `result-track:970771b9690a7cf3c58818f6804ae8ab9c0c203e5ffa1f31a59bbda24672ce50` |
| 19 | `lemma` | [rootsOfUnityCircleEquiv_comp_rootsOfUnityAddChar_val](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/rootsofunitycircleequiv-comp-rootsofunityaddchar-val--3a2b585b9a10e9223c92e3a7.md) | 135 | `result-track:3a2b585b9a10e9223c92e3a72843cbe33c71ef2031f6591e67c0144a9bca8d6c` |
| 20 | `theorem` | [surjective_rootsOfUnityCircleEquiv_comp_rootsOfUnityAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/surjective-rootsofunitycircleequiv-comp-rootsofunityaddchar--bccefee56d28eb02f6e120e5.md) | 140 | `result-track:bccefee56d28eb02f6e120e519338eeeb6cb054e213e591654d400e66e34bfb5` |
| 21 | `lemma` | [bijective_rootsOfUnityAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant8df47c873775a234c56c618f9e0abc18816b44a1bdd2824234182647a99ecb4f.lean/declarations/bijective-rootsofunityaddchar--3aa7a24078ae2ea0aa00262f.md) | 145 | `result-track:3aa7a24078ae2ea0aa00262f3eb75a8414fea433557bbb6b8923966b201930e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
