# Verification target: GRWTSK.Algebra.LinearAlgebra.Integer.Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6d33d90c8010024a3e36d108b1bd4c80e140752",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6d33d90c8010024a3e36d108b1bd4c80e140752`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_mul_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/map-mul-natcast--01b827b33e1385eecfaaac8d.md) | 39 | `result-track:01b827b33e1385eecfaaac8d05aa891370dcbe6d13a6d813ae01519f407469db` |
| 2 | `lemma` | [map_mul_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/map-mul-intcast--7b6c2c0ab93f9cbd50289aff.md) | 43 | `result-track:7b6c2c0ab93f9cbd50289aff100c6a65ce4ed1947aed5bad9c65e2c9b3aec21a` |
| 3 | `lemma` | [map_mul_ratCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/map-mul-ratcast--7ace8fcec021e15071148f63.md) | 47 | `result-track:7ace8fcec021e15071148f637de79ff64160a297e7506ef5f60ba248fb650b22` |
| 4 | `def` | [den](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den--480ce530831cf31f5f833757.md) | 57 | `declaration-track:480ce530831cf31f5f833757b7c8e59bc92ea2ae342d85d8654d3ed54f2bf5bc` |
| 5 | `def` | [num](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num--3c339cec92b806c8f7b98796.md) | 61 | `declaration-track:3c339cec92b806c8f7b98796c13db0d488a9b56e2342f9bf1491006830e5a405` |
| 6 | `lemma` | [den_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-ne-zero--8477635aa090e2d1a9843dc2.md) | 63 | `result-track:8477635aa090e2d1a9843dc29393998e696cbcd3533de20d82e38f44d0b42bea` |
| 7 | `lemma` | [num_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-eq-zero-iff--0d72797625ab702f892c5ec3.md) | 66 | `result-track:0d72797625ab702f892c5ec3eb825af70840450af38a4e16992f360d7ff34527` |
| 8 | `lemma` | [den_dvd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-dvd-iff--1221caadb158663005da8391.md) | 69 | `result-track:1221caadb158663005da839168335b0f34b3c44bdf11fc05603a1ed2d600bbb3` |
| 9 | `lemma` | [num_div_den](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-div-den--23886ab6f001bbfa9ebe2c65.md) | 73 | `result-track:23886ab6f001bbfa9ebe2c657018277b908cca4122a93df32e2f842ce9f31f4d` |
| 10 | `lemma` | [inv_denom_smul_num](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/inv-denom-smul-num--7b9fc52c500169dac134c8fe.md) | 80 | `result-track:7b9fc52c500169dac134c8fe32d945d16e42c1245c2f32fba1b9168b3051aa7b` |
| 11 | `lemma` | [den_neg](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-neg--ce086ebb53eb62eb3c50411f.md) | 86 | `result-track:ce086ebb53eb62eb3c50411f63937aed67b70c89fb8896d205f3d10b508bce83` |
| 12 | `lemma` | [num_neg](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-neg--6c21f07de2098bfe59058f5c.md) | 90 | `result-track:6c21f07de2098bfe59058f5cae51f1b9b2a04e2a9442c5af4d5aae78dee5ec4f` |
| 13 | `lemma` | [den_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-transpose--372a82648f16c93e6a50fa4c.md) | 94 | `result-track:372a82648f16c93e6a50fa4c52bee0b5834b082149075e905e01f2b839135bef` |
| 14 | `lemma` | [num_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-transpose--9d3bd27b3c2efe38035ba55e.md) | 97 | `result-track:9d3bd27b3c2efe38035ba55e46ffe82561be3d0809aabe621c8c26f039086579` |
| 15 | `lemma` | [den_map_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-map-intcast--b76395eec6a3e4c765e4b795.md) | 105 | `result-track:b76395eec6a3e4c765e4b795ca802fc45b974ec9d3234f02f484f965f9c076e7` |
| 16 | `lemma` | [num_map_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-map-intcast--0fe852e6af8b0747150bfd3e.md) | 109 | `result-track:0fe852e6af8b0747150bfd3ed9a3a3813d65d99c3f3af93528ca7165a2880a11` |
| 17 | `lemma` | [den_map_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-map-natcast--ab586adfef06bdf7e150573d.md) | 113 | `result-track:ab586adfef06bdf7e150573d9d08343cead87511e581747382a1b90afbffc3ba` |
| 18 | `lemma` | [num_map_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-map-natcast--6139b80e0e7c19131cbf6a37.md) | 117 | `result-track:6139b80e0e7c19131cbf6a378e319c126b28c3726403935733438db64890b38f` |
| 19 | `lemma` | [den_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-natcast--bda5cd4d176fc94c4b6fb2c4.md) | 125 | `result-track:bda5cd4d176fc94c4b6fb2c4f3267e66b5c34657a12d497f8514388adfbddbdb` |
| 20 | `lemma` | [num_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-natcast--ad3d75a7950723804e3c9aff.md) | 129 | `result-track:ad3d75a7950723804e3c9aff64c2e185439b15d9564a95641cb7205e9dcdd910` |
| 21 | `lemma` | [den_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-ofnat--0171ef44a6199f790f86716a.md) | 133 | `result-track:0171ef44a6199f790f86716a13b994dd65683bad7635c24aeda143d5bdf0b391` |
| 22 | `lemma` | [num_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-ofnat--e76c1dd4d4fae1a96d09f651.md) | 138 | `result-track:e76c1dd4d4fae1a96d09f65119402021517cebac73db0c5c8c8e56a7b89a22c5` |
| 23 | `lemma` | [den_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-intcast--35bc821eb4445c888528e3d9.md) | 143 | `result-track:35bc821eb4445c888528e3d9e086cc9d42e7aa0575e278cd966e1059a90fb1f8` |
| 24 | `lemma` | [num_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-intcast--bca3554e260ac1a770b8c71c.md) | 147 | `result-track:bca3554e260ac1a770b8c71c94e6a7924c51781bedb8e7a0325393bac66234ac` |
| 25 | `lemma` | [den_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-zero--ddc914ed0e0cef8c7afe64bc.md) | 151 | `result-track:ddc914ed0e0cef8c7afe64bccc006f1006cc3e1bd5fa1e329c079f109a3655d6` |
| 26 | `lemma` | [num_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-zero--685a8432d3de7cdc7021aa50.md) | 155 | `result-track:685a8432d3de7cdc7021aa50ccc209ca63b0e864b29ac2e38f85dd49acdd1fb2` |
| 27 | `lemma` | [den_one](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/den-one--91b83806525eecb51725b37d.md) | 159 | `result-track:91b83806525eecb51725b37d731d0de4cf75d35db2799bb3ab60dd6e5e2b5238` |
| 28 | `lemma` | [num_one](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/declarations/num-one--c2c38f3e8ccceb277fe8a451.md) | 163 | `result-track:c2c38f3e8ccceb277fe8a4519532b499303495b5609b134d4d8d034b79cbcc15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
