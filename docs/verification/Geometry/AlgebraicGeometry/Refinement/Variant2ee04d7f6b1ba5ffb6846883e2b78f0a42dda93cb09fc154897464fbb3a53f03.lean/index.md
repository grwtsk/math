# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Refinement.Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b141a66040c7c86a2d1150a57f745ef59d21c7b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b141a66040c7c86a2d1150a57f745ef59d21c7b`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.System` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Refinement](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/declarations/refinement--3d02844e9381e887c4fb5c17.md) | 30 | `declaration-track:3d02844e9381e887c4fb5c17294f6f4cf9def5a6b52824f089d0862089d4ebc9` |
| 2 | `theorem` | [valid_run](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/declarations/valid-run--565b5f0f753b4e33255b3283.md) | 57 | `result-track:565b5f0f753b4e33255b32838ff5fdb9a4d8667c4e7b94f0430c9c165796d12f` |
| 3 | `theorem` | [abstract_run](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/declarations/abstract-run--a4dd4df6b9279a55ff5dcd5e.md) | 70 | `result-track:a4dd4df6b9279a55ff5dcd5ee4caf2685fcda9515b06f8f014fe1ce84bae93e8` |
| 4 | `theorem` | [observe_run_sound](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/declarations/observe-run-sound--8cde61724f176e8091e6c2c5.md) | 84 | `result-track:8cde61724f176e8091e6c2c5ad99512a64908afe54cc8bf1d156809234873357` |
| 5 | `structure` | [RepresentationRefinement](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/declarations/representationrefinement--fea902401ad1b59eaecc83c2.md) | 99 | `declaration-track:fea902401ad1b59eaecc83c2cd9be61479e638f2b9a98adb05c2dda40b7976cc` |
| 6 | `theorem` | [abstract_represent_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/declarations/abstract-represent-apply--ab259aabb868f91eb10d09ca.md) | 114 | `result-track:ab259aabb868f91eb10d09ca03c49b3c0ca955377637898a80b1d21a23c7f622` |
| 7 | `theorem` | [represent_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant2ee04d7f6b1ba5ffb6846883e2b78f0a42dda93cb09fc154897464fbb3a53f03.lean/declarations/represent-injective--e721f700bd20ac14be16a61b.md) | 121 | `result-track:e721f700bd20ac14be16a61b48c289edfd517b2ef36fc77cfb27574bdb70295d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
