# Verification target: GRWTSK.Algebra.CommutativeAlgebra.NoetherNormalization.Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19bd3baac472298f31fa6148da114b6f39d02e78",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19bd3baac472298f31fa6148da114b6f39d02e78`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Monad` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Indexes` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lt_up](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/lt-up--6709a4a02b956f19de38be85.md) | 64 | `result-track:6709a4a02b956f19de38be85e9ad7c9b2c511401cadc7f70ed2c7e6329b95ed2` |
| 2 | `abbrev` | [T1](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/t1--374295f80ea5184a37866b36.md) | 75 | `declaration-track:374295f80ea5184a37866b361a9a32a738ae2892436989e2255f53a7f22cf8a0` |
| 3 | `lemma` | [t1_comp_t1_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/t1-comp-t1-neg--5a3770f6865b8c3522452639.md) | 79 | `result-track:5a3770f6865b8c35224526393db064c43d1d3597660a74b02851b9512156afc1` |
| 4 | `abbrev` | [T](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/t--03054fb63ab3ccfb65f33480.md) | 85 | `declaration-track:03054fb63ab3ccfb65f33480dcb16dc74ccbb228c7924f274bd4515decaf9461` |
| 5 | `lemma` | [sum_r_mul_neq](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/sum-r-mul-neq--2a046bd37e515004f82811a9.md) | 88 | `result-track:2a046bd37e515004f82811a9f9d70486446cdbee5c639d5c2abd68984ee9e7af` |
| 6 | `lemma` | [degreeOf_zero_t](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/degreeof-zero-t--013341252cefb29a819bed96.md) | 97 | `result-track:013341252cefb29a819bed96ac42b4b7f5287dbf8a65ae4b396aa467e63594b1` |
| 7 | `lemma` | [degreeOf_t_neq_of_neq](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/degreeof-t-neq-of-neq--e643b6e016bb836667fa2018.md) | 114 | `result-track:e643b6e016bb836667fa20184ddf616436fea72a91a01972b0ba948676e8a869` |
| 8 | `lemma` | [leadingCoeff_finSuccEquiv_t](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/leadingcoeff-finsuccequiv-t--aebf96b3464809f4f59e051a.md) | 121 | `result-track:aebf96b3464809f4f59e051ab0214a64c830370f77a652ec50659c6a1507574f` |
| 9 | `lemma` | [T_leadingcoeff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/t-leadingcoeff-isunit--a72466ca7add6b9d197bffaf.md) | 140 | `result-track:a72466ca7add6b9d197bffaf9417772b956ce4d754ea22a9dc52947c446c6f7f` |
| 10 | `abbrev` | [hom1](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/hom1--0556c844b4d5c4b91a5236a9.md) | 175 | `declaration-track:0556c844b4d5c4b91a5236a95ccc952ef5a4737b0977947bb915a848922287e4` |
| 11 | `lemma` | [hom1_isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/hom1-isintegral--7599f7013b9d92183a6c65fa.md) | 181 | `result-track:7599f7013b9d92183a6c65fa78db7d2bfb61c35d98f5da31d7f3d6401fe17cec` |
| 12 | `abbrev` | [eqv1](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/eqv1--0a2d954ca42cef97e2d82e75.md) | 188 | `declaration-track:0a2d954ca42cef97e2d82e753330cc49efa6cf43a51d8a0b88f63f41a8155210` |
| 13 | `abbrev` | [eqv2](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/eqv2--c34170c061ccde4585f8cc0a.md) | 204 | `declaration-track:c34170c061ccde4585f8cc0a765c3a40193dffab9605ef0b4bc1838858dd4c13` |
| 14 | `def` | [hom2](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/hom2--b9b9e00b5c420cdcddff97fa.md) | 217 | `declaration-track:b9b9e00b5c420cdcddff97fa04daf329bff5adaa799e7232a5cc2fab62ae9c79` |
| 15 | `lemma` | [hom2_isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/hom2-isintegral--78992423882c438caa1ed31f.md) | 221 | `result-track:78992423882c438caa1ed31f66ab3153142649954377a0a98deadb2e0ed57b42` |
| 16 | `theorem` | [exists_integral_inj_algHom_of_quotient](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/exists-integral-inj-alghom-of-quotient--d6469993db12955715a9c8e3.md) | 234 | `result-track:d6469993db12955715a9c8e3e56104a8a7f611c7d0b8d5ee44c118f8e21ea680` |
| 17 | `theorem` | [exists_integral_inj_algHom_of_fg](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/exists-integral-inj-alghom-of-fg--6294db1c94219f60597fa55a.md) | 273 | `result-track:6294db1c94219f60597fa55a87f4ce6822dfd08bfd5a500718c36bdaf9bcc160` |
| 18 | `theorem` | [exists_finite_inj_algHom_of_fg](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variant3af1743f2df361237e5a91be41d55748dbee32adbdc67ce87b412f2cc928a194.lean/declarations/exists-finite-inj-alghom-of-fg--2dbd9fb2976649b8e1727ebd.md) | 286 | `result-track:2dbd9fb2976649b8e1727ebd49fffff8e069c8b4ece5f255d45c74f8d62169e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
