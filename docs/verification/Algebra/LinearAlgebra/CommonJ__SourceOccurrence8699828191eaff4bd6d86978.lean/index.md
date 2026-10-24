# Verification target: GRWTSK.LinearAlgebra.CommonJ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c74145f19ca6fdc9034dc773c98eba153dbf70b6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/CommonJ.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c74145f19ca6fdc9034dc773c98eba153dbf70b6`.

Source path: `GRWTSK/LinearAlgebra/CommonJ.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/CommonJ.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Diagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.OrderedProduct`](../../../../mathematics/Algebra/OrderedProduct.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotationMatrix](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rotationmatrix--493c72246bfef40868a4f754.md) | 31 | `declaration-track:493c72246bfef40868a4f754230483d5ad0ebdeea47c55f2d893f392db186470` |
| 2 | `theorem` | [rotationMatrix_comp](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rotationmatrix-comp--5434be21e4137a34529ca0c5.md) | 37 | `result-track:5434be21e4137a34529ca0c53e0e9c550142056becc3ff569e34d880c7146a39` |
| 3 | `theorem` | [rotationMatrix_commute](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rotationmatrix-commute--45d55c39743735f10d9d521b.md) | 47 | `result-track:45d55c39743735f10d9d521bfcf67a78252872071b4e1ebbff213386f841a22f` |
| 4 | `theorem` | [commonJ_square](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/commonj-square--2a862435223fc152939298ed.md) | 56 | `result-track:2a862435223fc152939298ed78610c12a95f2fba345a2c164ce5596ad6cf1f3e` |
| 5 | `theorem` | [circle_composition](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/circle-composition--bc23f28e5a72bbc2d7574963.md) | 65 | `result-track:bc23f28e5a72bbc2d757496353119e8d59ca0f50b537786f4220d7602f36a3d2` |
| 6 | `theorem` | [circle_reverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/circle-reverse--ceebf6b6d8f895473a8bbe1b.md) | 75 | `result-track:ceebf6b6d8f895473a8bbe1b0965f0b0d825b70f05f3c5e17598fc20ce9770c7` |
| 7 | `theorem` | [rotationMatrix_reverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rotationmatrix-reverse--95f08fecee6b1344a71cd87d.md) | 81 | `result-track:95f08fecee6b1344a71cd87d10e1a6f187301273136cd4aefa894e95ac877757` |
| 8 | `def` | [rotationUnit](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rotationunit--29d191dfa9a432bc11ed18da.md) | 96 | `declaration-track:29d191dfa9a432bc11ed18da31449495c7c643f337603b2a7414f9ee1d1b16fc` |
| 9 | `theorem` | [rotationUnit_commute](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rotationunit-commute--19c89ff30f554c731dee36c0.md) | 107 | `result-track:19c89ff30f554c731dee36c02bccbda508155bd2980ef25e1966ecdad08c9a12` |
| 10 | `theorem` | [rotationMatrix_eq_commonJ](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rotationmatrix-eq-commonj--b0993a57ce0e2371eee6dce5.md) | 117 | `result-track:b0993a57ce0e2371eee6dce54ccb8911b549818d572a049a7823be02867a68d1` |
| 11 | `theorem` | [rotationUnit_reverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rotationunit-reverse--f12e7d1d2d9a162c2813a970.md) | 126 | `result-track:f12e7d1d2d9a162c2813a9709292abbf2c61cd90be6627d5886c312103af3222` |
| 12 | `def` | [rationalEdge](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rationaledge--47dc5f5d171732678c944174.md) | 134 | `declaration-track:47dc5f5d171732678c944174be4d70ba905ecac3f397cf761e0d6b8ab0ba18d8` |
| 13 | `theorem` | [rational_two_edge_loop_nonidentity](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rational-two-edge-loop-nonidentity--73d2cd1d7ef5e8ddf0219989.md) | 139 | `result-track:73d2cd1d7ef5e8ddf02199899ae97a6621222a049cb93d9eafc7f5048c933147` |
| 14 | `def` | [flipMatrix](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/flipmatrix--64564ddf717387e6d8bc552e.md) | 150 | `declaration-track:64564ddf717387e6d8bc552ea6cd0951d9a3bf98a6842d7a6c441f4316a7a205` |
| 15 | `def` | [flipUnit](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/flipunit--d57ae36351e13d2ace621152.md) | 155 | `declaration-track:d57ae36351e13d2ace621152efe8322d38e012efe6ff3161e3012c4222623349` |
| 16 | `theorem` | [flip_rotation_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/flip-rotation-inverse--9d3be3bcb8e319bf99608e6e.md) | 168 | `result-track:9d3be3bcb8e319bf99608e6ef167d6dce505e28cc026b35a4db01b597ee9f6bf` |
| 17 | `theorem` | [commonJ_loop_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/commonj-loop-inverse--7ea300f193203917926fc3dc.md) | 180 | `result-track:7ea300f193203917926fc3dcac625bd99e6a0dfc1851b7eb01566e24cdba6466` |
| 18 | `theorem` | [rational_reverse_loop_identity](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/rational-reverse-loop-identity--7a6aacb745bfe7c83d81b2f0.md) | 192 | `result-track:7a6aacb745bfe7c83d81b2f0ad2cf67575e583f86d50800b6ca0e0984299861b` |
| 19 | `theorem` | [flipUnit_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/flipunit-inverse--0442bee53b7a1eeda7a283de.md) | 199 | `result-track:0442bee53b7a1eeda7a283de6da4ab7a63369ce078d94e917b4ee16aa15de674` |
| 20 | `theorem` | [commonJ_loop_sign_conjugation](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/commonj-loop-sign-conjugation--c74496022241019ea4f9fc08.md) | 207 | `result-track:c74496022241019ea4f9fc080e56b525c68d3882c156c0cca4c27d54f427ad64` |
| 21 | `theorem` | [flip_commonJ_reverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/declarations/flip-commonj-reverse--e028e0e79c4cde127b5780d2.md) | 216 | `result-track:e028e0e79c4cde127b5780d2343fab523b8545604153ca565bf91b0631d83b61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
