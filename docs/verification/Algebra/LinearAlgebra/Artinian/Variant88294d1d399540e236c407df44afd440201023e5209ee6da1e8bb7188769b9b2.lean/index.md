# Verification target: GRWTSK.Algebra.LinearAlgebra.Artinian.Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61c0cd58309d73f1534b886ca268160b1522c938",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61c0cd58309d73f1534b886ca268160b1522c938`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Nakayama` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RSuffices` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsArtinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian--0f0a3951d7df5851a7348147.md) | 56 | `declaration-track:0f0a3951d7df5851a734814726ca189cfa55fd1af94f5d6a571821065a455e4a` |
| 2 | `theorem` | [IsArtinian.wellFounded_submodule_lt](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-wellfounded-submodule-lt--a3377179750c74fa6390f55f.md) | 72 | `result-track:a3377179750c74fa6390f55faad96083be9923595ccbef85e48060a538cca6fd` |
| 3 | `theorem` | [isArtinian_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-injective--341e5b61ead3277583e4bf34.md) | 77 | `result-track:341e5b61ead3277583e4bf34e01bd91c057fae2bdbde64c48bbf56a7b077211a` |
| 4 | `instance` | [isArtinian_submodule'](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-submodule--47f76c325d3a4578384decb6.md) | 84 | `declaration-track:47f76c325d3a4578384decb6b73237fab2ff89446616a0c96aba6ed5949ad88c` |
| 5 | `theorem` | [isArtinian_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-le--3658c7f508b3d598b39ee6e3.md) | 88 | `result-track:3658c7f508b3d598b39ee6e3e690b3a7d3b4424e7c1f118b14abb1d0424111e4` |
| 6 | `theorem` | [isArtinian_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-surjective--f1dc642266b2e22ece9ac101.md) | 94 | `result-track:f1dc642266b2e22ece9ac10140067c714f5ed5c33b69ea0b85827593c9b4be9d` |
| 7 | `theorem` | [isArtinian_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-linearequiv--b10aee2f3e06e62e62b95ccf.md) | 104 | `result-track:b10aee2f3e06e62e62b95ccf7282df652c7c1c6fea2ffb60c20bda5de0387cc7` |
| 8 | `theorem` | [isArtinian_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-range-eq-ker--8b55c4a5fabf7105b1c1f383.md) | 108 | `result-track:8b55c4a5fabf7105b1c1f383c02f8c245bae29156cab2f9e89bbeaa3f62d841b` |
| 9 | `instance` | [isArtinian_prod](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-prod--96e5d2a08acf422520c85381.md) | 118 | `declaration-track:96e5d2a08acf422520c8538130762f2d6258264d031f1046a3f6998096b594bd` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/instance--48c3db64a5efab00e447984c.md) | 123 | `declaration-track:48c3db64a5efab00e447984cb5a20710e995e1f1d3457ec9a2d1b7fd37efe01a` |
| 11 | `instance` | [isArtinian_pi](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-pi--8c71356b33c9765dc661a7c3.md) | 130 | `declaration-track:8c71356b33c9765dc661a7c313eefe5b0d2f9416bf60559fa8d1013afcf54a06` |
| 12 | `instance` | [isArtinian_pi'](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-pi--fcd15bc2e2799cb8c144e3ff.md) | 147 | `declaration-track:fcd15bc2e2799cb8c144e3ffddf57b9a9b7dbcec6b81c4b31b18369140208511` |
| 13 | `instance` | [isArtinian_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-finsupp--e01ccad8d0b3d655d55f4d33.md) | 153 | `declaration-track:e01ccad8d0b3d655d55f4d3320a73c097787fc9dc0b2d1a09fe93b32e038299b` |
| 14 | `theorem` | [isArtinian_iff_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-iff-wellfounded--bc78b9fe29523e7a266f5955.md) | 165 | `result-track:bc78b9fe29523e7a266f59555de24419832cc087b805182543a299437f9db83b` |
| 15 | `theorem` | [IsArtinian.finite_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-finite-of-linearindependent--9cbd3ead5d720d7f1644be26.md) | 170 | `result-track:9cbd3ead5d720d7f1644be26368649771ad0607164e9ae2071c4f3774cefe9e1` |
| 16 | `theorem` | [set_has_minimal_iff_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/set-has-minimal-iff-artinian--b939dd403d343cad95c93bd1.md) | 193 | `result-track:b939dd403d343cad95c93bd179039f08e8add49710c8790878e08aea68d2d44b` |
| 17 | `theorem` | [IsArtinian.set_has_minimal](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-set-has-minimal--2b824c5cefae33986648e489.md) | 198 | `result-track:2b824c5cefae33986648e489b3eb83dd90bc6a139d74d0cc1df4f98329f7f745` |
| 18 | `theorem` | [monotone_stabilizes_iff_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/monotone-stabilizes-iff-artinian--2631cd60e1e83fb8e45d4b33.md) | 204 | `result-track:2631cd60e1e83fb8e45d4b338ce4cd5db25ed825c8f45e5c7a0b64636e6457a7` |
| 19 | `theorem` | [monotone_stabilizes](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/monotone-stabilizes--c053383192926ce39893cac9.md) | 214 | `result-track:c053383192926ce39893cac931e4269e2136823791aaccbff79b2bd0005aecda` |
| 20 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/induction--5b06065271c1043b679f8502.md) | 219 | `result-track:5b06065271c1043b679f85025831ece00a31ae8b3e336b4ffc2aef5cbb68b3ed` |
| 21 | `theorem` | [exists_endomorphism_iterate_ker_sup_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/exists-endomorphism-iterate-ker-sup-range-eq-top--904e61c0ef1f7496bba0635f.md) | 226 | `result-track:904e61c0ef1f7496bba0635f9359185e2c9cef4fae5a28057897801aeeec2006` |
| 22 | `theorem` | [surjective_of_injective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/surjective-of-injective-endomorphism--8d21c14c1d9f2ed6ba285690.md) | 248 | `result-track:8d21c14c1d9f2ed6ba285690fc2c1295d0710fceebb5cfbb6070691da2566c1a` |
| 23 | `theorem` | [bijective_of_injective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/bijective-of-injective-endomorphism--354de1d8f999cf52562e8405.md) | 256 | `result-track:354de1d8f999cf52562e8405051f76f90691559f9f8c9fae2d29e47b3754418f` |
| 24 | `theorem` | [disjoint_partial_infs_eventually_top](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/disjoint-partial-infs-eventually-top--7b7cff6daab35f74a2bfaf04.md) | 263 | `result-track:7b7cff6daab35f74a2bfaf0440f674f5ed18f204a706b56180c5b944cd1945a8` |
| 25 | `theorem` | [range_smul_pow_stabilizes](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/range-smul-pow-stabilizes--6471d87f82a26aaf774f6202.md) | 288 | `result-track:6471d87f82a26aaf774f6202468c3aa4427bf86db8c95f31af749640051989b2` |
| 26 | `theorem` | [exists_pow_succ_smul_dvd](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/exists-pow-succ-smul-dvd--bf8bc6fe457c0c610b028e7a.md) | 301 | `result-track:bf8bc6fe457c0c610b028e7a6bad461c5fec66720ec4a238e22eabf6786fffdc` |
| 27 | `def` | [IsArtinianRing](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinianring--e95e26fd39f18716fc5fe8a4.md) | 317 | `declaration-track:e95e26fd39f18716fc5fe8a45d02e74c42a78abacffb39c4c36c004a93d20880` |
| 28 | `theorem` | [isArtinianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinianring-iff--b548d4e8ba4e819490ce2853.md) | 321 | `result-track:b548d4e8ba4e819490ce28533df5b918b51fd41b51be6427d57af38cc689a60a` |
| 29 | `theorem` | [Ring.isArtinian_of_zero_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/ring-isartinian-of-zero-eq-one--6b7fc498306ca795ba851005.md) | 324 | `result-track:6b7fc498306ca795ba85100562b7d4963dac11da77fce0dd551c82134cc394af` |
| 30 | `theorem` | [isArtinian_of_submodule_of_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-submodule-of-artinian--470e0230469b4b7b822da81d.md) | 329 | `result-track:470e0230469b4b7b822da81d16082c35a4eb6940bc1fb116e9890c1a81a21915` |
| 31 | `instance` | [isArtinian_of_quotient_of_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-quotient-of-artinian--8031657975426c08790aa55f.md) | 333 | `declaration-track:8031657975426c08790aa55fcbef33c475fcd59f4dafdf1fd3c3d025583112f2` |
| 32 | `theorem` | [isArtinian_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-tower--ba0f7e063701f6888bfbf08b.md) | 339 | `result-track:ba0f7e063701f6888bfbf08bf18f81347306b76a18b1eb34157180811ccf7fd6` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/instance--8e3bd0fd15aa87032a0221ed.md) | 345 | `declaration-track:8e3bd0fd15aa87032a0221ede8bb421fdbde9cfa26408c2d833ef8c6295476c3` |
| 34 | `theorem` | [isArtinian_of_fg_of_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-fg-of-artinian--9b94140993344af80a7f2135.md) | 348 | `result-track:9b94140993344af80a7f21356b5b2c78bca4a6fbc86a38fdc97766120e3f20a7` |
| 35 | `theorem` | [isArtinian_of_fg_of_artinian'](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-of-fg-of-artinian--71e0d1cc7ed992bedd8ab795.md) | 366 | `result-track:71e0d1cc7ed992bedd8ab7955ce68ec4b31754149d6e16bc6af0cd9b85c15aeb` |
| 36 | `theorem` | [isArtinian_span_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinian-span-of-finite--44469613c0ce845b693f1c16.md) | 374 | `result-track:44469613c0ce845b693f1c16526223d146b9cd08c17854d7a0fe903b07d3567d` |
| 37 | `theorem` | [Function.Surjective.isArtinianRing](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/function-surjective-isartinianring--8b3385d00db59a2607c5a963.md) | 379 | `result-track:8b3385d00db59a2607c5a9631d87f80c2a140fc8057cc5b007d83a6f13ab5c82` |
| 38 | `instance` | [isArtinianRing_range](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isartinianring-range--df6e99deefcacad4a1daa90b.md) | 385 | `declaration-track:df6e99deefcacad4a1daa90bba88f58ad46afacb0089058ccea373bebd0bfc6c` |
| 39 | `theorem` | [isNilpotent_jacobson_bot](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/isnilpotent-jacobson-bot--ff193b6b481a0b2553ec17a1.md) | 396 | `result-track:ff193b6b481a0b2553ec17a1830d6991e4da75d7939d065e1305c30f4727136a` |
| 40 | `theorem` | [localization_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/localization-surjective--997f6f608db0c8f0bba9673f.md) | 437 | `result-track:997f6f608db0c8f0bba9673f11fbf9f2125b79d6f9b45bca380984a3e1bb598a` |
| 41 | `theorem` | [localization_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/localization-artinian--1134d98b97525b142e321ed6.md) | 452 | `result-track:1134d98b97525b142e321ed600a0ae98b27de2cc9a3d45c6cf3608f33a25f712` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/instance--5daa4dec97a69dadcae56d7a.md) | 458 | `declaration-track:5daa4dec97a69dadcae56d7a9216e71b3535740a2837d79428e6bab40c881009` |
| 43 | `instance` | [isMaximal_of_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/declarations/ismaximal-of-isprime--8cbe9c76e47dd034a9110c35.md) | 463 | `declaration-track:8cbe9c76e47dd034a9110c35a868f20ac426f969c9b5e4070efc33c7d7827c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
