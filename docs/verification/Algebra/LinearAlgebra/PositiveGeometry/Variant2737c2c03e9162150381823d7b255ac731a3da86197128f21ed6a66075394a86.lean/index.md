# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveGeometry.Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3bb34dccfda8fbc8e0bd2f968ada71f2cbd62bc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3bb34dccfda8fbc8e0bd2f968ada71f2cbd62bc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveForm](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/positiveform--8ce7c2486a71849553a1a8cf.md) | 36 | `declaration-track:8ce7c2486a71849553a1a8cfa23f13fa40298c65ae9c4247a9bdb0b90829251c` |
| 2 | `def` | [Visible](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/visible--ad0562777057dfd3a6e2e562.md) | 52 | `declaration-track:ad0562777057dfd3a6e2e56242b930ab6199a4c32f00c4bf94b732934f757098` |
| 3 | `def` | [IsNull](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/isnull--269ea71ce2c88835ae001710.md) | 56 | `declaration-track:269ea71ce2c88835ae0017105aba8cbc312fe51028ac6eba4ff41997a4263689` |
| 4 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/pullback--9f5645e63f3a820b5ec247bb.md) | 60 | `declaration-track:9f5645e63f3a820b5ec247bb0777c5bc76e7461bca4dc273393a1ca2d76b4ff3` |
| 5 | `theorem` | [pullback_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/pullback-nonnegative--80a61500b390f1ef40a805ff.md) | 74 | `result-track:80a61500b390f1ef40a805ff8e7310db5afc3bc5b4a5736f75b3f6acd677a7e5` |
| 6 | `theorem` | [pullback_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/pullback-visible-iff--53b065471f382946a809b443.md) | 79 | `result-track:53b065471f382946a809b443dc5015aaa8a5e5941d9a1eac4547a01a027d2652` |
| 7 | `theorem` | [pullback_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/pullback-isnull-iff--e378ee8c030c46c8bfbcb73d.md) | 84 | `result-track:e378ee8c030c46c8bfbcb73d2b032bde5aeb74de346e3f8d144cd69c2965a9ad` |
| 8 | `def` | [add](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/add--587803d03ccdb6fca00d6535.md) | 89 | `declaration-track:587803d03ccdb6fca00d6535ba9253c0417c82d73d8eb2b0952c8621d75f7b18` |
| 9 | `theorem` | [add_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/add-nonnegative--79537d6ad02cc3b4333be944.md) | 108 | `result-track:79537d6ad02cc3b4333be944893f85c75f9042badae15919b55a78b4eacdcad0` |
| 10 | `structure` | [ProvenanceResidualization](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/provenanceresidualization--8a6bf51bf889bf96e557c9bf.md) | 119 | `declaration-track:8a6bf51bf889bf96e557c9bf1732852b4b00e9058ea7ac957c07f54187ca319f` |
| 11 | `def` | [residualForm](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/residualform--43422091dd7a3d868dac1171.md) | 133 | `declaration-track:43422091dd7a3d868dac11715e96e7197c408e73bc830f036f9fec895d78a8a6` |
| 12 | `theorem` | [residual_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/residual-nonnegative--ac4180e50ea4b03487326520.md) | 138 | `result-track:ac4180e50ea4b03487326520d31b765696081bc818e643d0753fcd4a3e25f14c` |
| 13 | `theorem` | [residual_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/residual-visible-iff--35d900b1f48a5567c8d2fd64.md) | 145 | `result-track:35d900b1f48a5567c8d2fd64ed7bde8ee2131df4bc4ceb6bc8f60fd67428eaca` |
| 14 | `theorem` | [residual_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant2737c2c03e9162150381823d7b255ac731a3da86197128f21ed6a66075394a86.lean/declarations/residual-isnull-iff--b4b2104865c07e09bb65c219.md) | 152 | `result-track:b4b2104865c07e09bb65c2191e06872da90df045d788267e7d087e2f4b6ebec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
