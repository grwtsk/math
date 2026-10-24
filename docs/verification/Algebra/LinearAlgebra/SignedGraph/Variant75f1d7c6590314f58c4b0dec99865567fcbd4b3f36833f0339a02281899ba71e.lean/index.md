# Verification target: GRWTSK.Algebra.LinearAlgebra.SignedGraph.Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb3fdd98edf53f4677d3af648c2e4d711dc947f2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb3fdd98edf53f4677d3af648c2e4d711dc947f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftColumn](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/leftcolumn--14bf84858251a290a06735fb.md) | 26 | `declaration-track:14bf84858251a290a06735fbb9156dc28350103571ab710b984919c9b0278d97` |
| 2 | `def` | [rightColumn](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/rightcolumn--b4be842ec2ebc64820c6381e.md) | 29 | `declaration-track:b4be842ec2ebc64820c6381e4fa833ebf4e010c323febe7e2f3677b47265443f` |
| 3 | `def` | [signedBlock](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/signedblock--88b55dd2031d78299e2e3e76.md) | 32 | `declaration-track:88b55dd2031d78299e2e3e7640d81a0d2f48de5aa4683567c6f888b13a4cb305` |
| 4 | `def` | [frame](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/frame--b8d507646da0ec9741d545e8.md) | 36 | `declaration-track:b8d507646da0ec9741d545e81b4cdce3c05be86d438dc5bed734f8691a223ee6` |
| 5 | `theorem` | [frame_pivot](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/frame-pivot--7325d76e609e79308d90c68b.md) | 42 | `result-track:7325d76e609e79308d90c68b0fdd84c92e55188aaca3697875f98658096b1ff1` |
| 6 | `theorem` | [frame_right](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/frame-right--d8d96add265c89da06d4f482.md) | 50 | `result-track:d8d96add265c89da06d4f4823fafb1b41796a0199d60cbe3db8edc92aac31442` |
| 7 | `theorem` | [frame_pivot_det](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/frame-pivot-det--2e04375a552fede3e0e35ee5.md) | 56 | `result-track:2e04375a552fede3e0e35ee581d7f7a8726796c1fee0e4939ba13ae987ddfff4` |
| 8 | `theorem` | [frame_rank](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/frame-rank--844b84f08c76bb08e14a3a4d.md) | 61 | `result-track:844b84f08c76bb08e14a3a4d7301c5108aec45154313ed9c8d8741f451b187c0` |
| 9 | `def` | [recover](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/recover--abe7b625cb06cdf0c2f7065d.md) | 67 | `declaration-track:abe7b625cb06cdf0c2f7065db2a9af7ad0f5d097bf25a4ba457ac047c7fce700` |
| 10 | `theorem` | [recover_frame](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/recover-frame--2eccf506de95f90cf884e276.md) | 71 | `result-track:2eccf506de95f90cf884e27639c6d419b3c976fda7f1bd05d0563db4c69e2f63` |
| 11 | `theorem` | [frame_injective](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/frame-injective--50a220f2b44930fe2b09c567.md) | 77 | `result-track:50a220f2b44930fe2b09c567eb2dfa6219d5711c27c92a6f1da9c7c477fec318` |
| 12 | `def` | [fullRankFrame](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/fullrankframe--a2d80914b01185744f3b0702.md) | 83 | `declaration-track:a2d80914b01185744f3b07025fde9ccc29ae6d2a4eeb8daac4f8903abb3999c6` |
| 13 | `def` | [plane](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/plane--43f37a95e193594cfe0ff418.md) | 87 | `declaration-track:43f37a95e193594cfe0ff418654ef88bc82746722c2c83274e2bcff3923594b0` |
| 14 | `theorem` | [plane_injective](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/plane-injective--598cef09146a15791cc75a95.md) | 91 | `result-track:598cef09146a15791cc75a95bc9f9e35baad0cedb06a9a705bcd9ab992578402` |
| 15 | `theorem` | [intrinsicNonnegative_of_frame](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/intrinsicnonnegative-of-frame--40178141cf0e18f59e7b019d.md) | 99 | `result-track:40178141cf0e18f59e7b019dd1e553e358f5a70241fae71233cbb59c78f84a54` |
| 16 | `def` | [MinorCorrespondence](../../../../../mathematics/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/declarations/minorcorrespondence--cdc762b625615af43bd2a139.md) | 104 | `declaration-track:cdc762b625615af43bd2a139e7562973c203557c9ad57f976e82b6fa3cbcae34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
