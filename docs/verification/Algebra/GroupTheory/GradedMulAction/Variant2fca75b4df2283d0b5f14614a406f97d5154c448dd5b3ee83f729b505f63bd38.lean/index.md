# Verification target: GRWTSK.Algebra.GroupTheory.GradedMulAction.Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb6a5e9278eec4ef9b86183721365232d87407df",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb6a5e9278eec4ef9b86183721365232d87407df`.

Source path: `GRWTSK/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/gsmul--95e310186472cce03b690cac.md) | 71 | `declaration-track:95e310186472cce03b690cac419645abfc12a4436b93b8f49c8f0da2d52479c2` |
| 2 | `instance` | [GMul.toGSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/gmul-togsmul--5b2d556d4a1e3bc85f1e215e.md) | 77 | `declaration-track:5b2d556d4a1e3bc85f1e215e0e03f48b75cb296b2c12482e001b3b1a3677df2c` |
| 3 | `instance` | [GSmul.toSMul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/gsmul-tosmul--e64ff9ab64bad9444de80630.md) | 80 | `declaration-track:e64ff9ab64bad9444de80630dff2efa6a415151a08a586a1ffab72892be0ad46` |
| 4 | `theorem` | [mk_smul_mk](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/mk-smul-mk--515f9e219e0f27cf2363eae9.md) | 84 | `result-track:515f9e219e0f27cf2363eae9536314b210e6c1149656e6a069ffdb99ee80dfa8` |
| 5 | `class` | [GMulAction](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/gmulaction--83c5ca0f00460ebf95c16f35.md) | 90 | `declaration-track:83c5ca0f00460ebf95c16f350c447da2ef74e39f76d8c15ca0ff0cf6836cc8e0` |
| 6 | `instance` | [GMonoid.toGMulAction](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/gmonoid-togmulaction--a93ba8a75ee9c5c0fb02e9c4.md) | 98 | `declaration-track:a93ba8a75ee9c5c0fb02e9c4f833159a242e6b37e2214f9c57d0ef54b066c060` |
| 7 | `instance` | [GMulAction.toMulAction](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/gmulaction-tomulaction--bdf4b00702a6e5b174645384.md) | 104 | `declaration-track:bdf4b00702a6e5b1746453842ad35a82c288b3885073d87757b6f03969a69320` |
| 8 | `class` | [SetLike.GradedSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/setlike-gradedsmul--5db010de22ccd6e15439d2f0.md) | 123 | `declaration-track:5db010de22ccd6e15439d2f06a3404dc194f1cc239943709e8407e1e3c853b3a` |
| 9 | `instance` | [SetLike.toGSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/setlike-togsmul--eafc7a834ccca54025914efa.md) | 129 | `declaration-track:eafc7a834ccca54025914efa3669ee14dcdb0210f0cd187da666306f9a1f9f92` |
| 10 | `theorem` | [SetLike.coe_GSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/setlike-coe-gsmul--6efdb5cc48d2ffa0dd853105.md) | 144 | `result-track:6efdb5cc48d2ffa0dd853105d5d5f0a3a6e81ac783461917ec22e28811e44548` |
| 11 | `instance` | [SetLike.GradedMul.toGradedSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/setlike-gradedmul-togradedsmul--ace0bcb5b67b8ff99fc0d561.md) | 151 | `declaration-track:ace0bcb5b67b8ff99fc0d561541421168689419c5f537e18ab142471f2f39d1e` |
| 12 | `theorem` | [SetLike.Homogeneous.graded_smul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variant2fca75b4df2283d0b5f14614a406f97d5154c448dd5b3ee83f729b505f63bd38.lean/declarations/setlike-homogeneous-graded-smul--e30653cea9b99c6af1fd87e1.md) | 162 | `result-track:e30653cea9b99c6af1fd87e1320f97a7d1f2039387b39eb6ebf7c11e98201b94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
