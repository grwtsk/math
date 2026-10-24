# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Accumulate.Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17648b86f39fcd60300279bb61086e329fc17ede",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17648b86f39fcd60300279bb61086e329fc17ede`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/declarations/accumulate--6ce914f8e2e829379fa52dd6.md) | 30 | `declaration-track:6ce914f8e2e829379fa52dd6598f6f157dbe1980bea423cd080854eb98cc7b01` |
| 2 | `theorem` | [accumulate_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/declarations/accumulate-def--aeb55e7c67041bdee795bef6.md) | 34 | `result-track:aeb55e7c67041bdee795bef69bce31a2bb7e3acc966619679025c00198a0584d` |
| 3 | `theorem` | [mem_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/declarations/mem-accumulate--b4765ac3f9a99794e5fd1be8.md) | 39 | `result-track:b4765ac3f9a99794e5fd1be8dd9539c65d144a1af7aded76680e31c27d930165` |
| 4 | `theorem` | [subset_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/declarations/subset-accumulate--e86e7aa762ff21e1961bcdf1.md) | 43 | `result-track:e86e7aa762ff21e1961bcdf17819fdd2b87f038f26f395ba093b0a5e6cb637d7` |
| 5 | `theorem` | [monotone_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/declarations/monotone-accumulate--f61dae258c1ec94e746f2fd9.md) | 46 | `result-track:f61dae258c1ec94e746f2fd928b08d626c272e59237e1463535335f7e2e1a050` |
| 6 | `theorem` | [biUnion_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/declarations/biunion-accumulate--4373e422251e62be52d421cc.md) | 50 | `result-track:4373e422251e62be52d421cc530fa45b57f3592b25f761a73b51e73953e3a56f` |
| 7 | `theorem` | [iUnion_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variantf6928cc896957b18654b619a7c6166a9845db112882496fa13925c83a92d269d.lean/declarations/iunion-accumulate--4b3fd04510ae8c6d63ca99a4.md) | 56 | `result-track:4b3fd04510ae8c6d63ca99a495353b18295aa960f561e474aef9ec4294a3c223` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
