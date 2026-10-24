# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorExpression.Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a27aedf3b714442e100bb43ca2cb526da411a8d0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a27aedf3b714442e100bb43ca2cb526da411a8d0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.PascalTree.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.EMLCircuit` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TensorFactorRole](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/tensorfactorrole--cdb2e51cf5b2663131ab3703.md) | 8 | `declaration-track:cdb2e51cf5b2663131ab37038c558961fe3fa85ceb6ba87f6175c7be49b0b30c` |
| 2 | `structure` | [BinaryLogicMatrixTensorFactor](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/binarylogicmatrixtensorfactor--6aad901c620c374dd9572dde.md) | 19 | `declaration-track:6aad901c620c374dd9572dde80121c4986c8663e65b8c55147231e5a21fca14b` |
| 3 | `inductive` | [BinaryLogicMatrixTensorExpression](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/binarylogicmatrixtensorexpression--c4ff85e0b37d5e961fc9f66b.md) | 26 | `declaration-track:c4ff85e0b37d5e961fc9f66b548646f1221dccab2f1fd112d79b5c4962b0d91b` |
| 4 | `structure` | [TensorContractionDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/tensorcontractiondescriptor--59fdbbd58d54765e3a94aefc.md) | 39 | `declaration-track:59fdbbd58d54765e3a94aefc745d4077ebeb3c92142b6ad8ce261fcf8307096f` |
| 5 | `inductive` | [DeterminantDescriptorKind](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/determinantdescriptorkind--0947d223515aea18c84c7bc8.md) | 45 | `declaration-track:0947d223515aea18c84c7bc876371e99de2c22fc4fb0b7e1fa1c8e28653b26ef` |
| 6 | `structure` | [DeterminantDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/determinantdescriptor--045cdf1dfcebe59074810903.md) | 51 | `declaration-track:045cdf1dfcebe590748109032cf43046d37e45a137765edce9b27b750ccdfd4c` |
| 7 | `def` | [DeterminantDescriptor.admissible](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/determinantdescriptor-admissible--020f3742ad1247ffc2a96bab.md) | 61 | `declaration-track:020f3742ad1247ffc2a96bab53617da21c6e7e65357ac1cc6bf7f98d4efe67a1` |
| 8 | `theorem` | [tensorExpression_factor_boundary_visible](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/tensorexpression-factor-boundary-visible--375afa304a272ad67a3f2b1e.md) | 66 | `result-track:375afa304a272ad67a3f2b1ed56f82e3173bbabf20e13b4b7adaf6d345e6ba27` |
| 9 | `theorem` | [determinantDescriptor_actualSquare_is_square](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252.lean/declarations/determinantdescriptor-actualsquare-is-square--9170f305dd54047604313928.md) | 71 | `result-track:9170f305dd5404760431392898aed4d2838f740a96c7fd68acc7b766e95b1b75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
