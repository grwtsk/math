# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Forall2.Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "720f093d32c433d6015d7080024b7417285e8de8",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `720f093d32c433d6015d7080024b7417285e8de8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Forall₂.imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-imp--04d7d214d3bc75df25b24cef.md) | 27 | `result-track:04d7d214d3bc75df25b24cef6ead2e83d41247d80d56e9eacccea54ffb0fcb48` |
| 2 | `theorem` | [Forall₂.mp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-mp--b290fb25563294e88cf1481b.md) | 30 | `result-track:b290fb25563294e88cf1481be3fc1aa502aeeb031e04e86507aacf2731cfc834` |
| 3 | `theorem` | [Forall₂.flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-flip--89616324b6235713a34f886c.md) | 36 | `result-track:89616324b6235713a34f886c677c71c0f39e040cdf94c3b8529c41faf053e13a` |
| 4 | `theorem` | [forall₂_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-same--edce2673df8854cd8fe7a94e.md) | 41 | `result-track:edce2673df8854cd8fe7a94efcef334cc15ab223ed2a515063295eb0f9744a6e` |
| 5 | `theorem` | [forall₂_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-refl--8ba5519d17c08cc9d7790c34.md) | 45 | `result-track:8ba5519d17c08cc9d7790c34b9067deb56bb24cfd4d127294fdce473604dc9ac` |
| 6 | `theorem` | [forall₂_eq_eq_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-eq-eq-eq--83168547a44315a7038268f6.md) | 49 | `result-track:83168547a44315a7038268f6b54f0494f35c91d16554c087b7d6270bde77fbb4` |
| 7 | `theorem` | [forall₂_nil_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-nil-left-iff--8cf233e4d1bb7de450f8e840.md) | 60 | `result-track:8cf233e4d1bb7de450f8e840edc6b8ac84ab7d0833070738648495d3754cae0a` |
| 8 | `theorem` | [forall₂_nil_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-nil-right-iff--50684c0f6e351d0b77cd543e.md) | 64 | `result-track:50684c0f6e351d0b77cd543e397ba934b747dd6c9035f6ec95f7e493191469bc` |
| 9 | `theorem` | [forall₂_cons_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-cons-left-iff--8d122e93fc22eb5844c13720.md) | 67 | `result-track:8d122e93fc22eb5844c1372002fd537c7dfff2205130f718a447636e0131a8e2` |
| 10 | `theorem` | [forall₂_cons_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-cons-right-iff--fd7ec68cd87f2be8488e540b.md) | 77 | `result-track:fd7ec68cd87f2be8488e540b51e35cdfa1121237cba0729a4b223399b177a761` |
| 11 | `theorem` | [forall₂_and_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-and-left--197b85553edecbd8c5fbab3b.md) | 87 | `result-track:197b85553edecbd8c5fbab3b49ddf80749ea98109cc6e2794e736e5f37c6662d` |
| 12 | `theorem` | [forall₂_map_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-map-left-iff--07578f03f8469cef31cba0ea.md) | 97 | `result-track:07578f03f8469cef31cba0eab8c3c1ef32610a2f7bb0436013850d68b2b59bf3` |
| 13 | `theorem` | [forall₂_map_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-map-right-iff--a64320e04e0589a62665afcc.md) | 103 | `result-track:a64320e04e0589a62665afcc2e87b47974b69d5fd4426a63738f9873e0c7c885` |
| 14 | `theorem` | [left_unique_forall₂'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/left-unique-forall--91b0cfefefa480df4a6dc04b.md) | 108 | `result-track:91b0cfefefa480df4a6dc04b0b23ba4a1a681c7213ae64790ba669594d1917be` |
| 15 | `theorem` | [_root_.Relator.LeftUnique.forall₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/root-relator-leftunique-forall--91f26ac3fda1dde155ebf59a.md) | 113 | `result-track:91f26ac3fda1dde155ebf59a93ba35b7d927855f8504b67d5ee805a907eee5b1` |
| 16 | `theorem` | [right_unique_forall₂'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/right-unique-forall--5f38dd797cd8c98530e3621f.md) | 116 | `result-track:5f38dd797cd8c98530e3621f2660ebb3d80dab78c61277ed4cad3a55eab7b77e` |
| 17 | `theorem` | [_root_.Relator.RightUnique.forall₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/root-relator-rightunique-forall--d624386bdd341c8c6cca8c2d.md) | 122 | `result-track:d624386bdd341c8c6cca8c2dee31c2e53e29ae26941196ebb927975b4fa09473` |
| 18 | `theorem` | [_root_.Relator.BiUnique.forall₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/root-relator-biunique-forall--8813b169fcedc95c68c9b8b9.md) | 125 | `result-track:8813b169fcedc95c68c9b8b97209b324135639df6f6811cb0e947a6c27dcd630` |
| 19 | `theorem` | [Forall₂.length_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-length-eq--2ae79409902f570513565b37.md) | 128 | `result-track:2ae79409902f570513565b3710e892aa5ea39d0ccf79b46c1637d820fc8c14c6` |
| 20 | `theorem` | [Forall₂.get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-get--0bf24d3b71ef6b8d9ec616d1.md) | 132 | `result-track:0bf24d3b71ef6b8d9ec616d12cd090d6b62dba40e9cb0e247ed44a85a4fedf70` |
| 21 | `theorem` | [forall₂_of_length_eq_of_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-of-length-eq-of-get--2f9277cfbc535610cbf7463f.md) | 138 | `result-track:2f9277cfbc535610cbf7463f26856eec16fa689787379c58f1716e40d35f009a` |
| 22 | `theorem` | [forall₂_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-iff-get--f4b9e69fbce1e8cf6f9e8bad.md) | 147 | `result-track:f4b9e69fbce1e8cf6f9e8badb4702bc6218a9473f3a0424ae4c05fd083e44455` |
| 23 | `theorem` | [forall₂_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-zip--9a0ca2d6e05384fc05a7cd5b.md) | 151 | `result-track:9a0ca2d6e05384fc05a7cd5bb36034d647cb9048dfd0e02184ffd9200f21f69c` |
| 24 | `theorem` | [forall₂_iff_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-iff-zip--4feae7ab8225eed49811a741.md) | 158 | `result-track:4feae7ab8225eed49811a741f1b79498ad37af300a4ddd20ea6ce91850686fe1` |
| 25 | `theorem` | [forall₂_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-take--eaa3e6531e2f674d20601c48.md) | 175 | `result-track:eaa3e6531e2f674d20601c48253ee58057d683e73ccb091abfc203cfcca68669` |
| 26 | `theorem` | [forall₂_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-drop--18b908134f72a8dbcfa079e5.md) | 180 | `result-track:18b908134f72a8dbcfa079e5404a76d7677c1d0c8256217391233c0296ab2a70` |
| 27 | `theorem` | [forall₂_take_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-take-append--d50a90f7bc74f88cf71841d8.md) | 185 | `result-track:d50a90f7bc74f88cf71841d8def40a56aa868e52993f0dfbf2fc92157bf4ab94` |
| 28 | `theorem` | [forall₂_drop_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-drop-append--239f313a9fe9476b4cf54dfd.md) | 191 | `result-track:239f313a9fe9476b4cf54dfd9e582e6702486b6a2c9e19e4a69fbe7ab5c59b76` |
| 29 | `theorem` | [rel_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-mem--ba1c3b4289e103bd00f8ab34.md) | 197 | `result-track:ba1c3b4289e103bd00f8ab349be1e73f9356a299a81523ddbb75b7a8761ab27c` |
| 30 | `theorem` | [rel_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-map--1d8cbd15f6dfdcd58164c8ed.md) | 203 | `result-track:1d8cbd15f6dfdcd58164c8eda88bac9443f9e2be06929ae9ada8e9db846c7d9c` |
| 31 | `theorem` | [rel_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-append--e5a5e8fc8036d5d8ff74e9af.md) | 207 | `result-track:e5a5e8fc8036d5d8ff74e9afc6133c5c3a1f4d6dae6d9e433158f9a5b51345b2` |
| 32 | `theorem` | [rel_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-reverse--b17822815d5b02ba7bdb7444.md) | 211 | `result-track:b17822815d5b02ba7bdb7444943eb9b74b12d6bfd4092780a6bf77d954c082a8` |
| 33 | `theorem` | [forall₂_reverse_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/forall-reverse-iff--bd9fff015323767bed423687.md) | 218 | `result-track:bd9fff015323767bed423687046883a3e9a9754f90bd2e0ec66c15697859d765` |
| 34 | `theorem` | [rel_flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-flatten--4cd4e874fbb889ea0fc24977.md) | 225 | `result-track:4cd4e874fbb889ea0fc2497797a5b88512ddb07f40f5077c7f4386cca410dc30` |
| 35 | `theorem` | [rel_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-flatmap--71f409f8691864721d10ac0d.md) | 231 | `result-track:71f409f8691864721d10ac0dd8edba269561025e4a00d1204c4f09f3cba2c42e` |
| 36 | `theorem` | [rel_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-foldl--87c2525a63dfc6f6d4e1d359.md) | 237 | `result-track:87c2525a63dfc6f6d4e1d359760a43443224d5e39a0e915b2ea0e2e7e7822143` |
| 37 | `theorem` | [rel_foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-foldr--0fcb73b0bc49535322460aab.md) | 241 | `result-track:0fcb73b0bc49535322460aabe7f10535936fb7917f6eff8d0975e35744090761` |
| 38 | `theorem` | [rel_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-filter--dc4cd058d2e7656003eed24d.md) | 245 | `result-track:dc4cd058d2e7656003eed24d03936b87a4348125cee74aed191e23d05ac39327` |
| 39 | `theorem` | [rel_filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/rel-filtermap--c7782c80c5d126cb8706e7fb.md) | 258 | `result-track:c7782c80c5d126cb8706e7fbc42df76d67d273157a669f111356e1630edd38de` |
| 40 | `inductive` | [SublistForall₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/sublistforall--6210a337ab821c7bbfa538ee.md) | 269 | `declaration-track:6210a337ab821c7bbfa538ee7a61c64c507446f9f155566e4bc8b3ffe3367151` |
| 41 | `theorem` | [sublistForall₂_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/sublistforall-iff--ea7f42e7367400bfa770ee9d.md) | 274 | `result-track:ea7f42e7367400bfa770ee9d55e24b25ecd55d2f52e4a322c0d4ed83e409c8a5` |
| 42 | `instance` | [SublistForall₂.is_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/sublistforall-is-refl--1d78c3e4c96cb505083a9404.md) | 298 | `declaration-track:1d78c3e4c96cb505083a9404f842e4890c019492f6679b1b17809633f868a42d` |
| 43 | `instance` | [SublistForall₂.is_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/sublistforall-is-trans--168a02a0c3e8140b04f763c3.md) | 301 | `declaration-track:168a02a0c3e8140b04f763c30a82a5d80c8a2c41465f05672d40cec2cffce4b4` |
| 44 | `theorem` | [Sublist.sublistForall₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/sublist-sublistforall--55288925eaec9abdecf07a23.md) | 320 | `result-track:55288925eaec9abdecf07a23dcdddbeeac8964c30e8aa89717f68574e54619a2` |
| 45 | `theorem` | [tail_sublistForall₂_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/tail-sublistforall-self--609c80c9882fe96ee843cfc0.md) | 324 | `result-track:609c80c9882fe96ee843cfc0b8e360f3dd843e46f388b5756487424469df3224` |
| 46 | `theorem` | [sublistForall₂_map_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/sublistforall-map-left-iff--ab7a4c9d88c0d762b0db6371.md) | 328 | `result-track:ab7a4c9d88c0d762b0db6371ee47e291e1a53862eba006b7cd9c26adbb1b9175` |
| 47 | `theorem` | [sublistForall₂_map_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant3a247903481d872697eeabe67c9859116b0efe62400b42737977104ca783757f.lean/declarations/sublistforall-map-right-iff--2544b3695fda9c3fc654f79d.md) | 333 | `result-track:2544b3695fda9c3fc654f79db60a12d0ac9b55480f0d9f7c1a7d4ee04fe8dd39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
