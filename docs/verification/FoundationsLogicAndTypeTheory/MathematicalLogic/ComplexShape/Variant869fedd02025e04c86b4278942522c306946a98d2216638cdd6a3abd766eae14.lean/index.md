# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ComplexShape.Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83747457af6a9b1fd9a16aac252d83255359622c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83747457af6a9b1fd9a16aac252d83255359622c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComplexShape](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/complexshape--80ce89b98aa2f458b080e8f6.md) | 61 | `declaration-track:80ce89b98aa2f458b080e8f6ccecbe8ed8bf4ffbf70c78063045c398c301c6e9` |
| 2 | `def` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/refl--0bb64ebfd229250be83cab32.md) | 82 | `declaration-track:0bb64ebfd229250be83cab328c9be1ab0327e71cb9190d0d8cff237a42a8e525` |
| 3 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/symm--8d241bb116670697ea7546e5.md) | 92 | `declaration-track:8d241bb116670697ea7546e57e58901fb67e4018a53719e86c6df7493e70240a` |
| 4 | `theorem` | [symm_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/symm-symm--b429945950e02a2cc0e3584e.md) | 100 | `result-track:b429945950e02a2cc0e3584e5dcfe8410295e82abe9a553a8f831d1fe3946bf7` |
| 5 | `def` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/trans--68a6b06b8dfab70f7d1538c7.md) | 110 | `declaration-track:68a6b06b8dfab70f7d1538c78bd8d409e2a8a5171564a39ea9976e2e7a286b85` |
| 6 | `instance` | [subsingleton_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/subsingleton-next--335844780a0c23da94dcfd30.md) | 124 | `declaration-track:335844780a0c23da94dcfd30d89d7694a8a542a55ce89458f35ea6933a94bf61` |
| 7 | `instance` | [subsingleton_prev](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/subsingleton-prev--264163e377ef3f8c02f2007e.md) | 130 | `declaration-track:264163e377ef3f8c02f2007e3e5218e269da841c90db494f1828f52c890fb79b` |
| 8 | `def` | [next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/next--fdcdaca69eddad68b40202ea.md) | 139 | `declaration-track:fdcdaca69eddad68b40202ea8fcbbba937c4c9abfae7bfba9f8f3a942e623d3c` |
| 9 | `def` | [prev](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/prev--284bc83c996298d485a0d9aa.md) | 146 | `declaration-track:284bc83c996298d485a0d9aaf6197872623be875f7b0d667d46e33bd8cb7d9fe` |
| 10 | `theorem` | [next_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/next-eq--16e418dd8e12467b4fcb8d76.md) | 150 | `result-track:16e418dd8e12467b4fcb8d763778836802b650d2408c53980258fb8b9944d3fb` |
| 11 | `theorem` | [prev_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/prev-eq--c11338caa921b399fc1aaf97.md) | 157 | `result-track:c11338caa921b399fc1aaf975f902d37414b893a3e20ca0eca9cfc0e532c089f` |
| 12 | `def` | [up'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/up--6c1f78583f48f0a33608d405.md) | 167 | `declaration-track:6c1f78583f48f0a33608d40571c7371d2951c73497d45abbb6142230b7d8d95f` |
| 13 | `def` | [down'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/down--b69400c08f7b09fb2630c171.md) | 178 | `declaration-track:b69400c08f7b09fb2630c171d5c480051c2135d67ee67b4f0e39b532162f8eae` |
| 14 | `theorem` | [down'_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/down-mk--ee6e98d934941aef9d964ee3.md) | 185 | `result-track:ee6e98d934941aef9d964ee34bff91aa584394de3f446ce9302ed18678adc4b8` |
| 15 | `def` | [up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/up--92ecb6d16f99bc1949ba2bbd.md) | 192 | `declaration-track:92ecb6d16f99bc1949ba2bbd236c34f8d76acc7e653c04eb2a8d64566d287158` |
| 16 | `def` | [down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/down--3dd9760ee06f451ef8210ede.md) | 200 | `declaration-track:3dd9760ee06f451ef8210eded494a3bcd2e891131578594f6e10701fce8810a6` |
| 17 | `theorem` | [down_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variant869fedd02025e04c86b4278942522c306946a98d2216638cdd6a3abd766eae14.lean/declarations/down-mk--fbce19d3bde5d3000152fc64.md) | 205 | `result-track:fbce19d3bde5d3000152fc645d1c130bdd8c847290d83080007d67e028f3ec82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
