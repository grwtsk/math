# Verification target: GRWTSK.Algebra.Inverse.Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6c9bfbe4debd974f0326f69644ab5b7f2218d6c",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6c9bfbe4debd974f0326f69644ab5b7f2218d6c`.

Source path: `GRWTSK/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inv.aux](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-aux--08b51f905b88547940adb323.md) | 60 | `declaration-track:08b51f905b88547940adb3234f3af8455ed455ef7afd90446d55097537c5a96c` |
| 2 | `theorem` | [coeff_inv_aux](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/coeff-inv-aux--b96196df88af4421e857fa50.md) | 63 | `result-track:b96196df88af4421e857fa503661a7cbbb50f2c5ddb8f542f76afa232e71ed24` |
| 3 | `def` | [invOfUnit](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/invofunit--57eba0b86686030e2ef6cc94.md) | 92 | `declaration-track:57eba0b86686030e2ef6cc9475655cc5139d58e5e3db8a438d214708dd45b493` |
| 4 | `theorem` | [coeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/coeff-invofunit--a05a0b831174cdc0a34d4ca8.md) | 95 | `result-track:a05a0b831174cdc0a34d4ca8b41e7bc722fe22a6acbfc516b4f160f592562216` |
| 5 | `theorem` | [constantCoeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/constantcoeff-invofunit--6d234407b3e681e61f0b9865.md) | 105 | `result-track:6d234407b3e681e61f0b986591dd91189b2afaef3fad40dce3e2b74df71593de` |
| 6 | `theorem` | [mul_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/mul-invofunit--aa2a28a53bc6a755cd949d23.md) | 110 | `result-track:aa2a28a53bc6a755cd949d238dae712e1d94ba9971c25074e225b8f9cc0fd130` |
| 7 | `theorem` | [invOfUnit_mul](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/invofunit-mul--9aac583cbae31c47ec2369c1.md) | 115 | `result-track:9aac583cbae31c47ec2369c1b562a28b3e245beecbf18ae985fafa958c2ca7bf` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/isunit-iff-constantcoeff--165461a1696d9d523dc7967a.md) | 119 | `result-track:165461a1696d9d523dc7967af9588d4c0fa3c16370d36515995e0c82c0921c26` |
| 9 | `theorem` | [sub_const_eq_shift_mul_X](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/sub-const-eq-shift-mul-x--ae4491dd8ca8dcb970206712.md) | 124 | `result-track:ae4491dd8ca8dcb97020671252f0f2ab009f4132fcea4815f617bd4bcc23cca6` |
| 10 | `theorem` | [sub_const_eq_X_mul_shift](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/sub-const-eq-x-mul-shift--0766625482881554637a4801.md) | 128 | `result-track:0766625482881554637a480191be3e0426f504f357483e389243ebed328f15fe` |
| 11 | `abbrev` | [inv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv--4124af53a7ac57631aaf3db5.md) | 139 | `declaration-track:4124af53a7ac57631aaf3db59d021f1d18799b339092932951f7afc7ad6707b5` |
| 12 | `theorem` | [inv_eq_inv_aux](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-eq-inv-aux--93731e443d3e4ff46b049840.md) | 142 | `result-track:93731e443d3e4ff46b0498401e5adb7e56e23bf6ead58ec42be9715551f448ff` |
| 13 | `theorem` | [coeff_inv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/coeff-inv--8385f18de185ffd9ad9ddf8e.md) | 145 | `result-track:8385f18de185ffd9ad9ddf8eaac510de245c25bb200769b6d055fa1326860e41` |
| 14 | `theorem` | [constantCoeff_inv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/constantcoeff-inv--7e45b18208be09bf32584cbd.md) | 155 | `result-track:7e45b18208be09bf32584cbdcf0e0486087140245e1529446e87913a32907cff` |
| 15 | `theorem` | [inv_eq_zero](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-eq-zero--d9e37ae156b881ddc8d24afb.md) | 158 | `result-track:d9e37ae156b881ddc8d24afb064765b3ec31b22a7ba12a3c3cbaf6be62ec0f8d` |
| 16 | `theorem` | [zero_inv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/zero-inv--72ef6a908339da23978ec494.md) | 161 | `result-track:72ef6a908339da23978ec494bb4618c49781a29aedfd80a88b7a431a2d264e09` |
| 17 | `theorem` | [invOfUnit_eq](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/invofunit-eq--89af10ecddd1e1d9185eaef3.md) | 165 | `result-track:89af10ecddd1e1d9185eaef30293bac4f9380847387e4c9ba50806935d281e8d` |
| 18 | `theorem` | [invOfUnit_eq'](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/invofunit-eq--8effe5084f7a72d24580d4f7.md) | 170 | `result-track:8effe5084f7a72d24580d4f783606d032d6d54ec2d3e4a423220c0a906fda5e5` |
| 19 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/mul-inv-cancel--09010b926d85d0fa91110258.md) | 175 | `result-track:09010b926d85d0fa9111025832394a701a97963b24debf810230e39c40dece0b` |
| 20 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-mul-cancel--c9433df68a8e8c746b8675a2.md) | 179 | `result-track:c9433df68a8e8c746b8675a2dbbdfc64d7766592d409226797ab7d6419608442` |
| 21 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/eq-mul-inv-iff-mul-eq--d8adc36dc2c83a30858f6a36.md) | 182 | `result-track:d8adc36dc2c83a30858f6a36f8973b56c07bba04df5ff3fd4644e01f04aa2336` |
| 22 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/eq-inv-iff-mul-eq-one--b4151ffc7f8fe6ea0d206e28.md) | 186 | `result-track:b4151ffc7f8fe6ea0d206e2884e146005f1c277dbe716e5d2871549c5a0b3c20` |
| 23 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-eq-iff-mul-eq-one--9edcb90cf346286860a35d92.md) | 190 | `result-track:9edcb90cf346286860a35d92994d051f636ad03d93129a95e6445e5d4856edbc` |
| 24 | `theorem` | [mul_inv_rev](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/mul-inv-rev--9c6feb78e734514508d676b6.md) | 194 | `result-track:9c6feb78e734514508d676b6a5dfe520e68b7340f7c6c51c792d64a1fb1e0823` |
| 25 | `theorem` | [inv_pow](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-pow--63b6e7ccf5d485b634d674a6.md) | 197 | `result-track:63b6e7ccf5d485b634d674a6f63dbd0d45b0a3c731d7f6411dd47777c18a884d` |
| 26 | `theorem` | [C_inv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/c-inv--69b72474ef6156a80a90efa4.md) | 201 | `result-track:69b72474ef6156a80a90efa4fb08d2fbfa6df456c836a2e4dfe3f2ec0c799554` |
| 27 | `theorem` | [X_inv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/x-inv--eb836491f227669695d19bb8.md) | 205 | `result-track:eb836491f227669695d19bb86d014d1afc95879d0d05a55f9fad804094524efd` |
| 28 | `theorem` | [smul_inv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/smul-inv--7a345af113f93c29f10d6474.md) | 208 | `result-track:7a345af113f93c29f10d64747c2195043e1db8dfe092d3e8863b7024a4834a0a` |
| 29 | `def` | [firstUnitCoeff](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/firstunitcoeff--1cc91605bb983a779554d25f.md) | 213 | `declaration-track:1cc91605bb983a779554d25f9aa4a96b5fe013a9194a63f86f38df211562f92c` |
| 30 | `def` | [Inv_divided_by_X_pow_order](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-divided-by-x-pow-order--1df8f260f73e3f1358fa5e50.md) | 222 | `declaration-track:1df8f260f73e3f1358fa5e502c287871045d3a639d2ad26fcd95134526d424e6` |
| 31 | `theorem` | [Inv_divided_by_X_pow_order_rightInv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-divided-by-x-pow-order-rightinv--0a5c6cd4f8d33b0391eb9e0e.md) | 226 | `result-track:0a5c6cd4f8d33b0391eb9e0e7bf64c9ec2b589fdaa7b6f6198049520187e6c1e` |
| 32 | `theorem` | [Inv_divided_by_X_pow_order_leftInv](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/inv-divided-by-x-pow-order-leftinv--55e62b1f766140333a283f4e.md) | 231 | `result-track:55e62b1f766140333a283f4e90d72b54e8941854e74a2e1e8e52b9c1cf9179f3` |
| 33 | `def` | [Unit_of_divided_by_X_pow_order](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/unit-of-divided-by-x-pow-order--be82e47d64df964993dc81c0.md) | 239 | `declaration-track:be82e47d64df964993dc81c024169ea44c60aa34c2fe54a3dab3275beebd70e9` |
| 34 | `theorem` | [isUnit_divided_by_X_pow_order](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/isunit-divided-by-x-pow-order--4e3fa496a1aa67aa4afa8fce.md) | 247 | `result-track:4e3fa496a1aa67aa4afa8fce3338fc60c15b3485965f9b485a3578c560fdbb76` |
| 35 | `theorem` | [Unit_of_divided_by_X_pow_order_nonzero](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/unit-of-divided-by-x-pow-order-nonzero--c0eb2feef391e943c3c29b72.md) | 252 | `result-track:c0eb2feef391e943c3c29b72cae40121cb261913a06c7ebcb0d00f50afa95f63` |
| 36 | `theorem` | [Unit_of_divided_by_X_pow_order_zero](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/unit-of-divided-by-x-pow-order-zero--432a2b568dc6b99f193f9054.md) | 257 | `result-track:432a2b568dc6b99f193f90547ca07a35f175424d72cc428eee42492150585f10` |
| 37 | `theorem` | [eq_divided_by_X_pow_order_Iff_Unit](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/eq-divided-by-x-pow-order-iff-unit--2d942c03f098e95755fd3fea.md) | 260 | `result-track:2d942c03f098e95755fd3fea20e75713a0c06cb632cde6659ddd8e85f803b130` |
| 38 | `theorem` | [map.isLocalHom](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/map-islocalhom--13953ce08586c6218c686b21.md) | 275 | `result-track:13953ce08586c6218c686b2132fb882dfa2bd794d310211a361d8cfb65dd57f4` |
| 39 | `theorem` | [hasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/hasunitmulpowirreduciblefactorization--7175d40be1b28d5f1a364487.md) | 286 | `result-track:7175d40be1b28d5f1a364487b5252b5f07d62db1a57b31e857c8a48f9a21f1c7` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/instance--47e364c301d82936a3b90ff8.md) | 296 | `declaration-track:47e364c301d82936a3b90ff8b5cd00e5cbf7237fa30f2bf59dc2cd04f03bbf2e` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/instance--c54116495e2e2ded6a5e61f6.md) | 299 | `declaration-track:c54116495e2e2ded6a5e61f676e679083f518af042517fc45864b29e720fb042` |
| 42 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/example--02b8726ccdd760b7cb88e974.md) | 302 | `declaration-track:02b8726ccdd760b7cb88e9742207f0ead58710dc8565d11a342ed4ec69eeb89c` |
| 43 | `theorem` | [maximalIdeal_eq_span_X](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/maximalideal-eq-span-x--6fb033674cfa7bddf00e79c3.md) | 305 | `result-track:6fb033674cfa7bddf00e79c3fd496942cec84ae7022d5b4409b68b9b8df2f9cb` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/instance--64394b3467e9f1bb62a72d98.md) | 325 | `declaration-track:64394b3467e9f1bb62a72d9884d39b4118569782026db357fa52c551536a7da7` |
| 45 | `theorem` | [normUnit_X](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/normunit-x--0ca362b6cb3dd60d26d79d69.md) | 339 | `result-track:0ca362b6cb3dd60d26d79d69c441bcf26c5a91172d9233fb7463c72ff5325b15` |
| 46 | `theorem` | [X_eq_normalizeX](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/x-eq-normalizex--fd747b81a84f53b0bca7f92a.md) | 342 | `result-track:fd747b81a84f53b0bca7f92a166bc39ac89a744905fc8295601057c311b5fd48` |
| 47 | `theorem` | [normalized_count_X_eq_of_coe](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/normalized-count-x-eq-of-coe--0017f25b024347e58a703d01.md) | 348 | `result-track:0017f25b024347e58a703d019d19709f2c5d7e3eb69f6fad3e6f328473fa8dac` |
| 48 | `theorem` | [ker_coeff_eq_max_ideal](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/ker-coeff-eq-max-ideal--21ec23f6792817b33b12c85b.md) | 361 | `result-track:21ec23f6792817b33b12c85bc62034b458b7311d10ed7ff9732d033f1860cc68` |
| 49 | `def` | [residueFieldOfPowerSeries](../../../../mathematics/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/declarations/residuefieldofpowerseries--328e1b9edd9e9227a8366492.md) | 367 | `declaration-track:328e1b9edd9e9227a8366492cac92ab54cb0bce69b7a41c976aedc010abefc22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
