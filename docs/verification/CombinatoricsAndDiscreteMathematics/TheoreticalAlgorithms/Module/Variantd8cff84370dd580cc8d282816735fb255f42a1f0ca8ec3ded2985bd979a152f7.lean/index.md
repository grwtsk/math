# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Module.Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43836e28bca10b34099d788c97d2f1ae074d6a6d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43836e28bca10b34099d788c97d2f1ae074d6a6d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AtomM` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/nf--c2418f7f901bd1b3faf9887a.md) | 53 | `declaration-track:c2418f7f901bd1b3faf9887ad9daf049f5c4eea57cf3a9c1394b541c3c8202a6` |
| 2 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/cons--8c3f1b3e8dde29fadb039de9.md) | 61 | `declaration-track:8c3f1b3e8dde29fadb039de9edbc43dcdd8683b3a63fd3612c71f41db7696070` |
| 3 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eval--79ede232548900d67ba8b8ab.md) | 68 | `declaration-track:79ede232548900d67ba8b8ab9770ffe14dfcc60c61c34e00861428bed894315b` |
| 4 | `theorem` | [eval_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eval-cons--04edf8a40cdc5e7ca8cbcb65.md) | 70 | `result-track:04edf8a40cdc5e7ca8cbcb6580aff40d20945e4e6e93dccd4cc567cffbff015c` |
| 5 | `theorem` | [atom_eq_eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/atom-eq-eval--b9d77253e59d003cab6e4273.md) | 76 | `result-track:b9d77253e59d003cab6e4273fecd543e0a971adab9b22bcf7463dab082492d94` |
| 6 | `theorem` | [zero_eq_eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/zero-eq-eval--d45183801a745b530f4e18ea.md) | 79 | `result-track:d45183801a745b530f4e18ea2591afca584b44176cea557153516957d8c4288b` |
| 7 | `theorem` | [add_eq_eval₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/add-eq-eval--fae411b43c56501b8f469bbc.md) | 81 | `result-track:fae411b43c56501b8f469bbc0585b9a8c9d655fb2efb46c19491deb57a6646b5` |
| 8 | `theorem` | [add_eq_eval₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/add-eq-eval--d8b12097b61617eb29a2842e.md) | 86 | `result-track:d8b12097b61617eb29a2842e68baa4c0a7eb8f6c7f31260a25c4f9b58f4f5010` |
| 9 | `theorem` | [add_eq_eval₃](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/add-eq-eval--fda8e5d0b721ab13c4e0861f.md) | 95 | `result-track:fda8e5d0b721ab13c4e0861f3a281b260d5698f4dd6c1c2326f5942ae41cd8ee` |
| 10 | `theorem` | [add_eq_eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/add-eq-eval--671dcd43baac77ea03d10270.md) | 104 | `result-track:671dcd43baac77ea03d102706f166400b4af2fd800bfa1dad5ac0443f50906f3` |
| 11 | `theorem` | [sub_eq_eval₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/sub-eq-eval--144fa0f417c77c7b588e89a6.md) | 111 | `result-track:144fa0f417c77c7b588e89a69e8d6e8dfe5d90a122e6f27d0827e901fa35fd68` |
| 12 | `theorem` | [sub_eq_eval₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/sub-eq-eval--fc690cc4e2ad33cd24686d82.md) | 116 | `result-track:fc690cc4e2ad33cd24686d820a5e45cb31c22c19f586b3051bc7186ff627859e` |
| 13 | `theorem` | [sub_eq_eval₃](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/sub-eq-eval--d8d5538b276f70b58fe57832.md) | 125 | `result-track:d8d5538b276f70b58fe57832becac69f24672485072f5701e56d208706e70b6c` |
| 14 | `theorem` | [sub_eq_eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/sub-eq-eval--2600a91e7d15d91c82946b09.md) | 132 | `result-track:2600a91e7d15d91c82946b096f49114877b578c00aed744c5b7b9691955b10cc` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/instance--a4ed188809a1420a93fa5408.md) | 141 | `declaration-track:a4ed188809a1420a93fa540878617aa7dc203ab8ee3ce7a78e2a70c1c10c2ae5` |
| 16 | `theorem` | [eval_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eval-neg--58acef4674d379fba5ee63d3.md) | 144 | `result-track:58acef4674d379fba5ee63d374b4f5719b486466aaf52117f3b28be4b459016b` |
| 17 | `theorem` | [zero_sub_eq_eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/zero-sub-eq-eval--5d68bfa0efbeb63c9811fbaf.md) | 150 | `result-track:5d68bfa0efbeb63c9811fbaf1ec1376e50585b6adf8f4fb565cc3ec47a5d296a` |
| 18 | `theorem` | [neg_eq_eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/neg-eq-eval--c784e1fae61f1a16a1319193.md) | 154 | `result-track:c784e1fae61f1a16a1319193792b2e54c7abac643560c0824b6a331a9376a3d2` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/instance--e956db8e4f8817952adeed00.md) | 159 | `declaration-track:e956db8e4f8817952adeed003bba8af01709bfdc35e9a7044e731b8f4b772bc0` |
| 20 | `theorem` | [smul_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/smul-apply--614d0483d6bf5eae735241c6.md) | 162 | `result-track:614d0483d6bf5eae735241c6ea09482b959c9c028d1f880e2005263ed4534279` |
| 21 | `theorem` | [eval_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eval-smul--de7c7ae282505d9a1c3fe81b.md) | 165 | `result-track:de7c7ae282505d9a1c3fe81b9bbaff3c02a19983d4f24e369000d6f437a69c93` |
| 22 | `theorem` | [smul_eq_eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/smul-eq-eval--7539356a730f615ffdfb5e77.md) | 173 | `result-track:7539356a730f615ffdfb5e77a0bbd3eaf0f18151284d78ff65a5d8acbc793694` |
| 23 | `theorem` | [eq_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eq-cons-cons--7c7c40b75bdc9e4ff2097810.md) | 180 | `result-track:7c7c40b75bdc9e4ff209781008c5cbfe4bb0b44e1b53fa4c3106efcef822ac5f` |
| 24 | `theorem` | [eq_cons_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eq-cons-const--79b0b0d944dba077cfaae045.md) | 186 | `result-track:79b0b0d944dba077cfaae0455bb29f9afc22f17deb9ea18c1fe424d9880e30e6` |
| 25 | `theorem` | [eq_const_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eq-const-cons--b5499bc2b6d0bf29ec808309.md) | 192 | `result-track:b5499bc2b6d0bf29ec808309a4a5d036c87d8dbf1c0e7d57808f7f167d281d2b` |
| 26 | `theorem` | [eq_of_eval_eq_eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eq-of-eval-eq-eval--fa6e615df1cd2d65a439fe90.md) | 198 | `result-track:fa6e615df1cd2d65a439fe901722611288ef56bb2e02028cffde5ebae7f65157` |
| 27 | `def` | [algebraMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/algebramap--8944550bf9617faeccd50a0e.md) | 210 | `declaration-track:8944550bf9617faeccd50a0ef7b25cba5e2c862ec039ef28b91ff274e05f7e16` |
| 28 | `theorem` | [eval_algebraMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/eval-algebramap--e3ce20a26e7631f966273b67.md) | 213 | `result-track:e3ce20a26e7631f966273b673d2db29d433d59d549804d6cbd479675f80c65f8` |
| 29 | `abbrev` | [qNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/qnf--33b0ba585482d62725639d81.md) | 240 | `declaration-track:33b0ba585482d62725639d818d902164a144504899030cae87a15f7607cfdc14` |
| 30 | `def` | [toNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/tonf--89efd9c3297f1433bc937a3f.md) | 249 | `declaration-track:89efd9c3297f1433bc937a3f9d00e7c2c57dacbb6806a9d3112b792302489d94` |
| 31 | `def` | [onScalar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/onscalar--ddbafb98a44d55d73a97aa7a.md) | 257 | `declaration-track:ddbafb98a44d55d73a97aa7ac2d323dfef20fb4846af410af7a9df788107a136` |
| 32 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/add--38ea32eb8380498c1fc7a716.md) | 273 | `declaration-track:38ea32eb8380498c1fc7a716378cc910d710bec7686b31106044af1aa3003822` |
| 33 | `def` | [mkAddProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/mkaddproof--88366fc9d51a3ac3e5222b7d.md) | 288 | `declaration-track:88366fc9d51a3ac3e5222b7dd6ffdf0af2e8c4ab1b100fda0c14efa00c8c436e` |
| 34 | `def` | [sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/sub--8e760e15a39529e0cf68cf9f.md) | 318 | `declaration-track:8e760e15a39529e0cf68cf9fab24604623b336d0687af10dd76ef32a28cfdea5` |
| 35 | `def` | [mkSubProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/mksubproof--80655e9880f2759764eb5e3f.md) | 333 | `declaration-track:80655e9880f2759764eb5e3f258b425cd4973a37caad326335b598f192c402f9` |
| 36 | `def` | [matchRings](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/matchrings--a0c151b58249d7421e35bcd6.md) | 363 | `declaration-track:a0c151b58249d7421e35bcd60c875749355185506a8577a89444d7b326dc37ee` |
| 37 | `def` | [parse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/parse--f2cb035bc66d910fac6fc164.md) | 418 | `declaration-track:f2cb035bc66d910fac6fc164e6738ade548de2ccbbbf09ed4421d3d541e4a33d` |
| 38 | `def` | [reduceCoefficientwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/reducecoefficientwise--01d45ace5f488f12294ea3a3.md) | 485 | `declaration-track:01d45ace5f488f12294ea3a35ed6c93a1dd2077775527568fc21581e0cfd130b` |
| 39 | `def` | [matchScalarsAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/matchscalarsaux--0085ec19e683079c06663110.md) | 527 | `declaration-track:0085ec19e683079c06663110ac223c817177446f4c20a44e37419750cce442b7` |
| 40 | `def` | [algebraMapThms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/algebramapthms--c44eb5226abbdaf06767506e.md) | 569 | `declaration-track:c44eb5226abbdaf06767506e056eaff59c8728b4fa979955db0aba52671e2d78` |
| 41 | `def` | [postprocess](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/postprocess--f1ec8cbb59f8afbb23958548.md) | 576 | `declaration-track:f1ec8cbb59f8afbb23958548438109a7009887de8d30195da7d0cb9bed3ac9d8` |
| 42 | `def` | [matchScalars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/matchscalars--e001e4285bd09c5d14369712.md) | 592 | `declaration-track:e001e4285bd09c5d143697125f832fa7b0862d06521adde7928252248859579a` |
| 43 | `elab` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/elab--680317197a9617e3be208757.md) | 628 | `declaration-track:680317197a9617e3be208757b15e5aa2b819caedc1fd8c5ac1385b5cbc358085` |
| 44 | `elab` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/declarations/elab--690d0ccb45cc474b07ba2e73.md) | 658 | `declaration-track:690d0ccb45cc474b07ba2e73e8d130510483ba63e8a39f54587bffc0455e68bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
