# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Reduce.Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e66ce5f7bde31b471fa77faa8ed42c06bdd42a34",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e66ce5f7bde31b471fa77faa8ed42c06bdd42a34`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Dedup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sublists` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce--b25566877580ae2c8983f006.md) | 42 | `declaration-track:b25566877580ae2c8983f006ba38b4bbbd34753a0f71f306b48116eb0feae09a` |
| 2 | `lemma` | [reduce_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-nil--cceea83acfacc97efb13e0f0.md) | 47 | `result-track:cceea83acfacc97efb13e0f0bd13e4c4e2d62b8f922e3e7b4b761f1e7a75bdb1` |
| 3 | `lemma` | [reduce_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-singleton--61f4d1751d3e6566bbf3fffd.md) | 48 | `result-track:61f4d1751d3e6566bbf3fffd797ccfc5c90c21db0f4a805ff0a3acd60cb1b4b2` |
| 4 | `theorem` | [reduce.cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-cons--eadb50224f827526b4b01884.md) | 51 | `result-track:eadb50224f827526b4b01884d25af12c2aad5816308648246207d1295da6ddb5` |
| 5 | `theorem` | [reduce_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-replicate--be191cb05b305eb5e3b32390.md) | 58 | `result-track:be191cb05b305eb5e3b323902009bc565ac130f7b9bf277081dc9992d9d666bb` |
| 6 | `theorem` | [reduce.red](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-red--e96ac6fd0f57800815649dee.md) | 72 | `result-track:e96ac6fd0f57800815649deef5ac6ea21c8c3bf060584a62f90947b8cdf04760` |
| 7 | `theorem` | [reduce.not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-not--67e90abb82b50374bf177e46.md) | 95 | `result-track:67e90abb82b50374bf177e46e04612068737eff543e2207dfb1db847315b0e3e` |
| 8 | `theorem` | [reduce.min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-min--76c838bd412bdb7ba883edba.md) | 126 | `result-track:76c838bd412bdb7ba883edba01f292bf5ab3df7d1fb4cd5ea5aec4518911ab2e` |
| 9 | `theorem` | [reduce.idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-idem--1a904b371faae717ce87ef7c.md) | 137 | `result-track:1a904b371faae717ce87ef7c02812c3f22c473ccc1aab6cd49c354ddff4d8ba9` |
| 10 | `theorem` | [reduce.Step.eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-step-eq--074b12929c9f8114147fbe8b.md) | 141 | `result-track:074b12929c9f8114147fbe8b9072d81f4a726e179beac0b746f9fd23e4b1e94f` |
| 11 | `theorem` | [reduce.eq_of_red](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-eq-of-red--466ab6ca4c3a9f77d9e6c655.md) | 147 | `result-track:466ab6ca4c3a9f77d9e6c6553b9088cc2f999859e4da7cec635cc46ceed832a5` |
| 12 | `theorem` | [Red.reduce_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/red-reduce-right--c1a431732792ea8469ae8759.md) | 156 | `result-track:c1a431732792ea8469ae87599f550d3456fb98225d50a110b4fc27eb59a688fe` |
| 13 | `theorem` | [Red.reduce_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/red-reduce-left--ff4866e7ca25c57fd4a1467f.md) | 160 | `result-track:ff4866e7ca25c57fd4a1467fcb3843da0b284ed540dd9031ad41443ca21dc02d` |
| 14 | `theorem` | [reduce.sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-sound--00694b59f58f1e3ad511b397.md) | 169 | `result-track:00694b59f58f1e3ad511b397e3fcc3ba32916397d47083d7d9c7726046ff1db6` |
| 15 | `theorem` | [reduce.exact](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-exact--ceac74c84acda0f95ff2f7c6.md) | 177 | `result-track:ceac74c84acda0f95ff2f7c61937f156056e9bd1c6e846d012b30e40a7b89d11` |
| 16 | `theorem` | [reduce.self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-self--2fadeaccf60ea52b22dd267e.md) | 183 | `result-track:2fadeaccf60ea52b22dd267ea6310e9924da7fe15bd802482284d9c47eaf9547` |
| 17 | `theorem` | [reduce.rev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-rev--caa7d52e5b74e2970c139e01.md) | 190 | `result-track:caa7d52e5b74e2970c139e0192c51a2e1f158bde9808508cb1cc7f734fd87eca` |
| 18 | `def` | [toWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword--77c1f4126bba75ff44258826.md) | 196 | `declaration-track:77c1f4126bba75ff44258826ebd53fcb3785071b3c8cb9d0c092dfa2ac0a02f2` |
| 19 | `theorem` | [mk_toWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/mk-toword--2e30e91338dd2545d6db11c4.md) | 200 | `result-track:2e30e91338dd2545d6db11c4592a1a2800b599d567af318cd01327cb418b15b0` |
| 20 | `theorem` | [toWord_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-injective--6ecb66b096bbdf060d887548.md) | 203 | `result-track:6ecb66b096bbdf060d8875488ecc1c1e2d60ded31fa1fd60f02147d016cc87d8` |
| 21 | `theorem` | [toWord_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-inj--e98d395190c54c03bf5d0601.md) | 207 | `result-track:e98d395190c54c03bf5d0601d1662946d88b94492f1d89d596ef76080eb5a3eb` |
| 22 | `theorem` | [toWord_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-mk--7f6d0a572566d1ffc1d2f7c4.md) | 211 | `result-track:7f6d0a572566d1ffc1d2f7c4194f474a45235471bc2889b467183221b1ab0caa` |
| 23 | `theorem` | [toWord_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-of--c53afb5cacdd0134132f03b0.md) | 215 | `result-track:c53afb5cacdd0134132f03b06b00bd8f2e201e9ad06f126931b4db9a13d9d7c9` |
| 24 | `theorem` | [reduce_toWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-toword--c2fadcc0f5ba8fc58d81b971.md) | 219 | `result-track:c2fadcc0f5ba8fc58d81b9716c1dbce78149221c77380d0cde9c061ff89ac3eb` |
| 25 | `theorem` | [toWord_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-one--5ad34de03b35707200997ac5.md) | 224 | `result-track:5ad34de03b35707200997ac593ccc6c68f1f64c62f10ff2794129b5ec727d9bc` |
| 26 | `theorem` | [toWord_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-mul--f0e96bb02064fad20a4908b3.md) | 228 | `result-track:f0e96bb02064fad20a4908b322601569795788855dccbd7835227550e5eb0eea` |
| 27 | `theorem` | [toWord_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-pow--1a500d1ee0b4b709725c546f.md) | 233 | `result-track:1a500d1ee0b4b709725c546f83f84ca4a0765a5404941244c24eb4f94b589a08` |
| 28 | `theorem` | [toWord_of_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-of-pow--6a4a4cd015eaf706bffa3f7c.md) | 239 | `result-track:6a4a4cd015eaf706bffa3f7c25f40b56a274ac78fef1fd7a5647ed07792484ec` |
| 29 | `theorem` | [toWord_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-eq-nil-iff--24c2456431a0256759796211.md) | 244 | `result-track:24c2456431a025675979621176ee885f8eb6f462bde28bd182acda51c6840c57` |
| 30 | `theorem` | [reduce_invRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-invrev--49fc0e64dd759abb50422f98.md) | 248 | `result-track:49fc0e64dd759abb50422f987ee246eadfa217e7e8700739450e8b1395df5b8c` |
| 31 | `theorem` | [toWord_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-inv--0d1f8275172e10b371d3617c.md) | 256 | `result-track:0d1f8275172e10b371d3617ccf2ba5e0711b42bd1a9a02b73ab0dfbdd09aaf66` |
| 32 | `theorem` | [reduce_append_reduce_reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-append-reduce-reduce--23e7f113396b0db2bc5d0ecc.md) | 261 | `result-track:23e7f113396b0db2bc5d0eccdba71f71ffb86e168c722fe17f08eeb17feb0bce` |
| 33 | `theorem` | [reduce_cons_reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-cons-reduce--9eb329e6337801d9bd27ba6b.md) | 265 | `result-track:9eb329e6337801d9bd27ba6b5de205dd4f08277f717da657abd103f19ddac3e3` |
| 34 | `theorem` | [reduce_invRev_left_cancel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-invrev-left-cancel--af430f59a3f730b2f231d00f.md) | 269 | `result-track:af430f59a3f730b2f231d00f63be38d7be1b0abbce55f83c35b238dbd994c20f` |
| 35 | `lemma` | [toWord_mul_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/toword-mul-sublist--2af299535f60613ac85e91ca.md) | 275 | `result-track:2af299535f60613ac85e91ca317736b0e8f2ed323867f2756f81f747e3c473a1` |
| 36 | `def` | [reduce.churchRosser](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/reduce-churchrosser--3fbf073594b3be42562f5660.md) | 284 | `declaration-track:3fbf073594b3be42562f5660871d3e7daf6d045ff1dbc18e390dfc5877f61314` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/instance--995b16541ebd9f457a7a4fac.md) | 288 | `declaration-track:995b16541ebd9f457a7a4faceb1b5c64932002619f0ae111311d71035ceda484` |
| 38 | `instance` | [Red.decidableRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/red-decidablerel--385897558502f9434477fed9.md) | 294 | `declaration-track:385897558502f9434477fed946d6d1f355a1ab6ba3a1601ede6f3df739fe8e45` |
| 39 | `def` | [Red.enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/red-enum--91a9300f8c4b60d3f4dc2456.md) | 312 | `declaration-track:91a9300f8c4b60d3f4dc24561b8d93f8e1383a7575f07986f63ce3a2ce5ac9e7` |
| 40 | `theorem` | [Red.enum.sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/red-enum-sound--ba75287af9c9de2d776fe757.md) | 315 | `result-track:ba75287af9c9de2d776fe757a1b11343e70bea35278e0fd16a6653455a48b043` |
| 41 | `theorem` | [Red.enum.complete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/red-enum-complete--524f98e5dc550781acf3d8e5.md) | 318 | `result-track:524f98e5dc550781acf3d8e54231796d2e82c700707b6fe3322e685efecfd7a0` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/instance--2e8850cccc64358a9d3121b5.md) | 321 | `declaration-track:2e8850cccc64358a9d3121b5c9a20c1623f7d8049290933c22eb97606946824f` |
| 43 | `theorem` | [one_ne_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/one-ne-of--f6fcfa4b6f91d59425d21630.md) | 329 | `result-track:f6fcfa4b6f91d59425d21630c3cc915b1c19cbd9bc0651da5a24b90641a1561c` |
| 44 | `theorem` | [of_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/of-ne-one--e7e8a0b88e4c541e4d361922.md) | 333 | `result-track:e7e8a0b88e4c541e4d361922f2d6cfa5b967bc0914db00b42851d18af87aaa6b` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/instance--2071a6727acc26a6c253895d.md) | 336 | `declaration-track:2071a6727acc26a6c253895d6a7445446bb56547735f210542ab880bb3171f95` |
| 46 | `def` | [norm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm--007deebcaaeaa9ab7a67e9bc.md) | 345 | `declaration-track:007deebcaaeaa9ab7a67e9bca85e8199df3e1df9fa5709f35b4dfae1115e6710` |
| 47 | `theorem` | [norm_inv_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm-inv-eq--774b775afa525c73b8e8162c.md) | 349 | `result-track:774b775afa525c73b8e8162c4df1e2d2ea047d4b49a8e0654bf331f9c7e37cf2` |
| 48 | `theorem` | [norm_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm-eq-zero--cdb537c659b38c9e0fe2344f.md) | 353 | `result-track:cdb537c659b38c9e0fe2344f7ae3d003e246439825e75395256b5e28994e62ef` |
| 49 | `theorem` | [norm_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm-one--4423118bdc2b0ca2d5c4c76f.md) | 357 | `result-track:4423118bdc2b0ca2d5c4c76f9c3ef6d099d54d3f34a96b640c71fc589a9a96cb` |
| 50 | `theorem` | [norm_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm-of--1c710ab96bae970efbca7ed6.md) | 361 | `result-track:1c710ab96bae970efbca7ed6854ae150990a6b2f2dcc1592dbdd45d3be610d21` |
| 51 | `theorem` | [norm_mk_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm-mk-le--eb1a71e3172eef08d0b22063.md) | 365 | `result-track:eb1a71e3172eef08d0b22063fb028be33830572b5e9fbfe99954c8f5bd58fb62` |
| 52 | `theorem` | [norm_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm-mul-le--439eba486fa6420d06912fd1.md) | 369 | `result-track:439eba486fa6420d06912fd1e8ecd3a623eed19664802b441737fe70fd07883f` |
| 53 | `theorem` | [norm_of_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm-of-pow--32a22ec3a73d3a3704681ed1.md) | 376 | `result-track:32a22ec3a73d3a3704681ed12b6e69e1acc872c066d8fb2e1d7f4ddd5e4f8719` |
| 54 | `theorem` | [norm_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean/declarations/norm-surjective--f028dece83f1f2ed2aef30d2.md) | 380 | `result-track:f028dece83f1f2ed2aef30d227a913327713f0423e5fb02163d70a5d0fe470f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
