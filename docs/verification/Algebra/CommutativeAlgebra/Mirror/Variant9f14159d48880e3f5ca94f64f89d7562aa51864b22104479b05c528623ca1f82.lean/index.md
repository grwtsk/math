# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Mirror.Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "804488801b7dca68ac96316aef8362edbcec692d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `804488801b7dca68ac96316aef8362edbcec692d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Reverse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror--246b221fc2e91bd52843024d.md) | 35 | `declaration-track:246b221fc2e91bd52843024daf4d9f3c22ba4a57d1d6766c5de7ff3b60b45d36` |
| 2 | `theorem` | [mirror_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-zero--2906900284fa59ce27767625.md) | 39 | `result-track:2906900284fa59ce2776762543fbad05bddeb27dcc8c4d446e576920b32278d0` |
| 3 | `theorem` | [mirror_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-monomial--3458367299dd598b004bb646.md) | 41 | `result-track:3458367299dd598b004bb6469d2ff862c043f268df9517df3f2fc89072ef5fcf` |
| 4 | `theorem` | [mirror_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-c--9d01f4b36f5ab528166d6e47.md) | 49 | `result-track:9d01f4b36f5ab528166d6e478dfd581f7e91a2237d772edf41732deb1d7cbe39` |
| 5 | `theorem` | [mirror_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-x--dfad43317e07d975921630aa.md) | 52 | `result-track:dfad43317e07d975921630aabd479a94a91ec37efe0992cc01a418609e0d64c0` |
| 6 | `theorem` | [mirror_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-natdegree--15dcadda175f3faa2101b2d0.md) | 55 | `result-track:15dcadda175f3faa2101b2d02159cedd6c1e04d2eee6b0ae7f834d87ac73101c` |
| 7 | `theorem` | [mirror_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-nattrailingdegree--cf3f1ae25c3ccf9d15b1777c.md) | 63 | `result-track:cf3f1ae25c3ccf9d15b1777cb904a5adbeb4e338c3c2d9cecbe62e529a74643a` |
| 8 | `theorem` | [coeff_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/coeff-mirror--4d399694d6fef62110b59843.md) | 69 | `result-track:4d399694d6fef62110b59843c593f2428297775c8bd300311f88b1ef2052936f` |
| 9 | `theorem` | [mirror_eval_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-eval-one--1df32cd095587bad4a6c3a84.md) | 87 | `result-track:1df32cd095587bad4a6c3a8434ee0b1ad64e87a26e0d06d6c7df2a59cddd0296` |
| 10 | `theorem` | [mirror_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-mirror--4218fd64d7ce7fe41b4524df.md) | 108 | `result-track:4218fd64d7ce7fe41b4524dfa418036e0b992d76084b820dbd8f293fbb553175` |
| 11 | `theorem` | [mirror_involutive](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-involutive--1ef369a53f4caae13f2fc070.md) | 114 | `result-track:1ef369a53f4caae13f2fc070d7eb6feb36930e055f7410fca4d19c6e407e391d` |
| 12 | `theorem` | [mirror_eq_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-eq-iff--f35a9e20e4db5b82f23ecf77.md) | 117 | `result-track:f35a9e20e4db5b82f23ecf77b9a24effdbc77df9c12c8da48fae3aef6ff3c98c` |
| 13 | `theorem` | [mirror_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-inj--17609d240902db9491b5e3c6.md) | 121 | `result-track:17609d240902db9491b5e3c6a186e93414a3aeb6f6e440be9045fc9d4c031f61` |
| 14 | `theorem` | [mirror_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-eq-zero--d7492d4392413a3e07c3877a.md) | 125 | `result-track:d7492d4392413a3e07c3877afbff10ddbc10f85bee1b8c0631941e5da9e178ac` |
| 15 | `theorem` | [mirror_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-trailingcoeff--ac2d084e98f1f6d865506641.md) | 131 | `result-track:ac2d084e98f1f6d865506641d6a51d0d545e1b0cb0e163d8d368f683a33187f2` |
| 16 | `theorem` | [mirror_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-leadingcoeff--2cb1b9aa1d8481466815bb0d.md) | 136 | `result-track:2cb1b9aa1d8481466815bb0d4f6eb2cdfd8326590496930fbf01540d9574d7c5` |
| 17 | `theorem` | [coeff_mul_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/coeff-mul-mirror--dbf15fd1ef79b4b6bc9c88f1.md) | 139 | `result-track:dbf15fd1ef79b4b6bc9c88f1ebffc09593900e2651688f7e0a6fb09bcce03bf9` |
| 18 | `theorem` | [natDegree_mul_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/natdegree-mul-mirror--44d851f1c39d2d686846813e.md) | 151 | `result-track:44d851f1c39d2d686846813ea3814a957d4703ea8140b3ec270cf3dc7eb45758` |
| 19 | `theorem` | [natTrailingDegree_mul_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/nattrailingdegree-mul-mirror--bc6e2ad2d2585d3359dc6f9c.md) | 156 | `result-track:bc6e2ad2d2585d3359dc6f9c9dc6ca9726080bbbb6fdc7a1cf0b271aa24f6d24` |
| 20 | `theorem` | [mirror_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-neg--6d7f6de10df62334be1fe26b.md) | 168 | `result-track:6d7f6de10df62334be1fe26b9bd1489a8a8d9b59b8c8e49cb004167a1da3d3eb` |
| 21 | `theorem` | [mirror_mul_of_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-mul-of-domain--41b43fdc6edad8dd3be3c2f7.md) | 173 | `result-track:41b43fdc6edad8dd3be3c2f77d60fc98db57f4f3155b8fd6fa7bdeaa4bfed007` |
| 22 | `theorem` | [mirror_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/mirror-smul--f678d1c5a2c1b1b50c0e84f9.md) | 182 | `result-track:f678d1c5a2c1b1b50c0e84f9853379ebcc611c5db3799c41ca319aaf7de6545a` |
| 23 | `theorem` | [irreducible_of_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant9f14159d48880e3f5ca94f64f89d7562aa51864b22104479b05c528623ca1f82.lean/declarations/irreducible-of-mirror--6ee1b6ee3712cbccc25c5bed.md) | 191 | `result-track:6ee1b6ee3712cbccc25c5bedd3fcf0df0c16de36cb360718d04dc46aaaeeff01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
