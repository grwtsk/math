# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7290ac8cda057b416cdbdd1e7d9131bd95363ef",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7290ac8cda057b416cdbdd1e7d9131bd95363ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean.json)

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
| 1 | `instance` | [Fin.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-fintype--5dd60a8e6edc5bb064c10c4e.md) | 37 | `declaration-track:5dd60a8e6edc5bb064c10c4e04c9da49821e154ecf2c6e7a6556484e3606e3f7` |
| 2 | `theorem` | [Fin.univ_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-def--6a3f65f405c87b0d9a628e39.md) | 40 | `result-track:6a3f65f405c87b0d9a628e39d8176fb9f203e665a6d2c950274efbd9829b4cec` |
| 3 | `theorem` | [Finset.univ_fin2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/finset-univ-fin2--853b1370a3c13fd661a91568.md) | 43 | `result-track:853b1370a3c13fd661a91568fd279f3c05496886a6b07d06ae0f56a46fb04c2e` |
| 4 | `theorem` | [Finset.val_univ_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/finset-val-univ-fin--77d34b4eafff28082ec3c38a.md) | 45 | `result-track:77d34b4eafff28082ec3c38ab2e2f89bb7a4558c75a6148f5cce0c46dfca9d43` |
| 5 | `theorem` | [nonempty_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/nonempty-fintype--975534152072107974609435.md) | 48 | `result-track:9755341520721079746094351cf8dce858b888f4bc898ee172b114397e062e85` |
| 6 | `theorem` | [List.toFinset_finRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/list-tofinset-finrange--eea3ee7acae76c817c1fa685.md) | 52 | `result-track:eea3ee7acae76c817c1fa685a04c1fa69e329a50a6989aae8829eb60e981257f` |
| 7 | `theorem` | [Fin.univ_val_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-val-map--97e51c0604f2cd57eb609b09.md) | 55 | `result-track:97e51c0604f2cd57eb609b092746d36491b63f97454254f4b8ea142ac3e6356f` |
| 8 | `theorem` | [Fin.univ_image_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-image-def--b76a52bf921811fcd14ab4b5.md) | 59 | `result-track:b76a52bf921811fcd14ab4b5b5a194d4a74e9b1cba5cdc9520564d5f250342c4` |
| 9 | `theorem` | [Fin.univ_map_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-map-def--4eb222898287fc921702e209.md) | 63 | `result-track:4eb222898287fc921702e20934861a7aff2b1d9eed41d6d5de57dfbd77b2dcfb` |
| 10 | `theorem` | [Fin.image_succAbove_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-image-succabove-univ--68fefb93c292afbc1c72d23b.md) | 68 | `result-track:68fefb93c292afbc1c72d23bfca5f4bd91833cc9245c8968da1eed6539ad259d` |
| 11 | `theorem` | [Fin.image_succ_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-image-succ-univ--c85438f79033ee5f739fbda7.md) | 73 | `result-track:c85438f79033ee5f739fbda723fb54e30c84b11552ef95c1a9d4302ca43423fc` |
| 12 | `theorem` | [Fin.image_castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-image-castsucc--f3b54799113221163af5daa8.md) | 77 | `result-track:f3b54799113221163af5daa89f0bda23f7764491473a1a75aedebc5a71b9b192` |
| 13 | `theorem` | [Fin.univ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-succ--a91e4258ed1fec8c90dd4c3f.md) | 84 | `result-track:a91e4258ed1fec8c90dd4c3f42543142b1d7701baf952cae8e747db3758c7910` |
| 14 | `theorem` | [Fin.univ_castSuccEmb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-castsuccemb--e7f79e1f9979ea9ed7dee171.md) | 90 | `result-track:e7f79e1f9979ea9ed7dee171401530ee09ea6e6cba576f04f2fa50150672180b` |
| 15 | `theorem` | [Fin.univ_succAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-succabove--e87ccfd93003f419c767dc77.md) | 97 | `result-track:e87ccfd93003f419c767dc7737194591a4d53a854449837ad9f7a75804856a32` |
| 16 | `theorem` | [Fin.univ_image_get](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-image-get--9b5a6cbf37b26e4a1d6d7774.md) | 101 | `result-track:9b5a6cbf37b26e4a1d6d7774c5debb41222886a2502f7771399b551dfacae77f` |
| 17 | `theorem` | [Fin.univ_image_getElem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-image-getelem--a05bdc64ede9bbdf1274cbab.md) | 105 | `result-track:a05bdc64ede9bbdf1274cbab5e4f1714566be0ed7cd8d7e9802e917acdf69696` |
| 18 | `theorem` | [Fin.univ_image_get'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-univ-image-get--b130e3d9e090809ada5d98d4.md) | 109 | `result-track:b130e3d9e090809ada5d98d49c33c116f6265ebf6eb7a4269340df40b7d42c5d` |
| 19 | `lemma` | [Fin.eq_iff_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fin-eq-iff-eq-zero-iff--ddd98bb447175dc6f22adc91.md) | 113 | `result-track:ddd98bb447175dc6f22adc91448d58f733c8d46af1c438c9f5fd476c6b58185a` |
| 20 | `instance` | [Unique.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/unique-fintype--c4c63ea1f7787f9f6b8a212a.md) | 116 | `declaration-track:c4c63ea1f7787f9f6b8a212aa6e4ccb603a164f5d67d07911ab198241a6634ba` |
| 21 | `instance` | [Fintype.subtypeEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-subtypeeq--23d867c4dd6a643c8be7f2b3.md) | 121 | `declaration-track:23d867c4dd6a643c8be7f2b34b6583f8d7eb30a29d3a46b745fdef2f9766cf44` |
| 22 | `instance` | [Fintype.subtypeEq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-subtypeeq--e6024bf2ead617af6acbf85b.md) | 126 | `declaration-track:e6024bf2ead617af6acbf85b82e616ff0e21ff6bb9a60e8dd759cdad2681f4aa` |
| 23 | `theorem` | [Fintype.univ_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-univ-empty--04e2cb25f9740be20d0b942f.md) | 129 | `result-track:04e2cb25f9740be20d0b942f3b22b2f0ec8450ac01cf73aa6f4abc404e2a572f` |
| 24 | `theorem` | [Fintype.univ_pempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-univ-pempty--470b199a3fcc0d9f97115a35.md) | 132 | `result-track:470b199a3fcc0d9f97115a355b478d17c6cea846366c007e215db03fd700a9e0` |
| 25 | `instance` | [Unit.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/unit-fintype--483a4e654c2c8b7d085957c8.md) | 135 | `declaration-track:483a4e654c2c8b7d085957c8cf1702ad3153e935d45300ef4fec5bbe64e0bb0c` |
| 26 | `theorem` | [Fintype.univ_unit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-univ-unit--ef533616b5ec033167096ba0.md) | 138 | `result-track:ef533616b5ec033167096ba09e959e75feb8d70ebe8c263ccff6e57b737762fe` |
| 27 | `instance` | [PUnit.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/punit-fintype--7f6c113f5f08f880f5e9c5f8.md) | 141 | `declaration-track:7f6c113f5f08f880f5e9c5f8eeac0ecaef4b758c41953dccda9f364d246e80c0` |
| 28 | `theorem` | [Fintype.univ_punit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-univ-punit--f994aeb03f5804e56c7b3015.md) | 144 | `result-track:f994aeb03f5804e56c7b30157a7a5a07cc81f53c8ca90c6943a4ee0815b3c209` |
| 29 | `theorem` | [Fintype.univ_bool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-univ-bool--b72f22b3a2c61605c9a49b15.md) | 148 | `result-track:b72f22b3a2c61605c9a49b159c22d4e238ee43543368aa0e08e45ee4853c38a5` |
| 30 | `def` | [Fintype.prodLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-prodleft--0d76d6e7b190f1bf79b0b15c.md) | 153 | `declaration-track:0d76d6e7b190f1bf79b0b15ccc5dfed03c9b26ca485168a4cda647dae8a570fc` |
| 31 | `def` | [Fintype.prodRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/fintype-prodright--c0f458bc3cd199ff86426c56.md) | 158 | `declaration-track:c0f458bc3cd199ff86426c56dc29238a5c2e762fd943ff95fc2b85872b9a5919` |
| 32 | `instance` | [ULift.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/ulift-fintype--17d5d4d53b962cd254826202.md) | 161 | `declaration-track:17d5d4d53b962cd2548262021fbeaebf0cce4059ccd6ae11d104c88f75832fec` |
| 33 | `instance` | [PLift.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/plift-fintype--6bcb13aae78db211c356a914.md) | 164 | `declaration-track:6bcb13aae78db211c356a9142568e382185948e0aa234dc6ae99eb2a5a94564f` |
| 34 | `instance` | [PLift.fintypeProp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/plift-fintypeprop--c3e1e1a4ca5b738dfa146899.md) | 167 | `declaration-track:c3e1e1a4ca5b738dfa1468994dfcd6be00a7d79478c5b2011e4dd82239fb09c9` |
| 35 | `instance` | [Quotient.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/quotient-fintype--c3e528dcd470472aa0666af8.md) | 170 | `declaration-track:c3e528dcd470472aa0666af8b9da69e6fba017050bdb966c82e9547f346bf1f9` |
| 36 | `instance` | [PSigma.fintypePropLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/psigma-fintypepropleft--f5cd5e436be4831fd7d59f0e.md) | 174 | `declaration-track:f5cd5e436be4831fd7d59f0ed1e5cd176ca4e52c60edb0fe412b8cbee555bea0` |
| 37 | `instance` | [PSigma.fintypePropRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/psigma-fintypepropright--b05c88d17b0b5df11616006b.md) | 179 | `declaration-track:b05c88d17b0b5df11616006bdf2dc510b8cbf9b966fbd6a05c8dc0c82c16ca68` |
| 38 | `instance` | [PSigma.fintypePropProp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/psigma-fintypepropprop--2aafe86ed2f07a3149e82a36.md) | 184 | `declaration-track:2aafe86ed2f07a3149e82a364e98aef4caeed27428db0f9c0cfd8a934862bb3f` |
| 39 | `instance` | [pfunFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/pfunfintype--5ea58695d94100290d0dbe35.md) | 189 | `declaration-track:5ea58695d94100290d0dbe352da4430b59d3eafea79551bbeaeed367e68a6774` |
| 40 | `def` | [truncOfMultisetExistsMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/truncofmultisetexistsmem--c2e0fa0b9b8951a6cd8fa92d.md) | 199 | `declaration-track:c2e0fa0b9b8951a6cd8fa92dea9c90a2cbe0b1879dde7cfc3aff2c32c432a260` |
| 41 | `def` | [truncOfNonemptyFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/truncofnonemptyfintype--afddf906b24a617869736f96.md) | 207 | `declaration-track:afddf906b24a617869736f96d788011c551f1dc9eacff40f42be47cb0362b47d` |
| 42 | `def` | [truncSigmaOfExists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/truncsigmaofexists--e2f42f24f558bad59292470f.md) | 213 | `declaration-track:e2f42f24f558bad59292470fb8ba4136ee0f279612523fb1a6624e6921ab4a10` |
| 43 | `theorem` | [count_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/count-univ--bbf24b2770ed75cfb5cd13e4.md) | 224 | `result-track:bbf24b2770ed75cfb5cd13e433e300cd7915564fd8168274155c01c4cf3b2463` |
| 44 | `theorem` | [map_univ_val_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/map-univ-val-equiv--625efc7de66717813c9d9b5e.md) | 228 | `result-track:625efc7de66717813c9d9b5e33208885feb23f68c65dd2bc1b66119a20a2de90` |
| 45 | `theorem` | [bijective_iff_map_univ_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/bijective-iff-map-univ-eq-univ--8dc8d2e9d047625280ba968b.md) | 234 | `result-track:8dc8d2e9d047625280ba968b6110f5f7dc6987853c2dfbab105948df8951bb68` |
| 46 | `def` | [seqOfForallFinsetExistsAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/seqofforallfinsetexistsaux--c828ea25d5b9d5ccd0ba7e5a.md) | 244 | `declaration-track:c828ea25d5b9d5ccd0ba7e5a8932caeeb2497a41f8ad0c5b2da8dc52d5d1fa53` |
| 47 | `theorem` | [exists_seq_of_forall_finset_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/exists-seq-of-forall-finset-exists--746f52b3fe254405d407dd53.md) | 259 | `result-track:746f52b3fe254405d407dd53d85d661c5d6af05b14801ddf77ddbf919ff20280` |
| 48 | `theorem` | [exists_seq_of_forall_finset_exists'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3c4b1e41181451d1965b55e9a8c558d4f2a08b46dbdd47489950027629a395c0.lean/declarations/exists-seq-of-forall-finset-exists--a6d6757f772d8da6fde7ac75.md) | 293 | `result-track:a6d6757f772d8da6fde7ac75e521dc5eed8884371618f11995619c0d54fa3cad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
