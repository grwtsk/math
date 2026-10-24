# Verification target: GRWTSK.Algebra.LinearAlgebra.PID.Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec53b8f86360e7e285ca6ba9761a385f806676e7",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec53b8f86360e7e285ca6ba9761a385f806676e7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_bot_of_generator_maximal_map_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/eq-bot-of-generator-maximal-map-eq-zero--9633f7a7bda9691dd160a0ee.md) | 73 | `result-track:9633f7a7bda9691dd160a0ee36d7c0a45eda0055cef51a17845c60d39c0f31ba` |
| 2 | `theorem` | [eq_bot_of_generator_maximal_submoduleImage_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/eq-bot-of-generator-maximal-submoduleimage-eq-zero--233864e2bbe9675804da9b00.md) | 86 | `result-track:233864e2bbe9675804da9b0094a0a63291422be56a4e772917300775567eca93` |
| 3 | `theorem` | [dvd_generator_iff](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/dvd-generator-iff--4e421d751d61a68e0a2cee1b.md) | 108 | `result-track:4e421d751d61a68e0a2cee1b8166a4c9131f49dcb0d9d89c26148427fa5ad03e` |
| 4 | `theorem` | [generator_maximal_submoduleImage_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/generator-maximal-submoduleimage-dvd--b380dd1584dda268299e687b.md) | 128 | `result-track:b380dd1584dda268299e687b2e2cee17cb6e0745078507bcaef16d1048f83e62` |
| 5 | `theorem` | [Submodule.basis_of_pid_aux](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-basis-of-pid-aux--43f326f3d9fd9fad66b99c70.md) | 172 | `result-track:43f326f3d9fd9fad66b99c70c517938ca4c7f49d6f7c4bf55fe8c24c2518199c` |
| 6 | `theorem` | [Submodule.nonempty_basis_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-nonempty-basis-of-pid--31e8b868a1db4d7e5695c430.md) | 306 | `result-track:31e8b868a1db4d7e5695c4303d568d8a5e8997e5044353893a2f9e1b8b42f3c1` |
| 7 | `def` | [Submodule.basisOfPid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-basisofpid--cd4ba989e7d4f95fe8a7521f.md) | 329 | `declaration-track:cd4ba989e7d4f95fe8a7521fa3e620643fb5a4bd6ca12eb78cc0dd2346754e18` |
| 8 | `theorem` | [Submodule.basisOfPid_bot](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-basisofpid-bot--f4d460564c7535843d44b8b4.md) | 334 | `result-track:f4d460564c7535843d44b8b4b7bfd1c8bf51c34cb6db23b893145e0745a2120f` |
| 9 | `def` | [Submodule.basisOfPidOfLE](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-basisofpidofle--db9d3768c4ff92b7fd21d63d.md) | 347 | `declaration-track:db9d3768c4ff92b7fd21d63dbf9105205a2bde6d697fbd67286d057b854ce15d` |
| 10 | `def` | [Submodule.basisOfPidOfLESpan](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-basisofpidoflespan--977d46cbacd89090704952f1.md) | 355 | `declaration-track:977d46cbacd89090704952f138ff1bd2561c51574615361dc441ed845ce2e5a0` |
| 11 | `def` | [Module.basisOfFiniteTypeTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/module-basisoffinitetypetorsionfree--156276d3ae48fae22dc08bbf.md) | 362 | `declaration-track:156276d3ae48fae22dc08bbfa1f7cdae83e0decef7e77471e298ff273f682c77` |
| 12 | `theorem` | [Module.free_of_finite_type_torsion_free](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/module-free-of-finite-type-torsion-free--d563cd3f1ec056e25c923548.md) | 412 | `result-track:d563cd3f1ec056e25c9235482d7c149add5ed39a5ddcf93a87d8b32ea7c348dd` |
| 13 | `def` | [Module.basisOfFiniteTypeTorsionFree'](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/module-basisoffinitetypetorsionfree--7ec4b517652fa93f914adcec.md) | 420 | `declaration-track:7ec4b517652fa93f914adcec898a850d383a087b66712755b9fda7c4052ff58f` |
| 14 | `theorem` | [Module.free_of_finite_type_torsion_free'](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/module-free-of-finite-type-torsion-free--f91f270246774151f3e5e556.md) | 427 | `result-track:f91f270246774151f3e5e556fdee39b5d413430f88e7268f0894837466a2cabf` |
| 15 | `structure` | [Basis.SmithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/basis-smithnormalform--32c7dacfb6390ea1a039f981.md) | 439 | `declaration-track:32c7dacfb6390ea1a039f981f13bed232a14cbfcaaab173eff30cc3846ea3b55` |
| 16 | `lemma` | [repr_eq_zero_of_nmem_range](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/repr-eq-zero-of-nmem-range--212c894b730e9f5ac29e940c.md) | 456 | `result-track:212c894b730e9f5ac29e940c99fc798892e32ed8d3a540e384e3f6a9aae364ae` |
| 17 | `lemma` | [le_ker_coord_of_nmem_range](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/le-ker-coord-of-nmem-range--c5c4bd9d88cff4f1e0beff65.md) | 463 | `result-track:c5c4bd9d88cff4f1e0beff65833dfff102f0b472f3ac282047693c6e2ff8b4c8` |
| 18 | `lemma` | [repr_apply_embedding_eq_repr_smul](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/repr-apply-embedding-eq-repr-smul--99b5d0a1fefb27dc355a47e2.md) | 467 | `result-track:99b5d0a1fefb27dc355a47e20e41fed927ebbdd23c3e49bd50fe25be53cd4bbf` |
| 19 | `lemma` | [repr_comp_embedding_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/repr-comp-embedding-eq-smul--7c4850f09219452b4aa7e7a0.md) | 481 | `result-track:7c4850f09219452b4aa7e7a0de2c644f38de706fcc250ed8c6646c909e8d2c39` |
| 20 | `lemma` | [coord_apply_embedding_eq_smul_coord](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/coord-apply-embedding-eq-smul-coord--852bc8e4216a064f49820b26.md) | 486 | `result-track:852bc8e4216a064f49820b265441e0d03adfbdf09c5200f098ec333b7c2c7b0b` |
| 21 | `lemma` | [toMatrix_restrict_eq_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/tomatrix-restrict-eq-tomatrix--4f65b18c4c80db7c9fec16c1.md) | 495 | `result-track:4f65b18c4c80db7c9fec16c1087f1c2261c79d1c70b046dca9b27a4095e8f6df` |
| 22 | `theorem` | [Submodule.exists_smith_normal_form_of_le](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-exists-smith-normal-form-of-le--391cd9bfcb1f8f34ea268b78.md) | 516 | `result-track:391cd9bfcb1f8f34ea268b786958df89a65317526931df216c627d94c148ce7f` |
| 23 | `def` | [Submodule.smithNormalFormOfLE](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-smithnormalformofle--0d1b66d38a4f66ba09125510.md) | 550 | `declaration-track:0d1b66d38a4f66ba091255100abcf8d85b07804cb339ad9ee480c8917e039e58` |
| 24 | `def` | [Submodule.smithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/submodule-smithnormalform--ce38b6074e6e813db6b8f1e3.md) | 570 | `declaration-track:ce38b6074e6e813db6b8f1e30778b4571935a52cd9a25d9ca5d1ce557dfe8ad4` |
| 25 | `def` | [Ideal.smithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/ideal-smithnormalform--89cf5e666f21fda88e3a0809.md) | 595 | `declaration-track:89cf5e666f21fda88e3a080985b38b61497258d3ac48887b9497b151be92c391` |
| 26 | `theorem` | [Ideal.exists_smith_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/ideal-exists-smith-normal-form--3d95ee6850053b8fc79a248b.md) | 618 | `result-track:3d95ee6850053b8fc79a248bb3c52fb2bf05d11175bb20fab9bba4b7cae3f42f` |
| 27 | `def` | [Ideal.ringBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/ideal-ringbasis--2c60eb438a4eede1f0b9cde5.md) | 641 | `declaration-track:2c60eb438a4eede1f0b9cde5b9d9213881052587e46281a459d4c6b04784f363` |
| 28 | `def` | [Ideal.selfBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/ideal-selfbasis--dca9f84002ac647e4b5b4f93.md) | 653 | `declaration-track:dca9f84002ac647e4b5b4f93954aa91ff2dd978181c16ab98b9595681374605e` |
| 29 | `def` | [Ideal.smithCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/ideal-smithcoeffs--3b80f220f1e08bbf1ebc1614.md) | 665 | `declaration-track:3b80f220f1e08bbf1ebc16144d40c044d98bd0af5cdcbf26234be25b5c34d262` |
| 30 | `theorem` | [Ideal.selfBasis_def](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/ideal-selfbasis-def--4e1a390d65ac1514442d442f.md) | 675 | `result-track:4e1a390d65ac1514442d442f45cced73cb4f52da5dd078e8353f571ee010ec3b` |
| 31 | `theorem` | [Ideal.smithCoeffs_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/ideal-smithcoeffs-ne-zero--9d399d7cfede24257b0e6a96.md) | 681 | `result-track:9d399d7cfede24257b0e6a96cf3ec77caeba79195bcecd235614da92f41300ff` |
| 32 | `theorem` | [LinearIndependent.restrict_scalars_algebras](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant3392e0f83b4c971d12903f873fc9999a7de69a14f7b15af11bc0eea21b6a70d0.lean/declarations/linearindependent-restrict-scalars-algebras--770ca1225833a438632c1bc2.md) | 700 | `result-track:770ca1225833a438632c1bc27edc0a43f0b260aa2e6597c27bc22bdbdaf81760` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
