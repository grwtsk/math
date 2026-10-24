# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cardinality.Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aac6adaa6328cb20f828981b8e0bcc76a9a9ffaa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aac6adaa6328cb20f828981b8e0bcc76a9a9ffaa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Sum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivQuotientOrbitRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/equivquotientorbitrel--ce58191dc11dc9d7f73c41eb.md) | 36 | `declaration-track:ce58191dc11dc9d7f73c41ebf73d95a3513643d18ff01a154167b53a290be374` |
| 2 | `def` | [nonZeroEquivProjectivizationProdUnits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/nonzeroequivprojectivizationprodunits--6185db2b2f964ea1ffb1d544.md) | 40 | `declaration-track:6185db2b2f964ea1ffb1d544c5fd6fe2eb6cf8850b68a3968eb61ae44cd71605` |
| 3 | `instance` | [isEmpty_of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/isempty-of-subsingleton--144a0a88d06f52189cae1035.md) | 46 | `declaration-track:144a0a88d06f52189cae1035af9d2074f38b83e3d2b2783bd035c5f6d297b416` |
| 4 | `instance` | [finite_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/finite-of-finite--d795455c24714eb30a28c4ac.md) | 51 | `declaration-track:d795455c24714eb30a28c4ac4ac845a5d4a103d1ec0fc1d044d5a00ef9957c39` |
| 5 | `lemma` | [finite_iff_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/finite-iff-of-finite--d3ad8c89937a1e7159c6dee7.md) | 55 | `result-track:d3ad8c89937a1e7159c6dee7149e48763203d1080811e1560e01d646f8dee6f0` |
| 6 | `lemma` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/card--f9d6e4645f6cf16bfc3f835c.md) | 68 | `result-track:f9d6e4645f6cf16bfc3f835c03d6ecac834ed17ce6045fb950befd982e204d72` |
| 7 | `lemma` | [card'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/card--af395f2b04e1ae41ce045196.md) | 90 | `result-track:af395f2b04e1ae41ce0451967bf080445bc97a2cd5cd439195894c77804eff3c` |
| 8 | `lemma` | [card''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/card--0927737dd9b1666bec8e97df.md) | 101 | `result-track:0927737dd9b1666bec8e97df4330ab2ee1232f8141c9a8db5718b62eac89c758` |
| 9 | `lemma` | [card_of_finrank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/card-of-finrank--260f5fa48007c8a0afea2dd2.md) | 106 | `result-track:260f5fa48007c8a0afea2dd2221f5427dda71b193c4009da6d161eda0caa91b5` |
| 10 | `lemma` | [card_of_finrank_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/declarations/card-of-finrank-two--178151a6f602adaaf863f777.md) | 128 | `result-track:178151a6f602adaaf863f777390e3f162710a11105a5bd1224e6ff3027540b2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
