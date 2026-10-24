# Verification target: GRWTSK.Algebra.LinearAlgebra.PID.Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5afef672f3b4238f35d3d69c040cb35f1afe227",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5afef672f3b4238f35d3d69c040cb35f1afe227`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_bot_of_generator_maximal_map_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/eq-bot-of-generator-maximal-map-eq-zero--11d2d9748be2a549b48d423a.md) | 65 | `result-track:11d2d9748be2a549b48d423a582be177ef01dc312bd6944e9c8c8decb666bc19` |
| 2 | `theorem` | [eq_bot_of_generator_maximal_submoduleImage_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/eq-bot-of-generator-maximal-submoduleimage-eq-zero--6d308e35429815e262df3862.md) | 78 | `result-track:6d308e35429815e262df386258d6a81e4610f5d7efb0158307b061ab0a830f8a` |
| 3 | `theorem` | [dvd_generator_iff](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/dvd-generator-iff--eba798cf01cab82f957644fe.md) | 100 | `result-track:eba798cf01cab82f957644feb5c34beae0dc679ed916ac2052a2921fccfd396e` |
| 4 | `theorem` | [generator_maximal_submoduleImage_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/generator-maximal-submoduleimage-dvd--34be6ed1739c088c39bc572b.md) | 120 | `result-track:34be6ed1739c088c39bc572b3897867fcc10e084c152638e1ed7c2de8bd0a435` |
| 5 | `theorem` | [Submodule.basis_of_pid_aux](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-basis-of-pid-aux--60b5c69193029f01ad004038.md) | 164 | `result-track:60b5c69193029f01ad004038508a18a1d70c5102e99f70f7af3d226d0f8b79a0` |
| 6 | `theorem` | [Submodule.nonempty_basis_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-nonempty-basis-of-pid--8448a053dfc4b9446a2b2670.md) | 298 | `result-track:8448a053dfc4b9446a2b267056e8a75ae6858a4c70eb78c1ffb050e0f308e166` |
| 7 | `def` | [Submodule.basisOfPid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-basisofpid--b71ce7dfc213da2d8bfcfb5c.md) | 321 | `declaration-track:b71ce7dfc213da2d8bfcfb5cdd77e6e05830d9b3c1eaabb32df58a3d3d37aff7` |
| 8 | `theorem` | [Submodule.basisOfPid_bot](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-basisofpid-bot--4ba27e07a4f50c1ac2496b9c.md) | 326 | `result-track:4ba27e07a4f50c1ac2496b9c297259c8bec27a34608e30fce470c4a6855228ec` |
| 9 | `def` | [Submodule.basisOfPidOfLE](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-basisofpidofle--0cde0963855454f8e09ae2c8.md) | 339 | `declaration-track:0cde0963855454f8e09ae2c8208190e772cdbcfaa55f446377ac41a734ebdd8c` |
| 10 | `def` | [Submodule.basisOfPidOfLESpan](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-basisofpidoflespan--6a4efd8f13b5eb898974df1c.md) | 347 | `declaration-track:6a4efd8f13b5eb898974df1c98e54e05e1c74dbbcfe57ec4aad67411b4026b4a` |
| 11 | `def` | [Module.basisOfFiniteTypeTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/module-basisoffinitetypetorsionfree--b3f1d830da44953468e7d305.md) | 354 | `declaration-track:b3f1d830da44953468e7d3056ac28a0a8f050d5cc0b8e102829d61d06869958c` |
| 12 | `theorem` | [Module.free_of_finite_type_torsion_free](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/module-free-of-finite-type-torsion-free--d70a83cb632ca37ce034a114.md) | 404 | `result-track:d70a83cb632ca37ce034a1140ef91c96e2b7f1dce48a76b285ac92bf203221c7` |
| 13 | `def` | [Module.basisOfFiniteTypeTorsionFree'](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/module-basisoffinitetypetorsionfree--d3c097980f5cd7c5a468b7ce.md) | 412 | `declaration-track:d3c097980f5cd7c5a468b7ce7f476f1571cce3f2f7d867b1305c63c16894c759` |
| 14 | `theorem` | [Module.free_of_finite_type_torsion_free'](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/module-free-of-finite-type-torsion-free--a10191583f232e849f212ee5.md) | 419 | `result-track:a10191583f232e849f212ee58339396f693b3fb70e73ba098ade1cefc650fd54` |
| 15 | `structure` | [Basis.SmithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/basis-smithnormalform--2ac5b57844f234ab04bfcd69.md) | 431 | `declaration-track:2ac5b57844f234ab04bfcd69a004c973226a5198a069b2241ab3844bd9c25cbd` |
| 16 | `lemma` | [repr_eq_zero_of_nmem_range](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/repr-eq-zero-of-nmem-range--d129e8b095d152450613035d.md) | 448 | `result-track:d129e8b095d152450613035df8881216998b7be413ad2c34282be781385a6861` |
| 17 | `lemma` | [le_ker_coord_of_nmem_range](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/le-ker-coord-of-nmem-range--5396f79def37b0d57670416a.md) | 455 | `result-track:5396f79def37b0d57670416a1f7168ce848af4c1c542bc412da4ff21d563ac91` |
| 18 | `lemma` | [repr_apply_embedding_eq_repr_smul](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/repr-apply-embedding-eq-repr-smul--1d7832a7c7e9569853e415b0.md) | 459 | `result-track:1d7832a7c7e9569853e415b0c000b33e93b10b4a7e86cd577755da819a9eb37a` |
| 19 | `lemma` | [repr_comp_embedding_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/repr-comp-embedding-eq-smul--4058206793bd23eda944a99c.md) | 473 | `result-track:4058206793bd23eda944a99c6d469e576bd60b32613b5af8f778400e9f274be5` |
| 20 | `lemma` | [coord_apply_embedding_eq_smul_coord](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/coord-apply-embedding-eq-smul-coord--2a45ac6eefe224e7ece213d0.md) | 478 | `result-track:2a45ac6eefe224e7ece213d05c4ca6cf3f7ddb761e9c6582ff640022a9006a17` |
| 21 | `lemma` | [toMatrix_restrict_eq_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/tomatrix-restrict-eq-tomatrix--e4037b28717bb511244710c7.md) | 487 | `result-track:e4037b28717bb511244710c7bdd49bfea695a7bc92867d2e8f888a937fa32e3c` |
| 22 | `theorem` | [Submodule.exists_smith_normal_form_of_le](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-exists-smith-normal-form-of-le--c796d74b7c3f41fb0befaccd.md) | 508 | `result-track:c796d74b7c3f41fb0befaccd58309636c5e7e9b05b9dceb5240fd4a9a3e946d9` |
| 23 | `def` | [Submodule.smithNormalFormOfLE](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-smithnormalformofle--9a4fbc44954046ed5263c399.md) | 542 | `declaration-track:9a4fbc44954046ed5263c3997ebfbb2c848d496b724f1be3e553c345c2b90147` |
| 24 | `def` | [Submodule.smithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/submodule-smithnormalform--c1e6e22691f4b39ba68a82aa.md) | 562 | `declaration-track:c1e6e22691f4b39ba68a82aa9d5782951f54846664f2b6b1969dbc7373900dad` |
| 25 | `def` | [Ideal.smithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/ideal-smithnormalform--414f876f0356c6bd28bd599d.md) | 587 | `declaration-track:414f876f0356c6bd28bd599df02d5c89a9d781b04ba5e731183932a55b8615cc` |
| 26 | `theorem` | [Ideal.exists_smith_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/ideal-exists-smith-normal-form--0294d0b58eee05d3d4841848.md) | 610 | `result-track:0294d0b58eee05d3d484184867fcd6a1a8631cc105b97076e20fc2d9cf14fe14` |
| 27 | `def` | [Ideal.ringBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/ideal-ringbasis--8432e2c55fb0f10e0ed0cbad.md) | 633 | `declaration-track:8432e2c55fb0f10e0ed0cbad81461f56369d38d8aaa02c844ecfe568b700403d` |
| 28 | `def` | [Ideal.selfBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/ideal-selfbasis--42e87214fc0d68561a775d79.md) | 645 | `declaration-track:42e87214fc0d68561a775d79cde4f41f593d6c597a80f357753191bc8812b226` |
| 29 | `def` | [Ideal.smithCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/ideal-smithcoeffs--2898b9b04452e02a2d04c421.md) | 657 | `declaration-track:2898b9b04452e02a2d04c421358b2a552bd9418552db17b0baffd2c5d8f0b1e9` |
| 30 | `theorem` | [Ideal.selfBasis_def](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/ideal-selfbasis-def--b79d7b5dfcbdd5e33de485a6.md) | 667 | `result-track:b79d7b5dfcbdd5e33de485a64782206f08cf157de7bde45be453e11f770bf56b` |
| 31 | `theorem` | [Ideal.smithCoeffs_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/ideal-smithcoeffs-ne-zero--a66824992fc8f394c887863d.md) | 673 | `result-track:a66824992fc8f394c887863d1fc023947d3ce574e2066ba99b04817369e16003` |
| 32 | `theorem` | [LinearIndependent.restrict_scalars_algebras](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/declarations/linearindependent-restrict-scalars-algebras--96d44272aa437b3f5e01723f.md) | 692 | `result-track:96d44272aa437b3f5e01723f5569fe5453ae1d45c1b69190c307ca8746bee921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
