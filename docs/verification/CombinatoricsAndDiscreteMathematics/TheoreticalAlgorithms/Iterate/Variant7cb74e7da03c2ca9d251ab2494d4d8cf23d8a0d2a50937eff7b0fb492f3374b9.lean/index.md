# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterate.Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "891fff9cc3c45b69394d5a65fd50faf6409d8596",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `891fff9cc3c45b69394d5a65fd50faf6409d8596`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Conjugate` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/nat-iterate--e9e007793eb1c7ec9afd3426.md) | 44 | `declaration-track:e9e007793eb1c7ec9afd342638ee119368da12adbc0daf8264b66590cf09f495` |
| 2 | `theorem` | [iterate_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-zero--74db5afdcdf0d3ff4c416d04.md) | 58 | `result-track:74db5afdcdf0d3ff4c416d046429c1f9e437137f61cc4cb7c18b1438d994dbd1` |
| 3 | `theorem` | [iterate_zero_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-zero-apply--2b4dbc9d084fd98103c1b89d.md) | 61 | `result-track:2b4dbc9d084fd98103c1b89d987351d2102bbb9fc173a505f56f43ff7c40f6bf` |
| 4 | `theorem` | [iterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-succ--2bc2a948d47c96ff96cbef61.md) | 65 | `result-track:2bc2a948d47c96ff96cbef611436f2ba46a38cae3b5e511540b559391a93fae7` |
| 5 | `theorem` | [iterate_succ_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-succ-apply--7ba96669ae2dc1dd0399f33e.md) | 68 | `result-track:7ba96669ae2dc1dd0399f33e96e8c7bde9f5cc1eadb095326ca79a774a17966c` |
| 6 | `theorem` | [iterate_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-id--cfb44e9950e7a7092359aee2.md) | 72 | `result-track:cfb44e9950e7a7092359aee2de88ca428438b154a3bda58cb08c3c374436be60` |
| 7 | `theorem` | [iterate_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-add--2937ae236b1d4e9a770d8cc3.md) | 75 | `result-track:2937ae236b1d4e9a770d8cc30efd8b103bccff324688eb77d361a05a5e63bb45` |
| 8 | `theorem` | [iterate_add_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-add-apply--1fdd9ff710d20dd772ba0a8d.md) | 79 | `result-track:1fdd9ff710d20dd772ba0a8da447708967c9f2199f82f9a489048910ec9de38d` |
| 9 | `theorem` | [iterate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-one--c54e4c820518290f9a666eba.md) | 85 | `result-track:c54e4c820518290f9a666eba96042e5cb634e745e2c37052e33d0d08f7af787c` |
| 10 | `theorem` | [iterate_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-mul--4b7730223ed460a90aae5bc6.md) | 88 | `result-track:4b7730223ed460a90aae5bc662822795801c62b176494df73f4b40510b5d7cb3` |
| 11 | `theorem` | [iterate_fixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-fixed--46d7e263c02e51667c9413d5.md) | 94 | `result-track:46d7e263c02e51667c9413d563f426251dab8710211a90041fad45905c877b66` |
| 12 | `theorem` | [Injective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/injective-iterate--10e65e7760a8b7c3448b1e90.md) | 97 | `result-track:10e65e7760a8b7c3448b1e904816df5a61ac6e88ccc8a12ea1b48261b08efe6c` |
| 13 | `theorem` | [Surjective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/surjective-iterate--1b6480a8879c6a97ea9c2493.md) | 100 | `result-track:1b6480a8879c6a97ea9c249343dbd7885d0a9ccf7bf448a88677115d66797cb9` |
| 14 | `theorem` | [Bijective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/bijective-iterate--d49141d75299321ba519a2fa.md) | 103 | `result-track:d49141d75299321ba519a2fa2308b1fed56ef1e50a3766713d89aa281ff6b109` |
| 15 | `theorem` | [iterate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-right--a4a201aa55f8ded745744462.md) | 108 | `result-track:a4a201aa55f8ded745744462f618fe826eecee4f7145e6fa55fa81f81267eed8` |
| 16 | `theorem` | [iterate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-left--b20cc35fab97dcb76608aba9.md) | 112 | `result-track:b20cc35fab97dcb76608aba9ea5048877487d8d2a9f3e2901daa2916c92aa7b4` |
| 17 | `theorem` | [iterate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-right--441cbed0ce1ba7b7ed63ed74.md) | 128 | `result-track:441cbed0ce1ba7b7ed63ed746bb26f56d3b9d4e2ce1c6d0eeac4f979fd022972` |
| 18 | `theorem` | [iterate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-left--d42b1079f950bb24d5d1bec9.md) | 131 | `result-track:d42b1079f950bb24d5d1bec9c2432d4ad21cacf1a919761805789ae96509f6f3` |
| 19 | `theorem` | [iterate_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-iterate--822fcce143441246c6b22bab.md) | 134 | `result-track:822fcce143441246c6b22babeb62cadc502718ecb2e7e08746014d0092cd1ed2` |
| 20 | `theorem` | [iterate_eq_of_map_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-eq-of-map-eq--9b4f842e74e959b0aa11e12e.md) | 137 | `result-track:9b4f842e74e959b0aa11e12e205fa030f5965164f1427cc5d025d14046856803` |
| 21 | `theorem` | [comp_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/comp-iterate--662f1594867e72c6eeb90599.md) | 142 | `result-track:662f1594867e72c6eeb9059903470936d3bdb36d74726089dea89df487279116` |
| 22 | `theorem` | [iterate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-self--510bfb34e86edae766f0ef8a.md) | 151 | `result-track:510bfb34e86edae766f0ef8ae992700e759d172f07b877253ed0389fb1da4ff6` |
| 23 | `theorem` | [self_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/self-iterate--bea78db85578afde76075bee.md) | 154 | `result-track:bea78db85578afde76075bee2517efd5895583997a32afb17e0ff045b31f1535` |
| 24 | `theorem` | [iterate_iterate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-iterate-self--164ec6b58451b01005f8eaa2.md) | 157 | `result-track:164ec6b58451b01005f8eaa214a542c70ef1d4958472ad48dba3b62422965418` |
| 25 | `theorem` | [Semiconj₂.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/semiconj-iterate--d05c8bc39bf31b00a90a7181.md) | 162 | `result-track:d05c8bc39bf31b00a90a7181e8ecb8f0f7d58786083301306ce77eb8fd3cb31a` |
| 26 | `theorem` | [iterate_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-succ--6df975ade937af56e80279b8.md) | 168 | `result-track:6df975ade937af56e80279b84d93a9e8ff79f4d677d4c7b6cd5e2a3a3043a3d2` |
| 27 | `theorem` | [iterate_succ_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-succ-apply--3956ba498676d5fce996b6d3.md) | 171 | `result-track:3956ba498676d5fce996b6d3ea2112c7936fbecd1f1581b68f7bfa5bda8bdb32` |
| 28 | `theorem` | [iterate_pred_comp_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-pred-comp-of-pos--9a796d179d6f97de9faaa0b5.md) | 175 | `result-track:9a796d179d6f97de9faaa0b5243d869b5b02825a4c769de1d37ee0f5065f86cc` |
| 29 | `theorem` | [comp_iterate_pred_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/comp-iterate-pred-of-pos--a260afea017233049d68262e.md) | 178 | `result-track:a260afea017233049d68262e32f47f3f5edc1ee23af9b0890461d1eb3d7d60af` |
| 30 | `def` | [Iterate.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-rec--f1fdefaddf73a83d145959ec.md) | 182 | `declaration-track:f1fdefaddf73a83d145959ec9222a8e924176327be3d14c74f99874fed644209` |
| 31 | `theorem` | [Iterate.rec_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-rec-zero--db6c669cd8feca3a2a6a2c80.md) | 188 | `result-track:db6c669cd8feca3a2a6a2c809b4a913dc6684bb426c959354f78d62004572a0c` |
| 32 | `theorem` | [LeftInverse.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/leftinverse-iterate--8784f57f9558311abe906d2d.md) | 194 | `result-track:8784f57f9558311abe906d2d0e9819738f8b09afa43a46aa7a368cb1413e3383` |
| 33 | `theorem` | [RightInverse.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/rightinverse-iterate--25c721aa62ede7eeafd47340.md) | 200 | `result-track:25c721aa62ede7eeafd473407ac330c057e8078c9099468404c8e1bdcad46cd6` |
| 34 | `theorem` | [iterate_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-comm--1225352ff9054c0544d3d364.md) | 204 | `result-track:1225352ff9054c0544d3d364cb91681bf48581206a1e7f6b9af2b259b663ce6a` |
| 35 | `theorem` | [iterate_commute](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-commute--fdec0bf304446f5e9a5e878d.md) | 207 | `result-track:fdec0bf304446f5e9a5e878dd637e3d1fb38c8c8fc0219e7190e6fd93abf3d78` |
| 36 | `lemma` | [iterate_add_eq_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-add-eq-iterate--befa1f29e5ed376f7c48684e.md) | 210 | `result-track:befa1f29e5ed376f7c48684e35b9f4ea04b7c40f60b839f31efcaca1f119ccfe` |
| 37 | `lemma` | [iterate_cancel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/iterate-cancel--fb1a669640865a450250ba68.md) | 215 | `result-track:fb1a669640865a450250ba68e8c567e72a77d361c358dc10c4b3b6289c741264` |
| 38 | `theorem` | [involutive_iff_iter_2_eq_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/involutive-iff-iter-2-eq-id--378429f03182d93a0b5445d4.md) | 220 | `result-track:378429f03182d93a0b5445d41aa49cbafe51c98ac5367e841723a120eb2181c0` |
| 39 | `theorem` | [foldl_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/foldl-const--88cc909f8098f744a0699ebb.md) | 229 | `result-track:88cc909f8098f744a0699ebbec1e7b770c6d316a819cb14706653d1dbcdea1d6` |
| 40 | `theorem` | [foldr_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant7cb74e7da03c2ca9d251ab2494d4d8cf23d8a0d2a50937eff7b0fb492f3374b9.lean/declarations/foldr-const--3eac8ec503e2d2bf55f80c02.md) | 235 | `result-track:3eac8ec503e2d2bf55f80c0226fb8a85ec1e390e767fad078a7f5d545571753c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
