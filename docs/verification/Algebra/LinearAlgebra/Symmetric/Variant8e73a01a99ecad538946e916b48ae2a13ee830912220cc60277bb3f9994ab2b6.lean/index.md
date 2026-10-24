# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c781cf486b0a1a7f074411c075f7a487535ea23",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c781cf486b0a1a7f074411c075f7a487535ea23`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Subspace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Banach` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymmetric](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric--9a53e6cd0971bb6fc7689021.md) | 53 | `declaration-track:9a53e6cd0971bb6fc7689021ba8e21e4e287713bc9b57f78966563af747a0ed8` |
| 2 | `theorem` | [isSymmetric_iff_sesqForm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-iff-sesqform--a329f1948d44c9d3a6b43d97.md) | 60 | `result-track:a329f1948d44c9d3a6b43d97df3b03de7a36a1f5bc8833b8017a51cd93b88950` |
| 3 | `theorem` | [IsSymmetric.conj_inner_sym](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-conj-inner-sym--50bedc49de6e146ae8febdf7.md) | 66 | `result-track:50bedc49de6e146ae8febdf7f94488d08691b147609989f4a2dda19256c09c80` |
| 4 | `theorem` | [IsSymmetric.apply_clm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-apply-clm--25d4618d7504da80fbf9b887.md) | 70 | `result-track:25d4618d7504da80fbf9b887c26a210ecfb64d71e8d9791f4862c045547175ac` |
| 5 | `theorem` | [IsSymmetric.zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-zero--29a328e5f4c3136744c45d2e.md) | 75 | `result-track:29a328e5f4c3136744c45d2ec476f34b2d61034319e413ee1aae7473e26164aa` |
| 6 | `theorem` | [IsSymmetric.id](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-id--ddd07dbd62e58c2135efa5a2.md) | 79 | `result-track:ddd07dbd62e58c2135efa5a2ece2649e49b569815b685b0e6c984cfd7c9e1d4e` |
| 7 | `theorem` | [IsSymmetric.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-add--0eb66f2161631b51563dcc3d.md) | 82 | `result-track:0eb66f2161631b51563dcc3dac3e7fea94b794b175600586a151c36d516ab3e1` |
| 8 | `theorem` | [IsSymmetric.sub](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-sub--0a36f0bb1db77069ba249d50.md) | 88 | `result-track:0a36f0bb1db77069ba249d5082746417dced8035faab87cf6e556c36684ded50` |
| 9 | `theorem` | [IsSymmetric.smul](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-smul--d8c1cecef2d5f432c7d36195.md) | 94 | `result-track:d8c1cecef2d5f432c7d361951d3c7def884f277453a7c01970a5f8bda6361229` |
| 10 | `lemma` | [IsSymmetric.mul_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-mul-of-commute--b68a4301d65c5a98aa713e87.md) | 100 | `result-track:b68a4301d65c5a98aa713e871254e305bff12203629db1957a585622cb67ff49` |
| 11 | `lemma` | [IsSymmetric.pow](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-pow--f23a00ff843d99547a65676d.md) | 105 | `result-track:f23a00ff843d99547a65676d9d58785d52c36d7520c42a1f6ce35ffcc909cd8c` |
| 12 | `theorem` | [IsSymmetric.coe_reApplyInnerSelf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-coe-reapplyinnerself-apply--41a69d7e3ec7bf534069b306.md) | 112 | `result-track:41a69d7e3ec7bf534069b3066ae13ba1d8e931898e0dfcd873c527f9b4fae2ea` |
| 13 | `theorem` | [IsSymmetric.restrict_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-restrict-invariant--86adb4bc8d62f1234ce71b90.md) | 121 | `result-track:86adb4bc8d62f1234ce71b90fb19e90a7c65a09fa3a3db9d5b19d4a686c0133d` |
| 14 | `theorem` | [IsSymmetric.restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-restrictscalars--02644462cbe9c1024b27ae78.md) | 124 | `result-track:02644462cbe9c1024b27ae78f6acbafc909bc0a344e7d24a367a4924e4496133` |
| 15 | `theorem` | [isSymmetric_iff_inner_map_self_real](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-iff-inner-map-self-real--a03bbbef7bbd42e588e66603.md) | 138 | `result-track:a03bbbef7bbd42e588e666032c4581ba4b57f02857fd16804d51e2b36a684d56` |
| 16 | `theorem` | [IsSymmetric.inner_map_polarization](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-inner-map-polarization--12276364f0be7149bb6a4d07.md) | 158 | `result-track:12276364f0be7149bb6a4d07a844d3f858b9d5a9122e0fbe185352832a34f407` |
| 17 | `theorem` | [IsSymmetric.continuous](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-continuous--d73c599f1010275389c603b3.md) | 192 | `result-track:d73c599f1010275389c603b3505e8e885f7a96b21f33daa33833126018760858` |
| 18 | `theorem` | [IsSymmetric.inner_map_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/declarations/issymmetric-inner-map-self-eq-zero--474d0a39d2c60287a5891fe2.md) | 209 | `result-track:474d0a39d2c60287a5891fe2bfdf19c437dc1b0715769af002dbbd5b220bf14b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
