# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d1b1ef4f6e21d76c1856300093e47b1f16caa9e",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d1b1ef4f6e21d76c1856300093e47b1f16caa9e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.BooleanAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Image` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.OfMap` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sets` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Fin.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-fintype--4dd04299d767679143accd5c.md) | 32 | `declaration-track:4dd04299d767679143accd5c6d4b62173ed8f74eb2f5525ed080aae1c08ad46e` |
| 2 | `theorem` | [Fin.univ_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-def--79de0fc644342f74fbd47337.md) | 35 | `result-track:79de0fc644342f74fbd47337654c9c2d04082fa8b08f8ee30f83abbb006eaeec` |
| 3 | `theorem` | [Finset.val_univ_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/finset-val-univ-fin--b72de1a078507d7adff554a3.md) | 38 | `result-track:b72de1a078507d7adff554a33f4d2abf439a389754a3748bfa3011eaff001141` |
| 4 | `theorem` | [nonempty_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/nonempty-fintype--32637944ff0977609111b11a.md) | 41 | `result-track:32637944ff0977609111b11a73e3b63b1304e007ce09b8a9a5df4b5ba6b9ae2f` |
| 5 | `theorem` | [List.toFinset_finRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/list-tofinset-finrange--9b8eb695a95185a34bc9ba41.md) | 45 | `result-track:9b8eb695a95185a34bc9ba4116a4236a960a8a6b04990f8af1e632eec03f1a57` |
| 6 | `theorem` | [Fin.univ_val_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-val-map--d3cdc8cd2b95d61a63c353be.md) | 48 | `result-track:d3cdc8cd2b95d61a63c353be851349307315173c5b74b178a663f8dda8703db3` |
| 7 | `theorem` | [Fin.univ_image_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-image-def--f76ab73f845138f6d5a3b01b.md) | 52 | `result-track:f76ab73f845138f6d5a3b01be3a86d1ac9fafe5368d053227ec2438b1a1e4dd0` |
| 8 | `theorem` | [Fin.univ_map_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-map-def--b914324c0699bae2a04e8f7e.md) | 56 | `result-track:b914324c0699bae2a04e8f7e29090b855e84b0c745ffa3c74e784217e68f2fba` |
| 9 | `theorem` | [Fin.image_succAbove_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-image-succabove-univ--ff93305110af7f5a1657f473.md) | 61 | `result-track:ff93305110af7f5a1657f47379390cf6c80683c05589004615d2b6c21787c187` |
| 10 | `theorem` | [Fin.image_succ_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-image-succ-univ--c388f0505a060991d14eadb6.md) | 66 | `result-track:c388f0505a060991d14eadb68388aa92314ce3c397b150db1c015d3d928c0226` |
| 11 | `theorem` | [Fin.image_castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-image-castsucc--6540c98a281c7fa0276d9ec5.md) | 70 | `result-track:6540c98a281c7fa0276d9ec585b39ef2b0f05e3c0815ae11bd9c144b98154a63` |
| 12 | `theorem` | [Fin.univ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-succ--410102d4a6f748536c94d42f.md) | 77 | `result-track:410102d4a6f748536c94d42f1ddec774503d96e194266efd55392881f813be07` |
| 13 | `theorem` | [Fin.univ_castSuccEmb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-castsuccemb--0312567023d403b33d5abd0f.md) | 83 | `result-track:0312567023d403b33d5abd0fad07b4f34d0cbc524bd5e99bb5b6e523736888ac` |
| 14 | `theorem` | [Fin.univ_succAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-succabove--13a37bc8584f133c089cd67e.md) | 90 | `result-track:13a37bc8584f133c089cd67e5fc24f013a9d05eea8ccdd4f86b9d8296e3913b1` |
| 15 | `theorem` | [Fin.univ_image_get](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-image-get--f03eac31c943cda5bbbc7182.md) | 94 | `result-track:f03eac31c943cda5bbbc718258afd90f31c657d0ca35f772c392513fd4c1bd50` |
| 16 | `theorem` | [Fin.univ_image_getElem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-image-getelem--6f870357b1363ad77177634f.md) | 98 | `result-track:6f870357b1363ad77177634f7d22d83704cbdad9abe3f87b761a3457783f28ee` |
| 17 | `theorem` | [Fin.univ_image_get'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fin-univ-image-get--feffe7266b5178bfa58a1784.md) | 102 | `result-track:feffe7266b5178bfa58a1784cbc927b6066afec3866a6973df8dffe4e0f3ceb4` |
| 18 | `def` | [Unique.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/unique-fintype--6195d964daeafbf792648c31.md) | 107 | `declaration-track:6195d964daeafbf792648c3193eaae1b6bf39c774ccb07817af763f0d801c677` |
| 19 | `instance` | [Fintype.subtypeEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-subtypeeq--4b2b5bca518fc84adaeafee5.md) | 112 | `declaration-track:4b2b5bca518fc84adaeafee5d0331e6ccb2b752f1d6516e4f3b2bf6c0bbe1a57` |
| 20 | `instance` | [Fintype.subtypeEq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-subtypeeq--2f7a86a65dcdc0d7e52c79fa.md) | 117 | `declaration-track:2f7a86a65dcdc0d7e52c79fabe266cb12d1afb5675588e11b6e544000374540d` |
| 21 | `theorem` | [Fintype.univ_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-univ-empty--18eb41b1c2fe268867f2d5c0.md) | 120 | `result-track:18eb41b1c2fe268867f2d5c06fb2bcf957da8be8712fd0adb1f7820fb47a7cf3` |
| 22 | `theorem` | [Fintype.univ_pempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-univ-pempty--e2e7adba39c355202d015e82.md) | 123 | `result-track:e2e7adba39c355202d015e82beb9f687a15807f624721e63b02ed977493b6ba5` |
| 23 | `instance` | [Unit.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/unit-fintype--a74d10a436042be3ba9d9011.md) | 126 | `declaration-track:a74d10a436042be3ba9d90118766dc1139bf934a569d67bb642e90dddda2bfad` |
| 24 | `theorem` | [Fintype.univ_unit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-univ-unit--9b2cfb67556988dadb5dbac9.md) | 129 | `result-track:9b2cfb67556988dadb5dbac992cdecf8897c77b30e023b85883b68a46a94e2c1` |
| 25 | `instance` | [PUnit.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/punit-fintype--cd24a7308760a344cbaedb48.md) | 132 | `declaration-track:cd24a7308760a344cbaedb48a2936a3c27101f782d1cd1364c4cbd7a085f3692` |
| 26 | `theorem` | [Fintype.univ_punit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-univ-punit--b94df461516416ba30806303.md) | 135 | `result-track:b94df461516416ba30806303b61cc8630087ab17aa0191c24b84234e70d1ab55` |
| 27 | `theorem` | [Fintype.univ_bool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-univ-bool--4cd0f5a245c3703a1d2beadc.md) | 139 | `result-track:4cd0f5a245c3703a1d2beadcc404890c6a3ba15be19a87e21098d55baa580c23` |
| 28 | `def` | [Fintype.prodLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-prodleft--b6fba9eca373f75b9aa2a1d9.md) | 143 | `declaration-track:b6fba9eca373f75b9aa2a1d92ea70509e55c6d0c66cf513616265d6f192a89c3` |
| 29 | `def` | [Fintype.prodRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/fintype-prodright--23542e07d93f3a727ae09278.md) | 147 | `declaration-track:23542e07d93f3a727ae09278e841d3782944ff61d519e1e3c2cfc7a7b5128975` |
| 30 | `instance` | [ULift.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/ulift-fintype--7831b23a8d7a7e1f342e308f.md) | 150 | `declaration-track:7831b23a8d7a7e1f342e308f3161916d8432a744223c59037eeac6ef0c1d339d` |
| 31 | `instance` | [PLift.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/plift-fintype--48045f2a0c9e7da7acc7c36f.md) | 153 | `declaration-track:48045f2a0c9e7da7acc7c36fe38d06a74d6c20aa2654088125eeccf36b5b2afb` |
| 32 | `instance` | [PLift.fintypeProp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/plift-fintypeprop--ec46f476e57a38bd86098ee2.md) | 156 | `declaration-track:ec46f476e57a38bd86098ee281a4e133cce67b80e14078fa368414c31f7d0326` |
| 33 | `instance` | [Quotient.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/quotient-fintype--ed1e9afc59c01f0172e6fc3c.md) | 159 | `declaration-track:ed1e9afc59c01f0172e6fc3ca117668afb93e18760af56048d2dee11e74e5f5a` |
| 34 | `instance` | [PSigma.fintypePropLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/psigma-fintypepropleft--5aa35fc47d085946950baaf6.md) | 163 | `declaration-track:5aa35fc47d085946950baaf6515f886f8b9f564333e5060ee99674bc8081811c` |
| 35 | `instance` | [PSigma.fintypePropRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/psigma-fintypepropright--ee29eaf278da8728f578023d.md) | 168 | `declaration-track:ee29eaf278da8728f578023dba119d57d9d5e1b2fa81c5486be5c45c6d9e4432` |
| 36 | `instance` | [PSigma.fintypePropProp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/psigma-fintypepropprop--ba057ecc2eaea44e557ded8b.md) | 173 | `declaration-track:ba057ecc2eaea44e557ded8bea82daf7e4bb6b7ea2671ab15ae825037fde2335` |
| 37 | `instance` | [pfunFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/pfunfintype--e6456b4df585525e341634bd.md) | 178 | `declaration-track:e6456b4df585525e341634bd4fe32252cab20df5907ee9b4b1001457f9b54a1c` |
| 38 | `def` | [truncOfMultisetExistsMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/truncofmultisetexistsmem--131238239e09022113c5755f.md) | 188 | `declaration-track:131238239e09022113c5755f0938969b8c2a1c90011f9885d4a520eefc231cce` |
| 39 | `def` | [truncOfNonemptyFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/truncofnonemptyfintype--414b85b49dfc05464e219793.md) | 196 | `declaration-track:414b85b49dfc05464e2197939b3b7a1704fd11d260c97bc950d8ea1351122ce5` |
| 40 | `def` | [truncSigmaOfExists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/truncsigmaofexists--bf3f77c3760d0284e4039681.md) | 202 | `declaration-track:bf3f77c3760d0284e403968105ba853536f47c8440d334d22ec05ea52982c31d` |
| 41 | `theorem` | [count_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/count-univ--804a2d72f615e0b387255827.md) | 213 | `result-track:804a2d72f615e0b387255827e611ac19bdd94878eedfe38eabeefc7fb72059d2` |
| 42 | `theorem` | [map_univ_val_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/map-univ-val-equiv--3805e8d9048e1e6a630ac640.md) | 217 | `result-track:3805e8d9048e1e6a630ac640c1b2e25f7e8d9ec134335c217a4aef91c5b37aed` |
| 43 | `theorem` | [bijective_iff_map_univ_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/bijective-iff-map-univ-eq-univ--3125d4b616039281a87ac8c0.md) | 223 | `result-track:3125d4b616039281a87ac8c006f220b833629b507d1b1089691acfaa338e88a7` |
| 44 | `def` | [seqOfForallFinsetExistsAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/seqofforallfinsetexistsaux--ca9d6df830eef1ec5425e49c.md) | 233 | `declaration-track:ca9d6df830eef1ec5425e49ce5e0abb714e81f4d53773e6a0dad82f88c241991` |
| 45 | `theorem` | [exists_seq_of_forall_finset_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/exists-seq-of-forall-finset-exists--512eb092e5f7af5288622418.md) | 248 | `result-track:512eb092e5f7af5288622418faa5b0fb09797349d2efc958c6f5203e39e0a0c1` |
| 46 | `theorem` | [exists_seq_of_forall_finset_exists'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/declarations/exists-seq-of-forall-finset-exists--08e861a3f75e115926513ff3.md) | 282 | `result-track:08e861a3f75e115926513ff3b83d1f7d18921a17dd6bfe76d9ce3414b7f5e06d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
