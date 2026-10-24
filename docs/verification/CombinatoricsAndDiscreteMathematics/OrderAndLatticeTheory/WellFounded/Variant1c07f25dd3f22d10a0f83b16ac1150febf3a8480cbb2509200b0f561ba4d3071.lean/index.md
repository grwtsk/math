# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WellFounded.Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "336b2a1a6323ba29ca2b1dc48ac1fd9407f9ddbd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `336b2a1a6323ba29ca2b1dc48ac1fd9407f9ddbd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.WellFounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Lex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Lex.acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/lex-acc--94afbd43b2f50eb0879900da.md) | 34 | `result-track:94afbd43b2f50eb0879900da44f41d610464c4df5cf47a4368617638cff7ca3d` |
| 2 | `theorem` | [Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/lex-wellfounded--966246254f4e27d7e75b0763.md) | 42 | `result-track:966246254f4e27d7e75b07632d7892d3df8c42aa5557a0943f6112b77d1b5a7f` |
| 3 | `theorem` | [Lex.wellFounded'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/lex-wellfounded--31da6efde5cf1125fcc32a9b.md) | 46 | `result-track:31da6efde5cf1125fcc32a9bc980c0c346bbb0588a8555193475d985633e0acf` |
| 4 | `instance` | [Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/lex-wellfoundedlt--4a1c3f1519e103ae8a60295b.md) | 51 | `declaration-track:4a1c3f1519e103ae8a60295b26d3da159697aa265df725f1db11a2de7177e4b6` |
| 5 | `theorem` | [Lex.wellFounded_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/lex-wellfounded-of-finite--be3dab7cc611512984c695a1.md) | 58 | `result-track:be3dab7cc611512984c695a12f13880f7071a7a07af039144369c15084b67e18` |
| 6 | `theorem` | [Lex.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/lex-wellfoundedlt-of-finite--d75e9cf86248f8d59ab96826.md) | 62 | `result-track:d75e9cf86248f8d59ab96826db2f58e7e88763936ea818bce94d4f2624625060` |
| 7 | `theorem` | [wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/wellfoundedlt--4b99287b50b9c327d52d6258.md) | 66 | `result-track:4b99287b50b9c327d52d6258567aad0caab742d8b6bc4b64d8c3874b24e19420` |
| 8 | `instance` | [wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/wellfoundedlt--7f8a2f5988762fd004e81603.md) | 70 | `declaration-track:7f8a2f5988762fd004e81603f933c755c894b75a0d2aec73358c4e1e791a73a9` |
| 9 | `instance` | [wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant1c07f25dd3f22d10a0f83b16ac1150febf3a8480cbb2509200b0f561ba4d3071.lean/declarations/wellfoundedlt-of-finite--a0c9f1accbca48c7f7ab0ac7.md) | 75 | `declaration-track:a0c9f1accbca48c7f7ab0ac7107e9e6ccfbee8b23d129e2985552b6eeea36bd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
