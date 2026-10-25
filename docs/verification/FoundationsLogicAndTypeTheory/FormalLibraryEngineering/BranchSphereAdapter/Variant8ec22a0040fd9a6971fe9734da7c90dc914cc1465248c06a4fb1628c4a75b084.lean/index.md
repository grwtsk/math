# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BranchSphereAdapter.Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf0cd983d1ba0decf2bb2faff10a4cee23d13f21",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf0cd983d1ba0decf2bb2faff10a4cee23d13f21`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.RiemannSphere` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SphereAdapterScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean/declarations/sphereadapterscope--5d0e983e0564f39f38a9d8ae.md) | 25 | `declaration-track:5d0e983e0564f39f38a9d8ae8a23b8d2c44147e652a6a36325b7b2d3def92e35` |
| 2 | `def` | [scope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean/declarations/scope--5e5c405ce54cd0000a98b85d.md) | 30 | `declaration-track:5e5c405ce54cd0000a98b85dca4da80e7bfec4277df34569f870771309b5e656` |
| 3 | `theorem` | [infinity_maps_to_north](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean/declarations/infinity-maps-to-north--da43fe178cb4b170d3abafd1.md) | 34 | `result-track:da43fe178cb4b170d3abafd1cf6936f6d01973c8f3a15d19a3157d50861e3a63` |
| 4 | `theorem` | [finite_origin_maps_to_south](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean/declarations/finite-origin-maps-to-south--d236490e46a28acc883c01ba.md) | 41 | `result-track:d236490e46a28acc883c01bae8ce6681f4360b4e74aa437e882ceacb1f44bcb7` |
| 5 | `theorem` | [tangent_origin_eq_south](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSphereAdapter/Variant8ec22a0040fd9a6971fe9734da7c90dc914cc1465248c06a4fb1628c4a75b084.lean/declarations/tangent-origin-eq-south--80f4f51eaf10a7fdf6eea0a9.md) | 48 | `result-track:80f4f51eaf10a7fdf6eea0a91cc88c2dd93f7554cba4f6d96dffca31c835c949` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
