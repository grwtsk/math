# Verification target: GRWTSK.Algebra.LinearAlgebra.Exact.Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3232d19982d0cbbffa6d6d1520220396e6e10f5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3232d19982d0cbbffa6d6d1520220396e6e10f5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LinearIndependent.linearIndependent_of_exact_of_retraction](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/declarations/linearindependent-linearindependent-of-exact-of-retraction--d4c1033bb600f415db11ecb7.md) | 43 | `result-track:d4c1033bb600f415db11ecb764eb48815e1e9f1e638e96850ac19863e9e50ad0` |
| 2 | `lemma` | [top_le_span_of_aux](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/declarations/top-le-span-of-aux--6106bb2f56fc7b46aae491b3.md) | 63 | `result-track:6106bb2f56fc7b46aae491b34784dd2d9901a683350bb59b22514a1e50332b3a` |
| 3 | `lemma` | [Submodule.top_le_span_of_exact_of_retraction](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/declarations/submodule-top-le-span-of-exact-of-retraction--3bf36049e2de10a1bbe6d03f.md) | 87 | `result-track:3bf36049e2de10a1bbe6d03fc1090f92785327c7e405c1ddf4e6845972e1ee6c` |
| 4 | `def` | [Module.Basis.ofSplitExact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/declarations/module-basis-ofsplitexact--f9893481879f2e5e8f202478.md) | 102 | `declaration-track:f9893481879f2e5e8f202478c2b7d5a95c9da387f8b9b1cb1ea5bf4872487e18` |
| 5 | `lemma` | [Module.Basis.ofSplitExact_apply](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/declarations/module-basis-ofsplitexact-apply--9f013b5ee4447c8b29a4b7f4.md) | 111 | `result-track:9f013b5ee4447c8b29a4b7f4a5c54fe7d495323d2c98e44bc4fdd9db5098f649` |
| 6 | `lemma` | [Submodule.projectionOnto_comp_surjective_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/declarations/submodule-projectiononto-comp-surjective-of-exact--b3a273bc48c6afdbbba3e416.md) | 123 | `result-track:b3a273bc48c6afdbbba3e416748e70e6581259e725d55c0079df799624a85b45` |
| 7 | `lemma` | [Submodule.projectionOnto_comp_bijective_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/declarations/submodule-projectiononto-comp-bijective-of-exact--0e2aad39d3ac96689f7dad4f.md) | 138 | `result-track:0e2aad39d3ac96689f7dad4f52dcbe07f8abc8f4ebb18132e41886e1d805f79e` |
| 8 | `lemma` | [LinearMap.linearProjOfIsCompl_comp_bijective_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/declarations/linearmap-linearprojofiscompl-comp-bijective-of-exact--1288fad111f729ffbe7bb610.md) | 150 | `result-track:1288fad111f729ffbe7bb61077f125b75eda482cf1af7075ba0bf7217860e5d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
