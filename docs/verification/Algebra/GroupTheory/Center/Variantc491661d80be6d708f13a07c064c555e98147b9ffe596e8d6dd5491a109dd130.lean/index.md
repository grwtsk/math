# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efaa0302a65ed9b4db4ac8ff491078f7db7b6f83",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efaa0302a65ed9b4db4ac8ff491078f7db7b6f83`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Center` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natCast_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/declarations/natcast-mem-center--9f50945204e75932d7e0fef0.md) | 23 | `result-track:9f50945204e75932d7e0fef024b69db77373bf85a93dfa37a8df0d8216cfd9ae` |
| 2 | `theorem` | [ofNat_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/declarations/ofnat-mem-center--41813477b1f78be7271884dd.md) | 39 | `result-track:41813477b1f78be7271884dd121222dc4e65cf2cb17d06a5c2e68b11b26cde78` |
| 3 | `theorem` | [intCast_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/declarations/intcast-mem-center--7f6fd4efc5c958814498de10.md) | 44 | `result-track:7f6fd4efc5c958814498de10c4870bb451a012fc469e7a4c864c1a3404d4bcd8` |
| 4 | `theorem` | [add_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/declarations/add-mem-center--2fd235dc2e643b857defafd7.md) | 70 | `result-track:2fd235dc2e643b857defafd7c4231e9fd32c9096b3d9ab9d757bdce13066a8bd` |
| 5 | `theorem` | [neg_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/declarations/neg-mem-center--347bef73991fea5108a8f847.md) | 78 | `result-track:347bef73991fea5108a8f847c57130d455dd66de9214996407d4a7c024524763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
