# Verification target: GRWTSK.Algebra.GroupTheory.Conj.Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cab4c7d8b1ca521fcbda4aab62aa383a89cefffe",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cab4c7d8b1ca521fcbda4aab62aa383a89cefffe`.

Source path: `GRWTSK/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Semiconj.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj--33f9da49c3661eca986e6f8d.md) | 26 | `declaration-track:33f9da49c3661eca986e6f8d636ac1db3b84c676a19e0dcdbf24cd812f015fff` |
| 2 | `theorem` | [IsConj.refl](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-refl--5f22f691b7d4716f1bdb74c7.md) | 30 | `result-track:5f22f691b7d4716f1bdb74c7cc9bd5190c576cabc420861acb6e51d5ce5c152d` |
| 3 | `theorem` | [IsConj.symm](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-symm--124c106f75dfaaf4d17c21a4.md) | 34 | `result-track:124c106f75dfaaf4d17c21a484516b9095598742534d23b0e57aef63537abd9d` |
| 4 | `theorem` | [isConj_comm](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-comm--8dc599df588c1242d56d674e.md) | 37 | `result-track:8dc599df588c1242d56d674e5b442c3a1838b47985f791b45e798674a5f82f7f` |
| 5 | `theorem` | [IsConj.trans](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-trans--c56a3a52a2ac0c81798992ea.md) | 41 | `result-track:c56a3a52a2ac0c81798992eaeb49e2f205942031a2d379630ec4518cfc1ebc7b` |
| 6 | `theorem` | [IsConj.pow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-pow--0ec337651e0fe0488f7e4532.md) | 44 | `result-track:0ec337651e0fe0488f7e4532eb85399adec9916bfd3f509d17be8ae97401f01e` |
| 7 | `theorem` | [isConj_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-iff-eq--0f8f87982c207dd7baa8331d.md) | 48 | `result-track:0f8f87982c207dd7baa8331d0f35d9d8250c7b75470b6effb5a25c138c723e70` |
| 8 | `theorem` | [MonoidHom.map_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/monoidhom-map-isconj--ffbe853176501afb4ff8440c.md) | 53 | `result-track:ffbe853176501afb4ff8440c358eb6ab1ab42202feabfe6947258117e91c1f98` |
| 9 | `theorem` | [isConj_one_right](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-one-right--08e6fd288389ffe2fdf55d6d.md) | 57 | `result-track:08e6fd288389ffe2fdf55d6da191601954360d2f50c6fe0e7a99988e68a01b5f` |
| 10 | `theorem` | [isConj_one_left](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-one-left--93d445e1e069d670b4edc131.md) | 63 | `result-track:93d445e1e069d670b4edc131bae3ca3b6c55e3580335fc6e58c58176cbbb3822` |
| 11 | `theorem` | [isConj_iff](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-iff--7890e83a6f4e9c87d82f8717.md) | 75 | `result-track:7890e83a6f4e9c87d82f8717afb8baf44a9755d1b9b17bd19803a65e77073244` |
| 12 | `theorem` | [conj_inv](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/conj-inv--425e5d75a746dbcf7e28d573.md) | 79 | `result-track:425e5d75a746dbcf7e28d573e07439ac3c0b28da1f1ef809f7b01f60b2397736` |
| 13 | `theorem` | [conj_mul](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/conj-mul--0318121ab01fd77f6332d184.md) | 83 | `result-track:0318121ab01fd77f6332d184953b78c3387b6aebb2a54e353fd4aadc7a518393` |
| 14 | `theorem` | [conj_pow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/conj-pow--667c94c9d066aaddbae12ade.md) | 87 | `result-track:667c94c9d066aaddbae12ade51fff27fbb8b9da3f3c693ee4a221329f0136946` |
| 15 | `theorem` | [conj_zpow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/conj-zpow--e730683fea7a9d38550ccc48.md) | 93 | `result-track:e730683fea7a9d38550ccc48e98a58dbde8b3bc84eb374c880dd99a7200b001f` |
| 16 | `theorem` | [conj_injective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/conj-injective--8e20b3a69b02614d9b28e701.md) | 99 | `result-track:8e20b3a69b02614d9b28e701728c62e00f97f3ba388101002708725e04d86864` |
| 17 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/setoid--662b8925194a063a1eef67e2.md) | 109 | `declaration-track:662b8925194a063a1eef67e28e1afce7bf9257ec2a0956b68dfd641443b204f7` |
| 18 | `def` | [ConjClasses](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/conjclasses--7730b9fda44ba04da72d3639.md) | 118 | `declaration-track:7730b9fda44ba04da72d3639c559d12596891b6333fe5d9c92811a0442e6715e` |
| 19 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mk--793bc475c95264eb01adaed7.md) | 128 | `declaration-track:793bc475c95264eb01adaed7907fbe5caf3261d7c603970095c3e1220033249e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/instance--d6baf41742378becd8680bb0.md) | 130 | `declaration-track:d6baf41742378becd8680bb07e161086ec247e0fa5174bdb7036bf6951fba185` |
| 21 | `theorem` | [mk_eq_mk_iff_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mk-eq-mk-iff-isconj--9f933984a18cbca009a1e3ab.md) | 132 | `result-track:9f933984a18cbca009a1e3abe9fd0faabcd6478ddc292bfebac356a762b8d58e` |
| 22 | `theorem` | [quotient_mk_eq_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/quotient-mk-eq-mk--7bdc8bb6d40af87083c1de62.md) | 135 | `result-track:7bdc8bb6d40af87083c1de62e86215046ce2340f00dd28a41ad52acf5b607ec1` |
| 23 | `theorem` | [quot_mk_eq_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/quot-mk-eq-mk--fbbcfd513123a1c617ab89db.md) | 138 | `result-track:fbbcfd513123a1c617ab89dbd4bcd61edeeca1e58e0697f511af8ecf7ab5e228` |
| 24 | `theorem` | [forall_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/forall-isconj--bb0feaf84ef2ac2fba0e9e69.md) | 141 | `result-track:bb0feaf84ef2ac2fba0e9e6915b367862477aa8d79753a4ba6f327b05966f323` |
| 25 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mk-surjective--c93a1c47a7ff4a6ac0d3fb1d.md) | 144 | `result-track:c93a1c47a7ff4a6ac0d3fb1d7a75658484ce114d53b933b8604e41d1a8b0f72a` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/instance--b61ccf9e08d7bc8f2c7ffc64.md) | 147 | `declaration-track:b61ccf9e08d7bc8f2c7ffc6405791d5a1a95378bb9766acc3f199dadac6887e8` |
| 27 | `theorem` | [one_eq_mk_one](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/one-eq-mk-one--9f3d6988c28aa2c87aa2be32.md) | 150 | `result-track:9f3d6988c28aa2c87aa2be325ce240b3f2f0002437fe72da09289ff31b7d5567` |
| 28 | `theorem` | [exists_rep](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/exists-rep--a33a6b418f6b882cc8c799a1.md) | 153 | `result-track:a33a6b418f6b882cc8c799a15e53a6f2f1ad104a8f350a7af1269f576a32c8f1` |
| 29 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/map--083e7d0fde2fa693d10adb88.md) | 157 | `declaration-track:083e7d0fde2fa693d10adb888513b4978d4916005399e120d0b767f289ce8608` |
| 30 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/map-surjective--ef20cd9320c8f78525f0b1db.md) | 160 | `result-track:ef20cd9320c8f78525f0b1db8d5e662ff9020e5d942787efba0fcfcab5e9ab89` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/instance--c3e0bdbb6c7e9b021be3a69f.md) | 198 | `declaration-track:c3e0bdbb6c7e9b021be3a69f5a8cc0ac303d1e0eee5b59133405698f7a51c85a` |
| 32 | `theorem` | [mk_injective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mk-injective--7b47444ca3062a8a5cf1040e.md) | 207 | `result-track:7b47444ca3062a8a5cf1040e5f43deb02253d342e01065c96f48fd96ea42b098` |
| 33 | `theorem` | [mk_bijective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mk-bijective--135ed8c1e324387c5a0c7d1a.md) | 210 | `result-track:135ed8c1e324387c5a0c7d1ae1286753f05a9525e1ae8584b62a3fe91029603e` |
| 34 | `def` | [mkEquiv](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mkequiv--228c3e25fb592bd349c04184.md) | 214 | `declaration-track:228c3e25fb592bd349c04184dadf232d72ea3259cf69b1d78b2eeb40a47a5727` |
| 35 | `def` | [conjugatesOf](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/conjugatesof--bc893912fe0a3c5d75e60ec1.md) | 229 | `declaration-track:bc893912fe0a3c5d75e60ec15c00426fc551600bcc45403a570db9df11a4f4d5` |
| 36 | `theorem` | [mem_conjugatesOf_self](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mem-conjugatesof-self--9a1f80a46a1517a686b6a768.md) | 232 | `result-track:9a1f80a46a1517a686b6a76876d4d63ccf7ec61cdc41dda0cb835f084e8081b4` |
| 37 | `theorem` | [IsConj.conjugatesOf_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-conjugatesof-eq--a31674dfe0d2c0d9eaf2d8a1.md) | 235 | `result-track:a31674dfe0d2c0d9eaf2d8a1195650d300728c8c63c29e0f9b5380865ad91e06` |
| 38 | `theorem` | [isConj_iff_conjugatesOf_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/isconj-iff-conjugatesof-eq--9073358565a16eb2f78ede84.md) | 238 | `result-track:9073358565a16eb2f78ede841405178458ac03be62fc57fbdade55e40d8eac5e` |
| 39 | `def` | [carrier](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/carrier--a281e62c919b77070f63c144.md) | 252 | `declaration-track:a281e62c919b77070f63c14457b9c7d5dbe5d7528d4620648b54d9c710cbff61` |
| 40 | `theorem` | [mem_carrier_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mem-carrier-mk--cf3394f69d62036183ddd293.md) | 255 | `result-track:cf3394f69d62036183ddd293eb5fd657e24af5b63aa781d1fabe2960b8dfdd2b` |
| 41 | `theorem` | [mem_carrier_iff_mk_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/mem-carrier-iff-mk-eq--0f25fef453217fa98c330681.md) | 258 | `result-track:0f25fef453217fa98c3306815281a69a16b96919c9918daa704af041d3fcafa0` |
| 42 | `theorem` | [carrier_eq_preimage_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean/declarations/carrier-eq-preimage-mk--a8f9fbce7197856ae2215421.md) | 266 | `result-track:a8f9fbce7197856ae2215421035f4364ab9170d4c35075fbee5323a6a36a3a84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
