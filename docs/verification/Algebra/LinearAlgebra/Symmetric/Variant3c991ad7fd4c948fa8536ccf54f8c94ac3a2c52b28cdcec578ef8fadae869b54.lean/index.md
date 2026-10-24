# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63f531b5244da717466998d647f28cf1478ab749",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63f531b5244da717466998d647f28cf1478ab749`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braiding](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/declarations/braiding--4c308a03cd6d479d4438eb1d.md) | 25 | `declaration-track:4c308a03cd6d479d4438eb1db3dcd962cef9535e67a03fd819b5e02d3b8533c9` |
| 2 | `theorem` | [braiding_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/declarations/braiding-naturality--e8e423c15f7ec1c1889f20e2.md) | 33 | `result-track:e8e423c15f7ec1c1889f20e2e1aace4e237871f1944dea8c38a591b6a7d7d461` |
| 3 | `theorem` | [hexagon_forward](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/declarations/hexagon-forward--e0c9214626f6aad692a2de45.md) | 42 | `result-track:e0c9214626f6aad692a2de459ad8568859028e464a5731e04bf763ac199a9f1d` |
| 4 | `theorem` | [hexagon_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/declarations/hexagon-reverse--b2392f6c8c27d68be5627ba7.md) | 52 | `result-track:b2392f6c8c27d68be5627ba75ea68dc31b5eae211c34bb9b0a3f5df4d082614f` |
| 5 | `instance` | [symmetricCategory](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/declarations/symmetriccategory--7e55a4cf545ec9aebbc13633.md) | 65 | `declaration-track:7e55a4cf545ec9aebbc13633ff934c1393453217a81d008f6b08cdae3dbbc52d` |
| 6 | `theorem` | [braiding_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/declarations/braiding-hom-apply--08d2b8caea4600ca762885af.md) | 79 | `result-track:08d2b8caea4600ca762885af04bed41d78f68fe4140aa21d6615fb9f2112eed7` |
| 7 | `theorem` | [braiding_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/declarations/braiding-inv-apply--dce9598d0cf324222122ce13.md) | 86 | `result-track:dce9598d0cf324222122ce13ccb84a249f2c0a0bde4c056f9cd45f75ea346845` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
