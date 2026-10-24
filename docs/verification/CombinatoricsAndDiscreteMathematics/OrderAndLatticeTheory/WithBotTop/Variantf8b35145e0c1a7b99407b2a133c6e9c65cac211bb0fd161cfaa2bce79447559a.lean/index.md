# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBotTop.Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a742d1b937b802cf3fa2ce9462c0d54c4b8962e1",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a742d1b937b802cf3fa2ce9462c0d54c4b8962e1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WithBot` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preimage_coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-top--7584c86924662aa76e850ae4.md) | 26 | `result-track:7584c86924662aa76e850ae4ea090c68f8a3053a26c29c6b9fad03e3740f26db` |
| 2 | `theorem` | [range_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/range-coe--6b2834fc93f4a9b30b945480.md) | 31 | `result-track:6b2834fc93f4a9b30b9454800125e0d3bed628cf700bc77f627e5dcbce889950` |
| 3 | `theorem` | [preimage_coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioi--d7bb10203faf29a1603271d8.md) | 36 | `result-track:d7bb10203faf29a1603271d89ca2d04f197d40a394aa3d8b6e51827a990fe379` |
| 4 | `theorem` | [preimage_coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ici--281fdf8388ee8345d36413b5.md) | 40 | `result-track:281fdf8388ee8345d36413b5f797bae8fb5060b483bca29cd098c0bebe38d5da` |
| 5 | `theorem` | [preimage_coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-iio--13b34c757ba428a24a8b74e4.md) | 44 | `result-track:13b34c757ba428a24a8b74e4004e8acadd7adebe5db8cb835976abdb4e47051d` |
| 6 | `theorem` | [preimage_coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-iic--214c949c2f5b485f794de58e.md) | 48 | `result-track:214c949c2f5b485f794de58eb2180c63d1b4abe7ff8097a24a773a0a05603a13` |
| 7 | `theorem` | [preimage_coe_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-icc--f3b1babcc19c5f63d60f8ad9.md) | 52 | `result-track:f3b1babcc19c5f63d60f8ad970d85d452365ba31691d7178ebbcceb1c45d3d74` |
| 8 | `theorem` | [preimage_coe_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ico--720727b8dcb316ff6409a36a.md) | 55 | `result-track:720727b8dcb316ff6409a36ae4dc459218d318eca74ff2e51e0cedf47c57fc38` |
| 9 | `theorem` | [preimage_coe_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioc--e194454baa05f16f1e5ae555.md) | 58 | `result-track:e194454baa05f16f1e5ae5552c25d8bd047b507dd7c803b7855b0472e8e7d5bd` |
| 10 | `theorem` | [preimage_coe_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioo--24fe2d7a03e82fe2a0d450e3.md) | 61 | `result-track:24fe2d7a03e82fe2a0d450e31b1b06dbe87619c209a0cdd72754f4ea354a0656` |
| 11 | `theorem` | [preimage_coe_Iio_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-iio-top--59a2db5c20893fbd26197f0c.md) | 64 | `result-track:59a2db5c20893fbd26197f0c62c99699758603ab91eb8afb880f5d1a53f4b3e3` |
| 12 | `theorem` | [preimage_coe_Ico_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ico-top--b7f279544d6c93307a3ad6f4.md) | 68 | `result-track:b7f279544d6c93307a3ad6f489b7dc5e28998687c5e3d73e5ed6d3133088f6f3` |
| 13 | `theorem` | [preimage_coe_Ioo_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioo-top--02560c584fb043750d2ffd4b.md) | 72 | `result-track:02560c584fb043750d2ffd4bc6cde06672a2638377bfc017ea80a7fb4fb91e5d` |
| 14 | `theorem` | [image_coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ioi--05fed57c35b00eb2c42c39a7.md) | 75 | `result-track:05fed57c35b00eb2c42c39a702764d3df29032e95f1f7cbe7562ab7488c75728` |
| 15 | `theorem` | [image_coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ici--e74f0a55d33e7679b955331d.md) | 78 | `result-track:e74f0a55d33e7679b955331dc50e2f381b210777f2bc0b0a3f52e392b3de2f18` |
| 16 | `theorem` | [image_coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-iio--1c164cda4bdb4755cb5a0115.md) | 81 | `result-track:1c164cda4bdb4755cb5a011526f9b863e36205a52107d8e8046595ed93a45a40` |
| 17 | `theorem` | [image_coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-iic--f28ca1a151b1ab1b1c637d2c.md) | 85 | `result-track:f28ca1a151b1ab1b1c637d2cfced9ae6aef7c06b62ff6ea01debed50b9fae9e7` |
| 18 | `theorem` | [image_coe_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-icc--bf20097efd0b33c5b303995b.md) | 89 | `result-track:bf20097efd0b33c5b303995bc75732e795a8594b32974948a77e1b6c36a250a8` |
| 19 | `theorem` | [image_coe_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ico--5cfe42a220cf5f8b5b9741f8.md) | 94 | `result-track:5cfe42a220cf5f8b5b9741f818e5dd2fa9f70b396350778c2963c1faf0217e6b` |
| 20 | `theorem` | [image_coe_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ioc--b0c6509f7e1035f6c6ad40a5.md) | 98 | `result-track:b0c6509f7e1035f6c6ad40a574090705772d4637157bdfa42eb53bb7b16a46bb` |
| 21 | `theorem` | [image_coe_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ioo--b03426ad66c146ce0ff2e78e.md) | 103 | `result-track:b03426ad66c146ce0ff2e78ec2d40b9b57344f2dd0f9e75af09dd441cc8473d1` |
| 22 | `theorem` | [preimage_coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-bot--8a18db6aae43067f4d48da8e.md) | 114 | `result-track:8a18db6aae43067f4d48da8eeb2d41d787141a7b63617458170fc572bf69c409` |
| 23 | `theorem` | [range_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/range-coe--a0b0f8bc22036b26109938e9.md) | 119 | `result-track:a0b0f8bc22036b26109938e9402639745c291db58510727ea791c22f13bd9353` |
| 24 | `theorem` | [preimage_coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioi--81b625f995e3025eaed8d11c.md) | 123 | `result-track:81b625f995e3025eaed8d11c969a5f10d24b308fc620a1aeeedac5c3eb2bbb94` |
| 25 | `theorem` | [preimage_coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ici--bedd00d3ffd12a6c8d5e26cd.md) | 127 | `result-track:bedd00d3ffd12a6c8d5e26cd43e22e37d591b765da853b1139b74e8d9239ed94` |
| 26 | `theorem` | [preimage_coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-iio--c5f5df2197a11f336baca477.md) | 131 | `result-track:c5f5df2197a11f336baca477973b462b1b3b91e3a8754cb605c7d30ea3437087` |
| 27 | `theorem` | [preimage_coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-iic--25a7d7718a147371b4b11909.md) | 135 | `result-track:25a7d7718a147371b4b119099845a5f31d46f2898c6933e4e157253ced69dad5` |
| 28 | `theorem` | [preimage_coe_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-icc--69ad7fa48619d32267ad6c2f.md) | 139 | `result-track:69ad7fa48619d32267ad6c2fc9b4d3a011ae563f368f798b3b0db209a3eaa69d` |
| 29 | `theorem` | [preimage_coe_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ico--778ef523b78691e73b5c60fa.md) | 142 | `result-track:778ef523b78691e73b5c60fa7e7b36d425610ee57f92c1da7024370d61d07a4b` |
| 30 | `theorem` | [preimage_coe_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioc--e9243c67173fde153e7d492a.md) | 145 | `result-track:e9243c67173fde153e7d492a5ea12705158a3662a53bc6c68e9cdb0128052f98` |
| 31 | `theorem` | [preimage_coe_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioo--86b8512b30c43d4764d6c4a5.md) | 148 | `result-track:86b8512b30c43d4764d6c4a5ef42607594b27514ee5d4cc70b159414b481940b` |
| 32 | `theorem` | [preimage_coe_Ioi_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioi-bot--c0d15915b94cd885d1f5e527.md) | 151 | `result-track:c0d15915b94cd885d1f5e5273d804e795f35d4c39898301ed47c92a8084a1ecf` |
| 33 | `theorem` | [preimage_coe_Ioc_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioc-bot--496ef078b7e6136271771de4.md) | 155 | `result-track:496ef078b7e6136271771de45560b145b7e4d72cdc4c2a10e6b6c9e385e8764f` |
| 34 | `theorem` | [preimage_coe_Ioo_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/preimage-coe-ioo-bot--d25bd6787e003991e688af72.md) | 159 | `result-track:d25bd6787e003991e688af72cf0b74f7e283729aa0fd0a6a91103e3147ef5e57` |
| 35 | `theorem` | [image_coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-iio--a4e69034ddb56adcf31d5edf.md) | 162 | `result-track:a4e69034ddb56adcf31d5edf824fbfb8ac7d75c29a1b70b77454fbcb61d17ce8` |
| 36 | `theorem` | [image_coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-iic--bf88316bb277874aaeb20503.md) | 165 | `result-track:bf88316bb277874aaeb20503e02054609d52e09ffeb03f2b12fb1d0cafa45188` |
| 37 | `theorem` | [image_coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ioi--cd2bf52c34e89b1183b48326.md) | 168 | `result-track:cd2bf52c34e89b1183b48326511e635388006e5214010fe14334d056094239b7` |
| 38 | `theorem` | [image_coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ici--f36e58cc6573c074a34c5699.md) | 172 | `result-track:f36e58cc6573c074a34c56994fd35bdf0b1d39eac38ed2c84472b080441a115e` |
| 39 | `theorem` | [image_coe_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-icc--3cd63c79d606c75864e34118.md) | 176 | `result-track:3cd63c79d606c75864e3411891b5cf3657a3a9a88afcbe05d191cbc7e02f9268` |
| 40 | `theorem` | [image_coe_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ioc--5b9b3ecfaa21dafe3b19d465.md) | 181 | `result-track:5b9b3ecfaa21dafe3b19d465ad3dfa6b43677ac0dbf1ed5ed733483c66742d37` |
| 41 | `theorem` | [image_coe_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ico--866522e05cfe8ade952d7bca.md) | 185 | `result-track:866522e05cfe8ade952d7bca1804674befdbffea7228712a16c5b82372ebdf8c` |
| 42 | `theorem` | [image_coe_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBotTop/Variantf8b35145e0c1a7b99407b2a133c6e9c65cac211bb0fd161cfaa2bce79447559a.lean/declarations/image-coe-ioo--4108bc1967900eda3586aadb.md) | 190 | `result-track:4108bc1967900eda3586aadbf3aca11cd61c89c2723e4cc3d742124aad4534b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
