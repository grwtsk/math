# Verification target: GRWTSK.Geometry.DifferentialGeometry.GroupLieAlgebra.Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df0bf58c6042d7ed5a4d6f584bbdfa885d219811",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df0bf58c6042d7ed5a4d6f584bbdfa885d219811`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean.json)

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
| 1 | `abbrev` | [GroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/groupliealgebra--358e8699affbe45334710aec.md) | 56 | `declaration-track:358e8699affbe45334710aec8eea2f9b5a6224f4b9ea4657830901e462d1d7fa` |
| 2 | `def` | [mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/mulinvariantvectorfield--c3db77fef3dceed4b5e13c92.md) | 62 | `declaration-track:c3db77fef3dceed4b5e13c92340f2f06f7d1ad0f3211f8f6967a9728b9bf42a5` |
| 3 | `lemma` | [mulInvariantVectorField_add](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/mulinvariantvectorfield-add--03ea70bbd804bf5cc6e93671.md) | 67 | `result-track:03ea70bbd804bf5cc6e9367179a5373613dcef872583149301a4afda981ee4f6` |
| 4 | `lemma` | [addInvariantVectorField_smul](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/addinvariantvectorfield-smul--5c6dd7184f561f874ebafc27.md) | 75 | `result-track:5c6dd7184f561f874ebafc27c9f422aaaf6918d72be3010ea9df572589825740` |
| 5 | `lemma` | [mulInvariantVectorField_smul](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/mulinvariantvectorfield-smul--6b29158e4c338aa594e698c8.md) | 82 | `result-track:6b29158e4c338aa594e698c871245fca8cbb7de949eacd0daf53b9e6418a3c2e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/instance--f5bfbe080b6c7164cc0deb33.md) | 93 | `declaration-track:f5bfbe080b6c7164cc0deb33ab392c3eb3df4ff82ad2ea6e910ab27a5bc0b282` |
| 7 | `lemma` | [GroupLieAlgebra.bracket_def](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/groupliealgebra-bracket-def--49e342b6a5b2b87c2b84468d.md) | 97 | `result-track:49e342b6a5b2b87c2b84468db9a4254cf5a1e61c7e8509d1b3c602ba4dacceb8` |
| 8 | `lemma` | [inverse_mfderiv_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/inverse-mfderiv-mul-left--0f68a1fdb8c800cbf2b4a310.md) | 103 | `result-track:0f68a1fdb8c800cbf2b4a3105c3713d8704fc0828454f1cfeee3e4589ece9163` |
| 9 | `lemma` | [mpullback_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/mpullback-mulinvariantvectorfield--49930d2be1f1ad43f615e783.md) | 122 | `result-track:49930d2be1f1ad43f615e7836811e6b78494d71502197b5902d6a3a940bc8268` |
| 10 | `lemma` | [mulInvariantVectorField_eq_mpullback](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/mulinvariantvectorfield-eq-mpullback--671dc0a17edd6ea94ea72295.md) | 137 | `result-track:671dc0a17edd6ea94ea72295b75fae0d48f3676718d4f81a22caf92fb8e839a9` |
| 11 | `theorem` | [contMDiff_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/contmdiff-mulinvariantvectorfield--508d94cbcf86b5d12a88897a.md) | 147 | `result-track:508d94cbcf86b5d12a88897acb3cd8ecdba0f8d7ba60bbab6f4f94b7ffcb0449` |
| 12 | `theorem` | [contMDiffAt_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/contmdiffat-mulinvariantvectorfield--38a4dbb5f697cdb37143d5bf.md) | 188 | `result-track:38a4dbb5f697cdb37143d5bfa9671573c2fa2bcce327df549884ef862b361fc7` |
| 13 | `theorem` | [mdifferentiable_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/mdifferentiable-mulinvariantvectorfield--c004f8f084294e945c230b9c.md) | 194 | `result-track:c004f8f084294e945c230b9c29b5d351d27e8798ab80fe2c50cd92c17aa9e9f3` |
| 14 | `theorem` | [mdifferentiableAt_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/mdifferentiableat-mulinvariantvectorfield--dae2fa6d16be3c1d4f40c896.md) | 200 | `result-track:dae2fa6d16be3c1d4f40c8964c7570644e5c597547f99ac57657c61bdefdfd41` |
| 15 | `lemma` | [mulInvariantVector_mlieBracket](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/mulinvariantvector-mliebracket--cc6de3dc5376175db6305c05.md) | 214 | `result-track:cc6de3dc5376175db6305c059c89bac2852728403ab45663be019c3e365b13f8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/instance--448df6b81f7e2e7fa917a1d5.md) | 230 | `declaration-track:448df6b81f7e2e7fa917a1d58db70fa529035d7cd8ed05ce59de33a6a68fb7cd` |
| 17 | `instance` | [instLieAlgebraAddGroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/instliealgebraaddgroupliealgebra--52bf13823a6cd6468955355e.md) | 252 | `declaration-track:52bf13823a6cd6468955355e04b9c50b89d1a572a6dcd3258cc6e3c195ae24fb` |
| 18 | `instance` | [instLieAlgebraGroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/declarations/instliealgebragroupliealgebra--6fe6a33b8746df4fa2e48f76.md) | 262 | `declaration-track:6fe6a33b8746df4fa2e48f76ebda32c99f5e7c4c5c71640cb39410405e4f8a35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
