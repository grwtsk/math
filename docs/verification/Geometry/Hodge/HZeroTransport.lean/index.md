# Verification target: GRWTSK.Geometry.Hodge.HZeroTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ca3ffd9a473b567f4a8fc4b36be7008b8dd5cc7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/HZeroTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ca3ffd9a473b567f4a8fc4b36be7008b8dd5cc7`.

Source path: `GRWTSK/Geometry/Hodge/HZeroTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/HZeroTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.HodgeEquivalence`](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.DegreeZeroCohomology`](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.cocycleEquiv](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/root-grwtsk-linearalgebra-framedfiberport-hodgeequiv-cocycleequiv--2a42cc3022c6e2de52ffc906.md) | 24 | `declaration-track:2a42cc3022c6e2de52ffc9062481dbf68700f6bde76f527617b685dae573da45` |
| 2 | `abbrev` | [cocycleEquiv](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/cocycleequiv--0335fc945ebebdbeb25acf6a.md) | 50 | `declaration-track:0335fc945ebebdbeb25acf6ac52c66b0cbd7b0f865026521c46070c0bcf023e6` |
| 3 | `def` | [_root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.transportHZeroModel](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/root-grwtsk-linearalgebra-framedfiberport-hodgeequiv-transporthzeromodel--3fe3956cdd8c340f6806cd61.md) | 54 | `declaration-track:3fe3956cdd8c340f6806cd61c0cd16d6deb898e57170c9671df0f745cfcf7f4e` |
| 4 | `abbrev` | [transportHZeroModel](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/transporthzeromodel--1bf90c1cd4dba371674464d9.md) | 61 | `declaration-track:1bf90c1cd4dba371674464d9b619a3648570f29c8269484eceb9beeeda28c2ef` |
| 5 | `theorem` | [_root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.transportHarmonicKernel](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/root-grwtsk-linearalgebra-framedfiberport-hodgeequiv-transportharmonicke--70e27b814fe87f4abe1d6f88.md) | 67 | `result-track:70e27b814fe87f4abe1d6f88565b866b8543c4699e729e5b8c5438be81524171` |
| 6 | `abbrev` | [transportHarmonicKernel](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/transportharmonickernel--a4069237f313dcf6338a47f0.md) | 92 | `declaration-track:a4069237f313dcf6338a47f0079a5cb329d304b822cc6fe3b19633ce6d23f035` |
| 7 | `def` | [_root_.GRWTSK.Geometry.Hodge.DegreeZeroCohomology.CycleHZeroComparison.transport](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/root-grwtsk-geometry-hodge-degreezerocohomology-cyclehzerocomparison-tra--efcaf852ece95410557dade7.md) | 116 | `declaration-track:efcaf852ece95410557dade78d84baa219856fe17ec3902d4ac148d39bdee0c0` |
| 8 | `abbrev` | [transport](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/transport--4a98fb1f27abb515c1752530.md) | 126 | `declaration-track:4a98fb1f27abb515c1752530b0d4eea08bd0a09b2d246225211c49f5042122b7` |
| 9 | `def` | [_root_.GRWTSK.Geometry.Hodge.DegreeZeroCohomology.RationalHodgeHZeroAdapter.transport](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/root-grwtsk-geometry-hodge-degreezerocohomology-rationalhodgehzeroadapte--a5bdba1401db0291d3d8c8fb.md) | 136 | `declaration-track:a5bdba1401db0291d3d8c8fb72943ddcaa5ace0726c7e4093b99ff177ed3808e` |
| 10 | `abbrev` | [transport](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/transport--6e61391b6e8e8b5ae3684c17.md) | 144 | `declaration-track:6e61391b6e8e8b5ae3684c17ec1a4e45f959d0a26c99b7d16eb048223c1799d7` |
| 11 | `def` | [edgeIdentityModel](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/edgeidentitymodel--10938bc7cf3e7f1d4d697f56.md) | 160 | `declaration-track:10938bc7cf3e7f1d4d697f567f3327e6dbadc2253fe126d16ca14e963dabf65d` |
| 12 | `theorem` | [edgeIdentityAdapter_realizes](../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/declarations/edgeidentityadapter-realizes--88d2ff78f421ef18e69d8d22.md) | 164 | `result-track:88d2ff78f421ef18e69d8d22a5792b5cb5b56f92bd3b42e1ed9f01309088e382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
