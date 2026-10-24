# Verification target: GRWTSK.Algebra.Symmetrized.Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74fc635ccd265a6c2d3a3a7e9c6c25bf275d9d7e",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74fc635ccd265a6c2d3a3a7e9c6c25bf275d9d7e`.

Source path: `GRWTSK/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Jordan.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SymAlg](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/symalg--b32b9fb0a55f65eddbf9c982.md) | 47 | `declaration-track:b32b9fb0a55f65eddbf9c982e5a2e7ec584f0b27d6abb8d0e8fc166f9205b6cd` |
| 2 | `def` | [sym](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym--b957d03efc54b8f2a07117e9.md) | 58 | `declaration-track:b957d03efc54b8f2a07117e9e729e87dbf66e0e65ebd5d5c6f119154c839f588` |
| 3 | `def` | [unsym](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym--9c1f9d74d660f733b30a5267.md) | 65 | `declaration-track:9c1f9d74d660f733b30a52672e5d77d89202d8379247e2bf9a18d9d4dc2470a1` |
| 4 | `theorem` | [unsym_sym](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-sym--2f04f9b8f9fbb79fdd82c32c.md) | 69 | `result-track:2f04f9b8f9fbb79fdd82c32cef0d8d5752b4251c2bb44e6f0e45f44cdc68c65f` |
| 5 | `theorem` | [sym_unsym](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-unsym--2cefab8c786af9668e4cefd0.md) | 73 | `result-track:2cefab8c786af9668e4cefd0cb538e98d1a6f13cae9de215d7554cc9f5df38a1` |
| 6 | `theorem` | [sym_comp_unsym](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-comp-unsym--2931c64c4e3eecac451d2997.md) | 77 | `result-track:2931c64c4e3eecac451d299790b6d22348e8bed77eea6040efbb5435a4f0e228` |
| 7 | `theorem` | [unsym_comp_sym](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-comp-sym--57d8a8d53cf3660e8020f208.md) | 81 | `result-track:57d8a8d53cf3660e8020f208c777cfd74d59fa6aeec1ef9107b38c27ab2aa4f9` |
| 8 | `theorem` | [sym_symm](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-symm--43356867e57ccb2cb3427121.md) | 85 | `result-track:43356867e57ccb2cb34271210d00e5442bed816e8d2b905ab7878fe9354c972e` |
| 9 | `theorem` | [unsym_symm](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-symm--2089624f03d9d4e581f74676.md) | 89 | `result-track:2089624f03d9d4e581f7467648836ce5b8bca31e3009fb62abbddaaa6474f3cc` |
| 10 | `theorem` | [sym_bijective](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-bijective--1cc39ff400bc248783f408d6.md) | 92 | `result-track:1cc39ff400bc248783f408d6089bf0884574a50644d75ba158155c4c8f9cb1ad` |
| 11 | `theorem` | [unsym_bijective](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-bijective--a7138c4938fa3f463de81501.md) | 95 | `result-track:a7138c4938fa3f463de81501ff36ea5a2d4b6c35023f639f6f9d034103034e6f` |
| 12 | `theorem` | [sym_injective](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-injective--c651ed8cd5abed369af2634e.md) | 98 | `result-track:c651ed8cd5abed369af2634e92e838db659bd45737c4476ca569a34890d49d05` |
| 13 | `theorem` | [sym_surjective](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-surjective--4a599eb58a4f9c2a3b31bef5.md) | 101 | `result-track:4a599eb58a4f9c2a3b31bef56d53b171561a24d44ea67b9886531d32edf1ca03` |
| 14 | `theorem` | [unsym_injective](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-injective--e13c1209c6cdabca38e0cfe2.md) | 104 | `result-track:e13c1209c6cdabca38e0cfe2711f5c2b00363d2779fe3ad852a6c55b980f1c6a` |
| 15 | `theorem` | [unsym_surjective](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-surjective--fe9960762fd2292cc89b3be8.md) | 107 | `result-track:fe9960762fd2292cc89b3be8303736fd65df269213fb1b6393b2dcd54025c2c2` |
| 16 | `theorem` | [sym_inj](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-inj--dc5664bd092075499bb503b4.md) | 110 | `result-track:dc5664bd092075499bb503b447e7e55ef9d971827e0ed28a701adcafdf63b6bd` |
| 17 | `theorem` | [unsym_inj](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-inj--fc88c03bfa3cff27b1e7969d.md) | 113 | `result-track:fc88c03bfa3cff27b1e7969d57d9dbb4c706e5cff1cc31af32e27e4975114104` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--15fc3533fee1aa1d67f0ec61.md) | 116 | `declaration-track:15fc3533fee1aa1d67f0ec610c769a0363230edb4bd184b519286c29b2f44f96` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--23b7403d2cfb0e71e58fef38.md) | 119 | `declaration-track:23b7403d2cfb0e71e58fef38413665952bf30be5e248a3f780edf282ac13a112` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--7b95d5424d5d8865210087ed.md) | 122 | `declaration-track:7b95d5424d5d8865210087ed79c6f12e549f4ad87b933eae756f83b6910245a5` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--742453a4bb80f2a0fd1c017d.md) | 125 | `declaration-track:742453a4bb80f2a0fd1c017dc9b1f557bdb9b067b36905fceef29c3065dfa19d` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--a5ebf55a63bb23a93741255e.md) | 128 | `declaration-track:a5ebf55a63bb23a93741255e84e5cf3890f77646352a22b34f03a164c637375b` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--3c371e753fbf35e3be3f83eb.md) | 132 | `declaration-track:3c371e753fbf35e3be3f83eb6c8e48401616dea51bda5afd092a3b140d2e7c59` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--233a8f1a8744a1dc98f4331d.md) | 134 | `declaration-track:233a8f1a8744a1dc98f4331d74ab074b2e6729879ebd8d2a9258ad8cba51d240` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--8391a38148ebdf5bf287b557.md) | 136 | `declaration-track:8391a38148ebdf5bf287b557b5d9c223fc8179413fb36d65c4c0af35ba2c13a4` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--c30c37594fbc5dd8dda8ad84.md) | 138 | `declaration-track:c30c37594fbc5dd8dda8ad84455634659de4c49835f0b81ad749fb6f41fba5f5` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--d43fda3b0dc17ace8221c47d.md) | 141 | `declaration-track:d43fda3b0dc17ace8221c47d73ac3a84064f56afe84879a84a1a0e65ddc6e947` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--02d7f3eb583999b88db33308.md) | 145 | `declaration-track:02d7f3eb583999b88db3330858e9da8a34980124180e3dd9498a2d8bd11874f0` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--22d2866dd7ebd91a069a37a4.md) | 147 | `declaration-track:22d2866dd7ebd91a069a37a4239de61850f7072f2d981639d6f7083797b8a47b` |
| 30 | `theorem` | [sym_one](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-one--0154c6023e2bbdc925272b70.md) | 150 | `result-track:0154c6023e2bbdc925272b70835adef62f1c7fb93bbfa9502dbd8696c11f3fd8` |
| 31 | `theorem` | [unsym_one](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-one--a1c8fa8f9a15eda677d81f25.md) | 154 | `result-track:a1c8fa8f9a15eda677d81f2537f8382f6b057e63378adb3ff97e7228c9e37a04` |
| 32 | `theorem` | [sym_add](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-add--a78b0f37038d238ff5955d99.md) | 158 | `result-track:a78b0f37038d238ff5955d992c142f478cb74b60db3d3bf933bcbb71c836de75` |
| 33 | `theorem` | [unsym_add](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-add--6a10b744b4ad89ec8bb988c6.md) | 162 | `result-track:6a10b744b4ad89ec8bb988c647ff74d4d38e519f19c7e48e0f2aa2a677ff3361` |
| 34 | `theorem` | [sym_sub](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-sub--bca52d5beed8995244bb3de2.md) | 166 | `result-track:bca52d5beed8995244bb3de288dd32fb834b80da47a6afa6f0289dcc81512e1e` |
| 35 | `theorem` | [unsym_sub](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-sub--cbf4bd5f3fee67cce65d97e0.md) | 170 | `result-track:cbf4bd5f3fee67cce65d97e03ce81e898e3b1d3a07e9b32efe460e7fdaee0e2b` |
| 36 | `theorem` | [sym_neg](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-neg--857f824add587c61b24fcfaa.md) | 174 | `result-track:857f824add587c61b24fcfaa9a961bbf8efaeca5d2afc7958c931182be2c195d` |
| 37 | `theorem` | [unsym_neg](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-neg--1c10aefba0e0f861ef9852c8.md) | 178 | `result-track:1c10aefba0e0f861ef9852c8b6f926a44b4e6bb39dc4b4fa41407399ae1fc788` |
| 38 | `theorem` | [mul_def](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/mul-def--0b88c78c2c113cabbc61c5c3.md) | 181 | `result-track:0b88c78c2c113cabbc61c5c319a77cceba2ae10a483aefd8f12ba0f7fb5622b8` |
| 39 | `theorem` | [unsym_mul](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-mul--6bf174395b3e9dff71b0cd80.md) | 184 | `result-track:6bf174395b3e9dff71b0cd80e1928dd26b77dc9a8aa88107dea88eac4d2b3884` |
| 40 | `theorem` | [sym_mul_sym](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-mul-sym--598311e522a2cfc65e224c79.md) | 187 | `result-track:598311e522a2cfc65e224c79b3a996bda691e38f14b0efed9cfcdb6c502655d6` |
| 41 | `theorem` | [sym_inv](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-inv--a31acee83eaabd345043ac82.md) | 193 | `result-track:a31acee83eaabd345043ac82076c3a2b1091cf1e347f1ca7fa91f7ad1bbc9acb` |
| 42 | `theorem` | [unsym_inv](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-inv--26ac156ba806f04ebb386b34.md) | 198 | `result-track:26ac156ba806f04ebb386b34c15e45c4c35305c447d4e96e7ce2f53b4f1bc844` |
| 43 | `theorem` | [sym_smul](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-smul--19f47de41d634c770e8b185e.md) | 202 | `result-track:19f47de41d634c770e8b185e69dbd17de07fa7f51937d129e4b5587e7094e4e0` |
| 44 | `theorem` | [unsym_smul](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-smul--2498a6fa25ecaba7445ddad4.md) | 206 | `result-track:2498a6fa25ecaba7445ddad47b6138f9b8ea2070255d76e7c3f9b460e996a2cf` |
| 45 | `theorem` | [unsym_eq_one_iff](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-eq-one-iff--75381ca7064a95ca296e0d83.md) | 210 | `result-track:75381ca7064a95ca296e0d83092008d885529e68b5a883198fcc8f6af1b17ec9` |
| 46 | `theorem` | [sym_eq_one_iff](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-eq-one-iff--8e9ee85160a6139743637f59.md) | 214 | `result-track:8e9ee85160a6139743637f591296062621ae1a6c732d89e7d3ec827c5a809eac` |
| 47 | `theorem` | [unsym_ne_one_iff](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-ne-one-iff--feac248e262a58107fff974b.md) | 218 | `result-track:feac248e262a58107fff974b9e62d7303590786557f230edb8163c09cc0a8e46` |
| 48 | `theorem` | [sym_ne_one_iff](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-ne-one-iff--7da5f9ac60bc8667f405402d.md) | 222 | `result-track:7da5f9ac60bc8667f405402d29deefdca96b299c7e47a44ae9accea197269e93` |
| 49 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/addcommsemigroup--126f19a9afb4791c1270795b.md) | 225 | `declaration-track:126f19a9afb4791c1270795b3eeb8a737c2147159b6aabfe62f7f6f22894b866` |
| 50 | `instance` | [addMonoid](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/addmonoid--694480bc1907eea3d7c47ef7.md) | 228 | `declaration-track:694480bc1907eea3d7c47ef7eb3b43138b71a1c60cdd931df983d5bed6b63370` |
| 51 | `instance` | [addGroup](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/addgroup--d442c2039d93de74515d9b66.md) | 231 | `declaration-track:d442c2039d93de74515d9b6674ae1277e9076508d643b89152cdb932bf96644b` |
| 52 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/addcommmonoid--309ac3fc8c4d239a86081142.md) | 235 | `declaration-track:309ac3fc8c4d239a860811423b424f2ab844ce5f282e28dbf665dba213e59032` |
| 53 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/addcommgroup--5e2dd1bfc9e0a32e76eae233.md) | 238 | `declaration-track:5e2dd1bfc9e0a32e76eae233b6b293e3f2d3df7526f7596d0e0ef226423832a3` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--9ac4a28d4e9273483258ec45.md) | 241 | `declaration-track:9ac4a28d4e9273483258ec4538c2b4ac8f2e04ab5260048a0a7abc8db37fd676` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--bdb73aaa18d1246f295eb0e4.md) | 244 | `declaration-track:bdb73aaa18d1246f295eb0e4ecdd83f83c6143193d2b18a9ecd199389afa2b83` |
| 56 | `theorem` | [invOf_sym](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/invof-sym--cac7d2e5beca24449f836d59.md) | 253 | `result-track:cac7d2e5beca24449f836d5903b447dca63cb2ceb5dd53a13736916e533c044e` |
| 57 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/nonassocsemiring--a726f8a85be2ebc6534e7728.md) | 257 | `declaration-track:a726f8a85be2ebc6534e7728234c45c4b7be7255d4e46612af59ac813d83b694` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--27e8598bef542114eb75fb01.md) | 283 | `declaration-track:27e8598bef542114eb75fb01b5cdfc34cf3b8691b3e425430a66a863fc58f896` |
| 59 | `theorem` | [unsym_mul_self](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/unsym-mul-self--85afed0144dca2c46b585f57.md) | 289 | `result-track:85afed0144dca2c46b585f57313046da76df296921bf2d4bf48ac705aa8c253a` |
| 60 | `theorem` | [sym_mul_self](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/sym-mul-self--3f10305eff7377c3514ae4ad.md) | 293 | `result-track:3f10305eff7377c3514ae4ad990df30c9b7118df9dd8e31961530627f3574200` |
| 61 | `theorem` | [mul_comm](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/mul-comm--16e67c666766e337a3024054.md) | 296 | `result-track:16e67c666766e337a30240545396568dd748f5b42e058196703e9861269cad3e` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--59f91e45baddff40f2169acd.md) | 300 | `declaration-track:59f91e45baddff40f2169acd3e4a0f37cb065941675974dd83e94d74b5ed6315` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant896c9a93a2fe35ee095d3608db39fe67da27a1d59b69ac5ccd36bb9c18c26347.lean/declarations/instance--8f3998c562e73581283b52d1.md) | 303 | `declaration-track:8f3998c562e73581283b52d147e2c7c281a65eaefac2370c4e7a0220fde0d375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
