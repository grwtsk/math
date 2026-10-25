# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UniqueProds.Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "074cebd676f901c0f12936539ceed0ba23529cd1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `074cebd676f901c0f12936539ceed0ba23529cd1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Preimage` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniqueMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/uniquemul--af81de9708591df02143b874.md) | 64 | `declaration-track:af81de9708591df02143b874caaef225093039d504a6a65a7a3cef69c2f42a01` |
| 2 | `theorem` | [mt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/mt--c9c012617b8dc89bd5f26bbf.md) | 73 | `result-track:c9c012617b8dc89bd5f26bbf64ce9d1c04e7448fc6ea42f6b99e37f7c2158779` |
| 3 | `theorem` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/subsingleton--55e54422e836da3177d1ec5f.md) | 80 | `result-track:55e54422e836da3177d1ec5fa361dc06500ac19e44a40e505f767fb1be1f4304` |
| 4 | `theorem` | [set_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/set-subsingleton--14ed7946fe4e9bed7d069082.md) | 90 | `result-track:14ed7946fe4e9bed7d06908277d18e907e5ac3ec2c7987d7feaa4cd5dd488b77` |
| 5 | `theorem` | [iff_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/iff-existsunique--297e01a3c2638ea6ae23f496.md) | 103 | `result-track:297e01a3c2638ea6ae23f496693425eca210172a6c826c6f9ca7b046bc347fe0` |
| 6 | `theorem` | [exists_iff_exists_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/exists-iff-exists-existsunique--8f758e62676e2fbac3ba4415.md) | 117 | `result-track:8f758e62676e2fbac3ba4415f267d5393165512c8483222f64eda337ee140e1c` |
| 7 | `theorem` | [mulHom_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/mulhom-preimage--b3e3a8ecdab13330e1d17b4f.md) | 130 | `result-track:b3e3a8ecdab13330e1d17b4f798e5244074445e199c6e9816cb69a5324003aa0` |
| 8 | `theorem` | [mulHom_image_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/mulhom-image-iff--580f3af646cbac7183e03b36.md) | 147 | `result-track:580f3af646cbac7183e03b367564ca8bb874038e6bedbe46e4837dbe68aeb4db` |
| 9 | `theorem` | [mulHom_map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/mulhom-map-iff--166f74904a2d307dd00da84b.md) | 167 | `result-track:166f74904a2d307dd00da84b8e76cbc24dd5ea9fa15dbc3d9772cd88b803337a` |
| 10 | `class` | [UniqueSums](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/uniquesums--444af552804682b9a0601309.md) | 181 | `declaration-track:444af552804682b9a0601309cec7a41ff08c31abfd9e1b8cc19f6ef118f1441f` |
| 11 | `class` | [UniqueProds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/uniqueprods--6c90c902edfafa2add4a5c8b.md) | 191 | `declaration-track:6c90c902edfafa2add4a5c8b80f7a4a5d0092e773c2bd80e381fab6f53e7a2ef` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/instance--c47d027add3b75356900e914.md) | 202 | `declaration-track:c47d027add3b75356900e91414fc8b86f8f1e72a139a6fb33d23c70b32c62326` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/instance--421a14dea6b6bac355492d6f.md) | 209 | `declaration-track:421a14dea6b6bac355492d6fcb6ede88ca4bce14ddd9c27c1a6c54be54bc4c40` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/declarations/instance--6f5928af8aca3934a3d39084.md) | 220 | `declaration-track:6f5928af8aca3934a3d3908416280cc67c65b277d3b39362bf43cc9d91b4a428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
