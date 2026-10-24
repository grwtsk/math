# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cb964fd26e11ef495cf6910fe8bda5dba7262ea",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cb964fd26e11ef495cf6910fe8bda5dba7262ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.NeZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/pnat--6771782da4381fb274839fd3.md) | 24 | `declaration-track:6771782da4381fb274839fd3e693eae5aa78c8b7af901be69b4cd4aba7264a00` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/instance--1947f4b76717f28889adabae.md) | 31 | `declaration-track:1947f4b76717f28889adabae8e20f05877506861be51831eb56a03c81940632a` |
| 3 | `def` | [PNat.val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/pnat-val--457480027f7f8ab1e47140e6.md) | 36 | `declaration-track:457480027f7f8ab1e47140e6c0a32ec7cb3392a190c48c28c23a76d0bdda3e2c` |
| 4 | `instance` | [coePNatNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/coepnatnat--2880f6657335bdfc523afcdd.md) | 38 | `declaration-track:2880f6657335bdfc523afcdd0c8f28f33b57e4219d98a47f4bc8949fb42dad45` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/instance--60b725ee6b2af75c322850ce.md) | 42 | `declaration-track:60b725ee6b2af75c322850ce1e70b511e249ac8aac3a1c5a1e735e62c0cb1b4d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/instance--f405ac7bc34099e5f2465eff.md) | 46 | `declaration-track:f405ac7bc34099e5f2465eff7eb42279e0ddb06ae412d00880cd0e9f3581cb3c` |
| 7 | `theorem` | [mk_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/mk-coe--7b17d6523cb0d3cc57c4e35e.md) | 53 | `result-track:7b17d6523cb0d3cc57c4e35e4b7ae79ad4eb134c1ac41eb54f2837a4035b5cb1` |
| 8 | `def` | [natPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/natpred--f0c151da1ffc1286837acc03.md) | 58 | `declaration-track:f0c151da1ffc1286837acc03ab9cc305aa5bb61efc9f1f6dc028026b59b89e23` |
| 9 | `theorem` | [natPred_eq_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/natpred-eq-pred--49e3143f281cf4584c79a0cc.md) | 63 | `result-track:49e3143f281cf4584c79a0cc713d9b3aa30f165fe44cb5920e8950b64b9a808a` |
| 10 | `def` | [toPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/topnat--cb1efe9013a4cae72d4cf368.md) | 73 | `declaration-track:cb1efe9013a4cae72d4cf368da3779b9b9b094bd0dbe09e000e9f67e26b442fe` |
| 11 | `def` | [succPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/succpnat--62193cdd694cc3246adb3a82.md) | 78 | `declaration-track:62193cdd694cc3246adb3a82574b0efa5ca60bdb135e357cb331816f734a1345` |
| 12 | `theorem` | [succPNat_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/succpnat-coe--1ecbbeccd96c675e7fb1fce9.md) | 83 | `result-track:1ecbbeccd96c675e7fb1fce91b94003cf1aec2f9c58ce4c6604c00a6993c8aaa` |
| 13 | `theorem` | [natPred_succPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/natpred-succpnat--a93319e295353c84e876ba33.md) | 88 | `result-track:a93319e295353c84e876ba3397aeb2b98288e3bea365da3b245a2b627092c8b8` |
| 14 | `theorem` | [_root_.PNat.succPNat_natPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/root-pnat-succpnat-natpred--dd963f2903cad05325344f66.md) | 93 | `result-track:dd963f2903cad05325344f66cb9f41df2fec557ca62713b545a4c31878131f6b` |
| 15 | `def` | [toPNat'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/topnat--3653cf7781ffce1cab447c68.md) | 99 | `declaration-track:3653cf7781ffce1cab447c688ec400f414c22824b2201036849d1023bdaf2b85` |
| 16 | `theorem` | [toPNat'_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/topnat-coe--85656651543acae8da3eeaaa.md) | 104 | `result-track:85656651543acae8da3eeaaabd2260ec897c90cd5cab5ba3834975a1b2ce2058` |
| 17 | `theorem` | [mk_le_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/mk-le-mk--96e2770509a27412b72d47eb.md) | 123 | `result-track:96e2770509a27412b72d47eb55cdb517bee0580ad72d939db29c505243d06ca1` |
| 18 | `theorem` | [mk_lt_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/mk-lt-mk--fbc3a88d5e1fa23150e05d10.md) | 128 | `result-track:fbc3a88d5e1fa23150e05d10e25bf4e084548bb267598f45aa17ddbb2cb27bc7` |
| 19 | `theorem` | [coe_le_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/coe-le-coe--55d132935831823b08cb4f31.md) | 133 | `result-track:55d132935831823b08cb4f31c38afb0f203df43b74b0ff6f8ae1c0aca20f3834` |
| 20 | `theorem` | [coe_lt_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/coe-lt-coe--f6da90f80b4a0d24087ab14b.md) | 138 | `result-track:f6da90f80b4a0d24087ab14b26f9830bac3eb6fa3612ba554b6fd8494852a837` |
| 21 | `theorem` | [pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/pos--962e554c7c8c74168bccc8cd.md) | 143 | `result-track:962e554c7c8c74168bccc8cd8033937609abb250b7fdf009cadf839450c0288c` |
| 22 | `theorem` | [eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/eq--cbfb7153c9b7002aaf045d45.md) | 147 | `result-track:cbfb7153c9b7002aaf045d45f6fef5f337490374edb14e40af36cb86319c5886` |
| 23 | `theorem` | [coe_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/coe-injective--24574e15cdde609d4f87c1d6.md) | 151 | `result-track:24574e15cdde609d4f87c1d6a3118f8c03887395b7cc70e377e985a310805d9e` |
| 24 | `theorem` | [ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/ne-zero--2ee0245b32d12743855e50df.md) | 156 | `result-track:2ee0245b32d12743855e50df878897c9d3bdd3cc5f9977552c2dbbbf20cce9ca` |
| 25 | `instance` | [_root_.NeZero.pnat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/root-nezero-pnat--d3409a5c0ccdd6c2ca02ede4.md) | 160 | `declaration-track:d3409a5c0ccdd6c2ca02ede4fc82bd01be37299cd3296628f1f24166669dd0c3` |
| 26 | `theorem` | [toPNat'_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/topnat-coe--7b5b84f66f268ab531954125.md) | 164 | `result-track:7b5b84f66f268ab53195412587294e74f5d7e623645b161e3dd7d988f963c2a6` |
| 27 | `theorem` | [coe_toPNat'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/coe-topnat--d6933828f8271181087cb5f4.md) | 169 | `result-track:d6933828f8271181087cb5f44493e9c3dedc29ea0a06114096d74c5c68afeeb2` |
| 28 | `theorem` | [one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/one-le--3e6e1ef78a2997542acda359.md) | 174 | `result-track:3e6e1ef78a2997542acda3593dbcb67d1f848106b0b2a4aae9cb527be994a101` |
| 29 | `theorem` | [not_lt_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/not-lt-one--6f38b03fbba88b8a4e7045be.md) | 179 | `result-track:6f38b03fbba88b8a4e7045bec97cb83a7e47e70061324cdad2e610986f9f7f5f` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/instance--6455374312ab814525ea9d5e.md) | 183 | `declaration-track:6455374312ab814525ea9d5e0764d5bc4798065a87e6afe38d6eaa2bd4bdecdf` |
| 31 | `theorem` | [mk_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/mk-one--0787b08ebfb01b286f3841af.md) | 188 | `result-track:0787b08ebfb01b286f3841af8fdd942dcfb07823d592ca349df88fe9dc4ffcff` |
| 32 | `theorem` | [one_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/one-coe--515a8e51988a290664cb9741.md) | 193 | `result-track:515a8e51988a290664cb974103dd26abef4a665eca2f547e061112886d4c3a46` |
| 33 | `theorem` | [coe_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/coe-eq-one-iff--101385b2188b93d65bf6f5cb.md) | 198 | `result-track:101385b2188b93d65bf6f5cb56708e025ae915ed7ebee9060bbdcc069cc79d02` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/instance--1e413203db4871fe8b9393f1.md) | 202 | `declaration-track:1e413203db4871fe8b9393f12680be6d70a6c2f6feeb9149a41550cc85a11c57` |
| 35 | `def` | [strongInductionOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/stronginductionon--8e87ebe0dbe5787f87a287da.md) | 206 | `declaration-track:8e87ebe0dbe5787f87a287dae415cc075bc5b87003ae73ae3a2bb2a7a7700ccd` |
| 36 | `def` | [modDivAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/moddivaux--aee9a8b815628272cbf5ae24.md) | 218 | `declaration-track:aee9a8b815628272cbf5ae24c68f80e14a749a04d9163091ddabee9b21170842` |
| 37 | `def` | [modDiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/moddiv--bfe661b279b0500a6d2dc162.md) | 231 | `declaration-track:bfe661b279b0500a6d2dc162430f26fc5b5e9b9607add3047d36fe3de51a3fb9` |
| 38 | `def` | [mod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/mod--790bfcc2c157af97b36aa40e.md) | 238 | `declaration-track:790bfcc2c157af97b36aa40e7d03b37789fb133440cd1759de24bab072e0f2a9` |
| 39 | `def` | [div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/div--0b097229cf7c38841c836a35.md) | 246 | `declaration-track:0b097229cf7c38841c836a35720d1f40ea8c64368df377cb4b71ad3d3a4d7272` |
| 40 | `theorem` | [mod_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/mod-coe--e7e851bada4dc3d64fa79d38.md) | 250 | `result-track:e7e851bada4dc3d64fa79d38fabd45d0841a4da65f787416cb2dd0753d3c40f7` |
| 41 | `theorem` | [div_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/div-coe--30a7127922cd10ff8cb1b629.md) | 262 | `result-track:30a7127922cd10ff8cb1b629d437457ab887218ee739b6c3bc19a8678cf68c9f` |
| 42 | `def` | [divExact](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/divexact--ad4213afc7ff8f728c645511.md) | 275 | `declaration-track:ad4213afc7ff8f728c6455118a7ec591e5edbcdbb757b37d4901f8cacd474b44` |
| 43 | `instance` | [Nat.canLiftPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/nat-canliftpnat--a6717b81f454a58688f2974f.md) | 283 | `declaration-track:a6717b81f454a58688f2974f6b0fd1257518357997d3de727a298d62a29bd683` |
| 44 | `instance` | [Int.canLiftPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.lean/declarations/int-canliftpnat--8b279302190d1954ccd6c61b.md) | 287 | `declaration-track:8b279302190d1954ccd6c61b5de98e51962664714172fe5096c79ff834c5dec6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
