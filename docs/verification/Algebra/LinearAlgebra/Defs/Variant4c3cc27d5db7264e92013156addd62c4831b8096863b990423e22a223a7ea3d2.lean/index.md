# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93ef65f528bb293c4e40fd5688a33b5b163b8382",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93ef65f528bb293c4e40fd5688a33b5b163b8382`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientRel](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/quotientrel--f256179d8a8292c1cb668b81.md) | 39 | `declaration-track:f256179d8a8292c1cb668b81a52e4b006345d680c7a92eacf8dd24ceef9af8a3` |
| 2 | `theorem` | [quotientRel_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/quotientrel-def--f826be2dd3dc7845a41b3ea8.md) | 42 | `result-track:f826be2dd3dc7845a41b3ea89e0e9b29bf79a2f71f0eac0340a41b33083c4a26` |
| 3 | `instance` | [hasQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/hasquotient--cfda225d06ac64af7f4231ba.md) | 50 | `declaration-track:cfda225d06ac64af7f4231ba0eb412458a754f1797e774f6fccda2664cd991d1` |
| 4 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk--b94ad0753f72b866b103b2a8.md) | 56 | `declaration-track:b94ad0753f72b866b103b2a8bac9bd8c13a5a8342441de29392d8f85c67eecf4` |
| 5 | `theorem` | [mk'_eq_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-eq-mk--44b8141bede3be0e532795da.md) | 59 | `result-track:44b8141bede3be0e532795da9790b556183053be42aa9d2adb681aa066049df3` |
| 6 | `theorem` | [mk''_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-eq-mk--8d2b5a11cb26340293303711.md) | 63 | `result-track:8d2b5a11cb26340293303711a3aaf30839d8fa10d61b0d78a9b64510da0d8234` |
| 7 | `theorem` | [quot_mk_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/quot-mk-eq-mk--26e02c2aee8fb07a3e5190de.md) | 66 | `result-track:26e02c2aee8fb07a3e5190de633e6d5e03ce582a9d46f27693c8fb4a2f3905d4` |
| 8 | `theorem` | [eq'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/eq--d0af2d9bf636807fa38353ce.md) | 69 | `result-track:d0af2d9bf636807fa38353cecf26de79820936b54c8757c4d91975cd36360cbb` |
| 9 | `theorem` | [eq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/eq--ff2f31b854ee8f76607f1353.md) | 72 | `result-track:ff2f31b854ee8f76607f135385e538d76e1e83952ba90814c6b33506dc044ef3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/instance--8a79439edcd7c69bc15138c5.md) | 75 | `declaration-track:8a79439edcd7c69bc15138c51ec3c3291ff85780065f954c582475256cfd90b5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/instance--00010f8b1fa0dbb1df3ab6c4.md) | 81 | `declaration-track:00010f8b1fa0dbb1df3ab6c4e0d73da2d83b46301762de8b69cfddfe331ea6ab` |
| 12 | `theorem` | [mk_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-zero--fa37f24f5d3490895262c717.md) | 85 | `result-track:fa37f24f5d3490895262c7172d7bae8278d6b5c324860e815abac0387095d1d9` |
| 13 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-eq-zero--a893c8a34f471cbf19a10c45.md) | 89 | `result-track:a893c8a34f471cbf19a10c45b9f67ae05f55fc0f10caa06fe87303910ffae76c` |
| 14 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/addcommgroup--cf8478f2d3fb57b72119dfe3.md) | 91 | `declaration-track:cf8478f2d3fb57b72119dfe327f3823228b596312c19fd7edfa547f7a25cd14a` |
| 15 | `theorem` | [mk_add](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-add--ab70251d21b0d627c1435389.md) | 95 | `result-track:ab70251d21b0d627c143538911a02e21137e8bf36086f91e68205091509ccf3e` |
| 16 | `theorem` | [mk_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-neg--033bcbee006886078f03fbd5.md) | 99 | `result-track:033bcbee006886078f03fbd5bd0142c8b10572f85573469b14af129023e00ef0` |
| 17 | `theorem` | [mk_sub](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-sub--5d64c7b7338fb11cf78bec61.md) | 103 | `result-track:5d64c7b7338fb11cf78bec613ced317f9a2b49587a187e0452324c46e9b5040d` |
| 18 | `lemma` | [«forall»](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/forall--600bb060216f42d84f9f363b.md) | 106 | `result-track:600bb060216f42d84f9f363b99e92bd6b8b436618e2c05cf0644a80e4567f1ac` |
| 19 | `theorem` | [subsingleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/subsingleton-iff--456d2fca49900312530a8bd5.md) | 108 | `result-track:456d2fca49900312530a8bd50e381af11a4511fab88c466d110b02941cdb5130` |
| 20 | `instance` | [instSMul'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/instsmul--bb61f88a7ee801d0d57effb6.md) | 116 | `declaration-track:bb61f88a7ee801d0d57effb65a0d1410784cfb28e7b273501235a579d859cf0d` |
| 21 | `instance` | [instSMul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/instsmul--6714f59c889349afbf7c0211.md) | 122 | `declaration-track:6714f59c889349afbf7c021176aa15f0dddbd21843f7a3138291fa3b681a004a` |
| 22 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-smul--ad72e2a8dea959b20f37eb4d.md) | 126 | `result-track:ad72e2a8dea959b20f37eb4dee19928785c47170ca1ca391f8d76d56e2ba1819` |
| 23 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/smulcommclass--68d120a780ce1f65c0b98de5.md) | 129 | `declaration-track:68d120a780ce1f65c0b98de5416f2f1c00cc0bcb5e6d3e382b0b7260f387ba49` |
| 24 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/isscalartower--42d224b64bbc3bc107d6343b.md) | 133 | `declaration-track:42d224b64bbc3bc107d6343ba444060a911f1e6cbef128fbf92cd98169e4a1e5` |
| 25 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/iscentralscalar--6b14d7c85219f95236546bd6.md) | 137 | `declaration-track:6b14d7c85219f95236546bd63e5bead9ea9cf4f750f5e72b923b1c389ddd1bcd` |
| 26 | `instance` | [mulAction'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mulaction--d04d9efb4edd0c8043559480.md) | 147 | `declaration-track:d04d9efb4edd0c80435594802013b5521566b5bf27bf8f0cd70cd699812cf266` |
| 27 | `instance` | [mulAction](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mulaction--00357f209b6cd49f360d3cea.md) | 151 | `declaration-track:00357f209b6cd49f360d3cea1bb4c0e82cb98595531e12fac045877a32bf361b` |
| 28 | `instance` | [smulZeroClass'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/smulzeroclass--4cf54320e1ee003e05e90390.md) | 154 | `declaration-track:4cf54320e1ee003e05e903905391018c8b0e74408ea55d7288a729b0ddc07591` |
| 29 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/smulzeroclass--0592451e7389acc4d1444983.md) | 158 | `declaration-track:0592451e7389acc4d144498323768a14b703a0092600fe4b65d7c6df18fdd62b` |
| 30 | `instance` | [distribSMul'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/distribsmul--28a08dba1fe35baa2b288f2a.md) | 161 | `declaration-track:28a08dba1fe35baa2b288f2a68b08e4e690d17672c83a47337e8755dcfa5b803` |
| 31 | `instance` | [distribSMul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/distribsmul--5c67156e0c54f8692e542416.md) | 166 | `declaration-track:5c67156e0c54f8692e542416c3bfce46d6f63514a2a671711b6d591453a8c9a5` |
| 32 | `instance` | [distribMulAction'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/distribmulaction--bcaf7ea05d8a086c78571c47.md) | 169 | `declaration-track:bcaf7ea05d8a086c78571c47db84c66e88b32fa9c7efc55b178c7784c07c19b3` |
| 33 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/distribmulaction--517efee7fdaeef0ba91eb958.md) | 174 | `declaration-track:517efee7fdaeef0ba91eb958841df1dac231e81805ac1edc3ed738d6dcb5051e` |
| 34 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/module--3e610037e794230e27dd35f3.md) | 177 | `declaration-track:3e610037e794230e27dd35f366f9158e5b88af9233c63c8e869da72df575da5b` |
| 35 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/module--d8c02bd8120859480ced3160.md) | 182 | `declaration-track:d8c02bd8120859480ced31609b1aab8d379c60acb1f98e527608770e0717f9be` |
| 36 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/induction-on--cc842be7d3aa6db923e78cee.md) | 188 | `result-track:cc842be7d3aa6db923e78cee47912f214dda43bf47e68dc9a828db27a92ad858` |
| 37 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mk-surjective--847884b8dc8c45d8aaf5f3d2.md) | 191 | `result-track:847884b8dc8c45d8aaf5f3d29137df0e5a59df02778be885bd4c1648c09789f6` |
| 38 | `theorem` | [quot_hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/quot-hom-ext--e1cfd44629fb0e54c0009282.md) | 201 | `result-track:e1cfd44629fb0e54c00092828ad84e18655a3c48c850a95cf382d972a6275d4a` |
| 39 | `def` | [mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mkq--def57eedeee1a5bd34d033c1.md) | 206 | `declaration-track:def57eedeee1a5bd34d033c1f325810ea45ba115bf14c84108e5ef2d5180d56a` |
| 40 | `theorem` | [mkQ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mkq-apply--e85aaf7e21af14a4c744f7c6.md) | 212 | `result-track:e85aaf7e21af14a4c744f7c6a52ce8563f6bee339d63a3e20669e266ade60924` |
| 41 | `theorem` | [mkQ_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/mkq-surjective--49b45ab39a8d6d716e5bb6fe.md) | 215 | `result-track:49b45ab39a8d6d716e5bb6fedc47b760aa8e04f82318b85a6c2950a3f35c9f3a` |
| 42 | `theorem` | [linearMap_qext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/linearmap-qext--bcce52c13746e6ecef9972cf.md) | 227 | `result-track:bcce52c13746e6ecef9972cf32ec0adbec2ba1980e4d1e7ffe2ae77ae90ae070` |
| 43 | `def` | [quotEquivOfEq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/quotequivofeq--ded7acbb1874c9b95242f4cb.md) | 231 | `declaration-track:ded7acbb1874c9b95242f4cb8b6eb3a452c69637de9754ace1ef426bf4e2741f` |
| 44 | `theorem` | [quotEquivOfEq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/declarations/quotequivofeq-mk--34abb1e186b8af36b9b0ec3e.md) | 243 | `result-track:34abb1e186b8af36b9b0ec3e017e22cf19e053abfc2fe14ae4e6987c681c367b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
