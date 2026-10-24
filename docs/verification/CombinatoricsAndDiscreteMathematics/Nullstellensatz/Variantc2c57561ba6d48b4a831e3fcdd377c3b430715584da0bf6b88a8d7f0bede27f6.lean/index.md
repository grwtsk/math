# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nullstellensatz.Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9b6a543c689ef366f1d783ea3e2418b687303d6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9b6a543c689ef366f1d783ea3e2418b687303d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_eval_zero_at_prod_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/declarations/eq-zero-of-eval-zero-at-prod-finset--b7529a73d90e5f66fa2d1f71.md) | 75 | `result-track:b7529a73d90e5f66fa2d1f7156e87e6f97dcf8c01e8d7c46c7d6d64b718b58cc` |
| 2 | `def` | [Alon.P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/declarations/alon-p--ee876429b8d20f0674f270a3.md) | 158 | `declaration-track:ee876429b8d20f0674f270a329ae69d961460ab65d63ecd1d6eca385067584e8` |
| 3 | `theorem` | [Alon.degree_P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/declarations/alon-degree-p--bdf5dbe947b0d7443c9b50a9.md) | 163 | `result-track:bdf5dbe947b0d7443c9b50a9b47df1ba4021fc16fbb797b501eec18a2c009e73` |
| 4 | `theorem` | [Alon.monic_P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/declarations/alon-monic-p--57dd92c96280b0975a74962c.md) | 173 | `result-track:57dd92c96280b0975a74962c8912dc9162e1c8e4e96d739097089c8f2cc8a2ae` |
| 5 | `lemma` | [Alon.of_mem_P_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/declarations/alon-of-mem-p-support--198f5bdaa18a7e7be5909377.md) | 179 | `result-track:198f5bdaa18a7e7be5909377dbaf2714efaccf6f6b04a75c1ebc3e819dcb0039` |
| 6 | `theorem` | [combinatorial_nullstellensatz_exists_linearCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/declarations/combinatorial-nullstellensatz-exists-linearcombination--b9dc8ff699491c72c7022e54.md) | 213 | `result-track:b9dc8ff699491c72c7022e5434fcd00e45c110b139dd484fc015fc7595b19519` |
| 7 | `theorem` | [combinatorial_nullstellensatz_exists_eval_nonzero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/declarations/combinatorial-nullstellensatz-exists-eval-nonzero--a8aeee09ed3d589ec445be09.md) | 248 | `result-track:a8aeee09ed3d589ec445be090a51fd9c0ac419647751653456bd4e74c6977e88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
