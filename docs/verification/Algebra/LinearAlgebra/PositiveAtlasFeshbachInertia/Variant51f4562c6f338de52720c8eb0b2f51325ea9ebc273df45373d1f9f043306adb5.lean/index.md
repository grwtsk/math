# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveAtlasFeshbachInertia.Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b527b840f31bf3df623a6d1f6c81c512003087a8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b527b840f31bf3df623a6d1f6c81c512003087a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachInertia` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalar](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/declarations/scalar--f5e63f7d9dfe7b1cc300d0ad.md) | 28 | `declaration-track:f5e63f7d9dfe7b1cc300d0ad60d6a6f57d17b3154621503fdc028687ba7531eb` |
| 2 | `def` | [weights](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/declarations/weights--6ba6c7e44a5848dc79812eab.md) | 30 | `declaration-track:6ba6c7e44a5848dc79812eab27caebc2bd22fd512c0240c57dfe3ea389d99ef8` |
| 3 | `def` | [reducedWeightedEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/declarations/reducedweightedequiv--ff5b6def6874b6eae4dab178.md) | 33 | `declaration-track:ff5b6def6874b6eae4dab1783a681d0433ce5bf4c24220423676b5c6c7db04b3` |
| 4 | `theorem` | [inertia_counts](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/declarations/inertia-counts--facaafff35736902d59060ae.md) | 44 | `result-track:facaafff35736902d59060aeda2eb41924e8799a88016719ee6babeb45f6d6bc` |
| 5 | `theorem` | [nonzero_shear](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/declarations/nonzero-shear--03e721cf9c74bb143862c957.md) | 59 | `result-track:03e721cf9c74bb143862c9572da36f275f2f5cb4e2892bd7be9fb1939fb30d89` |
| 6 | `theorem` | [singular_center](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/declarations/singular-center--b0ef11c646047843db0da3d7.md) | 65 | `result-track:b0ef11c646047843db0da3d716829c1d8ccb1304a2e1114565149bdc08c4464a` |
| 7 | `theorem` | [singular_inertia](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/declarations/singular-inertia--f4c053e8cf8bf285e56d0661.md) | 72 | `result-track:f4c053e8cf8bf285e56d0661de020a76ff85e731842ca918cd3f608a153fc86c` |
| 8 | `theorem` | [indefinite_inertia](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/declarations/indefinite-inertia--b4063b0fc089766ab4dc5a1d.md) | 92 | `result-track:b4063b0fc089766ab4dc5a1dc79df7bab1fbfdd0b54e653a80408ec57c41575a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
