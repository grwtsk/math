# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.TriangleShift.Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c6ebb03ab48bf66c28e5a9c6f8e77b33d195a72",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c6ebb03ab48bf66c28e5a9c6f8e77b33d195a72`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Rotate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Triangle.shiftFunctor](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/triangle-shiftfunctor--48eb97c0825c217587170481.md) | 52 | `declaration-track:48eb97c0825c217587170481ca9a5529ac4a4324e5e7d5d0c36deba3baeebd08` |
| 2 | `def` | [Triangle.shiftFunctorZero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/triangle-shiftfunctorzero--933644beeda928ba37ec2dce.md) | 74 | `declaration-track:933644beeda928ba37ec2dcebddc3e21641481ab21773539705735b7d3ab18d8` |
| 3 | `def` | [Triangle.shiftFunctorAdd'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/triangle-shiftfunctoradd--4fabbc2dee7d59e1d658b8b6.md) | 89 | `declaration-track:4fabbc2dee7d59e1d658b8b6bdc71f7d96579aeec8871f267fd968f8bdfa6a6a` |
| 4 | `def` | [rotateRotateRotateIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/rotaterotaterotateiso--19e88fba4ea80b6b3fa8fd7b.md) | 118 | `declaration-track:19e88fba4ea80b6b3fa8fd7b482e1477df7a6ea9c438caadbb8b2912a525e88a` |
| 5 | `def` | [invRotateInvRotateInvRotateIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/invrotateinvrotateinvrotateiso--bca68514f061a8fd9eee5bfd.md) | 126 | `declaration-track:bca68514f061a8fd9eee5bfd042ec002b6e169ffafbe7da076969703bfa5e84c` |
| 6 | `def` | [invRotateIsoRotateRotateShiftFunctorNegOne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/invrotateisorotaterotateshiftfunctornegone--ccc75599f69631426b105151.md) | 139 | `declaration-track:ccc75599f69631426b105151057225f25f9e8be883f1a5a1575b0810e8d25559` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/instance--3df1d8cc3277e4b498727c90.md) | 158 | `declaration-track:3df1d8cc3277e4b498727c90d611c26894e1e5fd329d54645ff967718d92310b` |
| 8 | `lemma` | [shiftFunctor_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/shiftfunctor-eq--fbd9344d92cf49e7d1ca954f.md) | 172 | `result-track:fbd9344d92cf49e7d1ca954f985668b3b9bcb91bd021209758f631c8166d7ea4` |
| 9 | `lemma` | [shiftFunctorZero_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/shiftfunctorzero-eq--6d80badc965f69d579e40f93.md) | 176 | `result-track:6d80badc965f69d579e40f93c0d19adcc58a0cd513fb4d7a390088283a1a8b46` |
| 10 | `lemma` | [shiftFunctorAdd_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/shiftfunctoradd-eq--f30fa8a09c90f6a285b43743.md) | 181 | `result-track:f30fa8a09c90f6a285b43743cc0828e774bf268e9434c4ed95c20efdb938be59` |
| 11 | `lemma` | [shiftFunctorAdd'_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfb3402cb5e9183658bbe091238a1821084d28d49ad6ddad9a0dbda588541865a.lean/declarations/shiftfunctoradd-eq--8924b15940027740b8cf2222.md) | 187 | `result-track:8924b15940027740b8cf2222b63fbbed76281719546248ab8bcbc65b98074c75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
