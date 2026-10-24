# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e56f31265f6f33f759b94073b8b0e8c585e44318",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e56f31265f6f33f759b94073b8b0e8c585e44318`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Monadic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Range` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_of_mem_range'_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/declarations/mem-of-mem-range-aux--7ebb7f1039b1e1b64f10fa9b.md) | 36 | `result-track:7ebb7f1039b1e1b64f10fa9b8dd7e4afabe40159db4f3331330dde90b9dbcc28` |
| 2 | `theorem` | [mem_of_mem_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/declarations/mem-of-mem-range--d4e5dadd0524b8b7588b0f6d.md) | 46 | `result-track:d4e5dadd0524b8b7588b0f6d2b55397a7a5f86e11938609117d376febd553c6b` |
| 3 | `theorem` | [size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/declarations/size-eq--a5dda4d634fb6d9e35076c68.md) | 50 | `result-track:a5dda4d634fb6d9e35076c68da9aada8f470b05806776728aa947ea19a2cb0f7` |
| 4 | `theorem` | [forIn'_loop_eq_forIn'_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/declarations/forin-loop-eq-forin-range--05da426ae9c7b7543b969be0.md) | 70 | `result-track:05da426ae9c7b7543b969be08d7b021b03dd352b1eed85c616b1a6d5a6c7f5a7` |
| 5 | `theorem` | [forIn'_eq_forIn'_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/declarations/forin-eq-forin-range--6b1690329a336746025061b8.md) | 88 | `result-track:6b1690329a336746025061b8721cebb2a532422c3a1e6eab7e1bed54e16a8dd0` |
| 6 | `theorem` | [forIn_eq_forIn_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/declarations/forin-eq-forin-range--5529088de649b98f265a3ae1.md) | 96 | `result-track:5529088de649b98f265a3ae1c92fc86b97c74adf952c36c335b9709903becf2d` |
| 7 | `theorem` | [forM_loop_eq_forM_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/declarations/form-loop-eq-form-range--0a7b29b76ded948c54db365a.md) | 101 | `result-track:0a7b29b76ded948c54db365a966f8af3c93ab5ee54007cb800f0878917ce3377` |
| 8 | `theorem` | [forM_eq_forM_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/declarations/form-eq-form-range--d1efb8b204a6ec923af03f84.md) | 114 | `result-track:d1efb8b204a6ec923af03f84f2a8562b87012b02c13c422baafb410bfbf17720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
