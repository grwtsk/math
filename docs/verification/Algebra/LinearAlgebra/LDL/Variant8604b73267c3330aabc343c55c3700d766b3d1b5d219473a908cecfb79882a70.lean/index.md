# Verification target: GRWTSK.Algebra.LinearAlgebra.LDL.Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b23d2207a5f1950a4fb972f0d041cfc3d79bd336",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b23d2207a5f1950a4fb972f0d041cfc3d79bd336`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean.json)

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
| 1 | `def` | [LDL.lowerInv](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-lowerinv--f7bcdcdef8ac7121a98c46e2.md) | 58 | `declaration-track:f7bcdcdef8ac7121a98c46e2dec0d2957ee381d1d669be79fad3d84bf40b7cb6` |
| 2 | `theorem` | [LDL.lowerInv_eq_gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-lowerinv-eq-gramschmidtbasis--9174ebd0acc5abb2a622e29f.md) | 62 | `result-track:9174ebd0acc5abb2a622e29f9b7f713e54b8eddbd2a12dc17141d8ee3540890e` |
| 3 | `instance` | [LDL.invertibleLowerInv](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-invertiblelowerinv--bb353c792895caea192a566e.md) | 73 | `declaration-track:bb353c792895caea192a566e3be176668ca96fa52b263a2e8cd0bd56f1040f1b` |
| 4 | `theorem` | [LDL.lowerInv_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-lowerinv-orthogonal--95313afcb30be55efc7a659e.md) | 81 | `result-track:95313afcb30be55efc7a659e4dcce8ba2a4c39635c95027854b94e63d627b7f8` |
| 5 | `def` | [LDL.diagEntries](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-diagentries--17626d9929fc7794dd0f5c00.md) | 87 | `declaration-track:17626d9929fc7794dd0f5c00e714904c1b431622dfac0d3e0396f4890d5c8c06` |
| 6 | `def` | [LDL.diag](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-diag--0a89bc0acd4c505a118ae8f2.md) | 91 | `declaration-track:0a89bc0acd4c505a118ae8f26e57502284c2b9cb41e9b188deee7df20679ac86` |
| 7 | `theorem` | [LDL.isLowerTriangular_lowerInv](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-islowertriangular-lowerinv--270752d60dd1f89dff8221ea.md) | 94 | `result-track:270752d60dd1f89dff8221eac1d9068a0ca2237499288766b1e55cf41496c8fd` |
| 8 | `theorem` | [LDL.diag_eq_lowerInv_conj](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-diag-eq-lowerinv-conj--debe4e5e87eb7be68ce9b0eb.md) | 103 | `result-track:debe4e5e87eb7be68ce9b0eb524fda2331d96a2dc44861858a5a692c2713a3be` |
| 9 | `def` | [LDL.lower](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-lower--f62c96628bfe8e44f0f07923.md) | 117 | `declaration-track:f62c96628bfe8e44f0f07923a6fd1f19f718cf9a52ce32f3d8979a3eb59b5271` |
| 10 | `theorem` | [LDL.isLowerTriangular_lower](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-islowertriangular-lower--02b4d51e6eb65fb7c1c61eca.md) | 120 | `result-track:02b4d51e6eb65fb7c1c61ecae5bdfa1dddae121445b07723bcfc4937db0041d2` |
| 11 | `theorem` | [LDL.lower_conj_diag](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/declarations/ldl-lower-conj-diag--f72ad9e700fce6449f362fda.md) | 125 | `result-track:f72ad9e700fce6449f362fda0444072d2a069e8747353cd7acc695bc5a70b76a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
