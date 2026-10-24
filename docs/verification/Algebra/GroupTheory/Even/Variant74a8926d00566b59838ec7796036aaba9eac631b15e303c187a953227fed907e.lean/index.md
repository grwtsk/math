# Verification target: GRWTSK.Algebra.GroupTheory.Even.Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "180e565400d1adadd19aba826c5091f1b30c81b0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `180e565400d1adadd19aba826c5091f1b30c81b0`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Even` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/square--b86d06ba030d37b72e4ddf8f.md) | 27 | `declaration-track:b86d06ba030d37b72e4ddf8ffeef71a670ecb297308693c883226f699bfd61e0` |
| 2 | `theorem` | [mem_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/mem-square--626dbfd78b4264763f7ec822.md) | 32 | `result-track:626dbfd78b4264763f7ec8223640a0ae30fa6d77c9f15b0449cbfedb4e525258` |
| 3 | `theorem` | [coe_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/coe-square--2ac92b014c9cf65258b7eed4.md) | 35 | `result-track:2ac92b014c9cf65258b7eed405140af8bfcdf7319229bd097a833452c8ad0759` |
| 4 | `def` | [square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/square--531df7df394c311c7a4f4396.md) | 49 | `declaration-track:531df7df394c311c7a4f43963a2f372f6ce322f42b23270b9bf29fa1824bd435` |
| 5 | `theorem` | [square_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/square-tosubsemigroup--d9d6dcf6822d4de607bcfa4c.md) | 54 | `result-track:d9d6dcf6822d4de607bcfa4c4275088ad7318ed411d6dadd9d526898e61b1a17` |
| 6 | `theorem` | [mem_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/mem-square--af1e0f2d82de3e45d912e1fe.md) | 57 | `result-track:af1e0f2d82de3e45d912e1fe8e28881af858cde3a3f8e774db379e3f0f61ba24` |
| 7 | `theorem` | [coe_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/coe-square--9501099983c58ed8b9b7852c.md) | 60 | `result-track:9501099983c58ed8b9b7852cdbb1ff0407681cd002257cf627422ab54e711239` |
| 8 | `def` | [square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/square--1ef3027650f160244e944419.md) | 74 | `declaration-track:1ef3027650f160244e9444191146390d0636af7129fa672c2ff0b2514eee3728` |
| 9 | `theorem` | [square_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/square-tosubmonoid--ac8572c63b8fefbc51efa9d2.md) | 79 | `result-track:ac8572c63b8fefbc51efa9d260375771642ab4f6e7e1413315ed29ac6a2bfceb` |
| 10 | `theorem` | [mem_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/mem-square--c04e84e60e75fa0dd4feb203.md) | 82 | `result-track:c04e84e60e75fa0dd4feb203beca7dd95877c7d970ed042493cde4a70f367e9e` |
| 11 | `theorem` | [coe_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e.lean/declarations/coe-square--fbbc713d35491dd221df3f6e.md) | 85 | `result-track:fbbc713d35491dd221df3f6e0317d27508c12d8922dab77d5c427e2753bcc217` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
