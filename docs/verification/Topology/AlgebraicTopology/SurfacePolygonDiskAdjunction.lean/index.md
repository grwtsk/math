# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7df6a597616d1877b87b4e888b712eb12c8db99",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7df6a597616d1877b87b4e888b712eb12c8db99`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.TopologicalDiskAdjunction`](../../../../mathematics/Topology/AlgebraicTopology/TopologicalDiskAdjunction.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PolygonAttachedDisk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/polygonattacheddisk--fac32a1d0702e62c37ed0aac.md) | 37 | `declaration-track:fac32a1d0702e62c37ed0aacdbcb3f0b33380aa7af57342593b097f9bb997f98` |
| 2 | `def` | [originalSkeletonMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/originalskeletonmap--2731ae6353bf60ee0273c4cc.md) | 41 | `declaration-track:2731ae6353bf60ee0273c4ccc51b517282881de2dda40cc2ae63f006e38b32eb` |
| 3 | `def` | [originalDiskMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/originaldiskmap--c4cbf3fc3095a86492461584.md) | 46 | `declaration-track:c4cbf3fc3095a86492461584eea1fccdb1d2444830927027606e50a266f1906d` |
| 4 | `theorem` | [originalSkeletonMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/originalskeletonmap-continuous--f1b2877c25c4b45a206e371e.md) | 50 | `result-track:f1b2877c25c4b45a206e371eaef301827afb76eb2beac5b1c9bfc1942db2acbe` |
| 5 | `theorem` | [originalDiskMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/originaldiskmap-continuous--852688681cff634da5746c8f.md) | 54 | `result-track:852688681cff634da5746c8f8f6275948b15644bc32f3cbdffcc9b518a8fde5e` |
| 6 | `theorem` | [original_source_boundary_commutes](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/original-source-boundary-commutes--a2bf8a4fa2788cd9ae6e7d0f.md) | 61 | `result-track:a2bf8a4fa2788cd9ae6e7d0fe5cb2ce8429663427d946cdb7ed8c6a38a4c3fd1` |
| 7 | `theorem` | [original_boundary_commutes](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/original-boundary-commutes--52ec63ed01b7287057bc730b.md) | 74 | `result-track:52ec63ed01b7287057bc730bf1748ee1747b3a41c8af7666a8efeb495eac1225` |
| 8 | `def` | [polygonDescend](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/polygondescend--73145f94d3084625badd28bc.md) | 82 | `declaration-track:73145f94d3084625badd28bc03ae25652ae985ffcbbb416fbb1c09f588305fae` |
| 9 | `theorem` | [polygonDescend_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/polygondescend-continuous--ef81875e26e3b8737ae3803a.md) | 91 | `result-track:ef81875e26e3b8737ae3803a80f23782366cad436ce14a7c89f53e68aef11e6a` |
| 10 | `theorem` | [polygonDescend_skeleton](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/polygondescend-skeleton--beca73f8c8838126c8f51e7c.md) | 102 | `result-track:beca73f8c8838126c8f51e7c76480c33267090b05c853b215f0bc8b94ae4c8a1` |
| 11 | `theorem` | [polygonDescend_disk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/polygondescend-disk--d0ef8f634679de4037a57a48.md) | 113 | `result-track:d0ef8f634679de4037a57a482a3b89353363c180cec543374aac85f3853b68f8` |
| 12 | `theorem` | [polygonDescend_unique](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskAdjunction.lean/declarations/polygondescend-unique--66335ae564642f1b12e83a3f.md) | 124 | `result-track:66335ae564642f1b12e83a3ff1a3f54553f29a0665a067b0b3bc079d98409ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
