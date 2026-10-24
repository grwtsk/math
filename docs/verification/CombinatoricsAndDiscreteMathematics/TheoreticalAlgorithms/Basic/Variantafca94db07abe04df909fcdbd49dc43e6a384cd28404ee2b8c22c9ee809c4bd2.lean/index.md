# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79d315c4919e83f0afd4dc466bd0cd1e63172efc",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79d315c4919e83f0afd4dc466bd0cd1e63172efc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instInhabitedSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/instinhabitedsigma--31f15d03eb246a5b13ef31dc.md) | 49 | `declaration-track:31f15d03eb246a5b13ef31dced98cdf1e0f4212bf29513e53eb8122bd8ad8fc4` |
| 2 | `instance` | [instDecidableEqSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/instdecidableeqsigma--bdf2870d296da17f5d3fe4c7.md) | 52 | `declaration-track:bdf2870d296da17f5d3fe4c7d4f2232fd8ceddfb9a747578e0ef53d8172892c1` |
| 3 | `theorem` | [mk.inj_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/mk-inj-iff--de80892b0a9132718e08ae32.md) | 64 | `result-track:de80892b0a9132718e08ae32e4a86565c69b499f9c68e4863e2bf5815787ee8f` |
| 4 | `theorem` | [eta](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/eta--7241fb1a789590d69fcd7d71.md) | 71 | `result-track:7241fb1a789590d69fcd7d71ee8db0d8a9078ba8c77e331600711a55a28c1931` |
| 5 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/ext--66aa45f57a6899d27b0dece5.md) | 76 | `result-track:66aa45f57a6899d27b0dece59c13a439f56fff1e0e32ac3ff092c7259c7bdfe3` |
| 6 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/ext-iff--ee02788f62139cfbf3a6c395.md) | 80 | `result-track:ee02788f62139cfbf3a6c395a2f9a8aad837153d8897a6401d3bf7dc2d4a7a60` |
| 7 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MkInjIff.Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.Function.eq_of_sigmaMk_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-mk--34f96f59e58a8ad26bcfbcf6.md) | 85 | `result-track:34f96f59e58a8ad26bcfbcf6defc7b8f94ab550a883a46c6a2c54cbdae133192` |
| 8 | `theorem` | [subtype_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/subtype-ext--4c99df699aaef45c423013b1.md) | 94 | `result-track:4c99df699aaef45c423013b10dc1ef01ec4b783723801100ee6d5177549116af` |
| 9 | `theorem` | [subtype_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/subtype-ext-iff--017409e8537446285e81a8c1.md) | 99 | `result-track:017409e8537446285e81a8c1a5f0a614345a0008678df21e6e22d82d7611a192` |
| 10 | `theorem` | [«forall»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/forall--33330b1d14e454747d273020.md) | 105 | `result-track:33330b1d14e454747d27302098851008173e6b151dcf73e65bfad57ff13c447c` |
| 11 | `theorem` | [«exists»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/exists--f377b410ca8f2025fd5d91cf.md) | 110 | `result-track:f377b410ca8f2025fd5d91cf9aae424d71c88510189fff738ea6635780fcca34` |
| 12 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/map--fbdf679da207a078ce054343.md) | 115 | `declaration-track:fbdf679da207a078ce054343d236be5ba315927faaf2543bbb9bc4f9f7669bbf` |
| 13 | `lemma` | [map_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/map-mk--fdfa0f4c7913305d4e16ceab.md) | 119 | `result-track:fdfa0f4c7913305d4e16ceab72ca107fdefb27a57371ddc87412212069e9674c` |
| 14 | `theorem` | [sigma_mk_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/sigma-mk-injective--272a1bddc06da38d1be24f96.md) | 123 | `result-track:272a1bddc06da38d1be24f96913f1330d0253f70d387299431e8e8e529fce60c` |
| 15 | `theorem` | [Function.Injective.sigma_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/function-injective-sigma-map--447ffdaa3779c012036489e5.md) | 127 | `result-track:447ffdaa3779c012036489e5649328ce315ebe552bf3579b7a04215302dba906` |
| 16 | `theorem` | [Function.Injective.of_sigma_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/function-injective-of-sigma-map--37884dc0f0b9b68849c1213a.md) | 136 | `result-track:37884dc0f0b9b68849c1213aa5e567e1286f2a75921b5d6b648ecec3acae5195` |
| 17 | `theorem` | [Function.Injective.sigma_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/function-injective-sigma-map-iff--df6fa3f6752804bc9acae62e.md) | 142 | `result-track:df6fa3f6752804bc9acae62e02d52f398482a635cc44d8509ea5c75e96e23271` |
| 18 | `theorem` | [Function.Surjective.sigma_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/function-surjective-sigma-map--0edd953e116505e262201c16.md) | 148 | `result-track:0edd953e116505e262201c163a79a9d256b948d594643f40d73bd3e2ab4ba162` |
| 19 | `def` | [Sigma.curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/sigma-curry--e75f466b05011fddd77bdd1b.md) | 158 | `declaration-track:e75f466b05011fddd77bdd1b38bb1e9baa2b8208f0192d21c785792dfa77980a` |
| 20 | `def` | [Sigma.uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/sigma-uncurry--a3325976675b07804759fba2.md) | 165 | `declaration-track:a3325976675b07804759fba249f62f1d8cdc10fc59f650692f337ff6494fb2ec` |
| 21 | `theorem` | [Sigma.uncurry_curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/sigma-uncurry-curry--02084a0fe9f88173230db412.md) | 170 | `result-track:02084a0fe9f88173230db4122b45a6c5997ba6b29caafaff69f8aa713dc0859f` |
| 22 | `theorem` | [Sigma.curry_uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/sigma-curry-uncurry--0b6a23d276aa6eb2096614c2.md) | 176 | `result-track:0b6a23d276aa6eb2096614c283ea3ebd161b9a967b31b723c86ffc4a0c2050e0` |
| 23 | `def` | [Prod.toSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/prod-tosigma--27262f01edc93641a52c8a36.md) | 182 | `declaration-track:27262f01edc93641a52c8a369f2559c3edff4fde790ec16b64eece4fbcc4ee15` |
| 24 | `theorem` | [Prod.fst_comp_toSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/prod-fst-comp-tosigma--363e50e28ee28d05b43b5fe5.md) | 187 | `result-track:363e50e28ee28d05b43b5fe58d448a9ff542df8f94b2340d20491df62691b1b5` |
| 25 | `theorem` | [Prod.fst_toSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/prod-fst-tosigma--3465d3ea0cea86c64ea5b805.md) | 192 | `result-track:3465d3ea0cea86c64ea5b8059fd633c5d36867093e2d94b24c437c433d934b29` |
| 26 | `theorem` | [Prod.snd_toSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/prod-snd-tosigma--baa3b32541728b4c01a891dd.md) | 197 | `result-track:baa3b32541728b4c01a891dd7ac4e694cfa53cf71f1ebaff5197c42289de4651` |
| 27 | `theorem` | [Prod.toSigma_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/prod-tosigma-mk--9b1959c3da38f06816660273.md) | 202 | `result-track:9b1959c3da38f06816660273817d3221ca5196560ef2ec13f3a2cf2832e639cf` |
| 28 | `def` | [elim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/elim--cd4284f1f97862cb89c264a4.md) | 215 | `declaration-track:cd4284f1f97862cb89c264a43d99d7cfed11f09674f80c6a3e75eaf53f4dd656` |
| 29 | `theorem` | [elim_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/elim-val--475580f71e74e60d8e75393f.md) | 220 | `result-track:475580f71e74e60d8e75393f42004faada40c5080bd6d3a9e477f870fb584c99` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/instance--6c072f640ac661dbb2a21059.md) | 224 | `declaration-track:6c072f640ac661dbb2a21059b310e61826d2573879e08b4ed542de6755e8592c` |
| 31 | `instance` | [decidableEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/decidableeq--224bed49d33f8f6dbc92ac0a.md) | 227 | `declaration-track:224bed49d33f8f6dbc92ac0ade5bf9611f6a917026844e6402be3eee24f17c10` |
| 32 | `theorem` | [mk.inj_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/mk-inj-iff--6a552228bfd0e70de4618176.md) | 241 | `result-track:6a552228bfd0e70de4618176e281be09b2174915e7f84b6ce3a31c9db47b54c0` |
| 33 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/ext--cdc4557f6a13ee389b2a869f.md) | 249 | `result-track:cdc4557f6a13ee389b2a869fec750f1870eeff5fda290d90be2b5536fe2e7bee` |
| 34 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/ext-iff--e3bc71a682ee81d998c1c35d.md) | 253 | `result-track:e3bc71a682ee81d998c1c35de0151264de153837bf959ff2e7c3c109793bf9d1` |
| 35 | `theorem` | [«forall»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/forall--7b3ee03db02f69957a07cff0.md) | 258 | `result-track:7b3ee03db02f69957a07cff0a1a5124fb82074c2759e2b910b95ad10e28963ec` |
| 36 | `theorem` | [«exists»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/exists--34341ce0384fbccb0169e309.md) | 263 | `result-track:34341ce0384fbccb0169e3096a5876abc07385ca215097daedd2f5085c020e7e` |
| 37 | `theorem` | [subtype_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/subtype-ext--d7ac6e6d330cb9d15af13335.md) | 269 | `result-track:d7ac6e6d330cb9d15af1333586c54bc0529949fc2053485f56da359ce010c171` |
| 38 | `theorem` | [subtype_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/subtype-ext-iff--173266ebaf999cee0607b310.md) | 274 | `result-track:173266ebaf999cee0607b31068ff953a86e0504ead29bcb3b6fe57cda86bcd33` |
| 39 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantafca94db07abe04df909fcdbd49dc43e6a384cd28404ee2b8c22c9ee809c4bd2.lean/declarations/map--d5da79801704ee4404044082.md) | 282 | `declaration-track:d5da79801704ee4404044082f886308e6f0a96a232a52b3ea2276847bd3bfcf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
