# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flatten.Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4959dc0f48da8d7de5c7c9c4729ef121a748af6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4959dc0f48da8d7de5c7c9c4729ef121a748af6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.GCongr.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Sublist.flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean/declarations/sublist-flatten--06e2da6c4158a1be6f4a2b14.md) | 24 | `result-track:06e2da6c4158a1be6f4a2b1408e0c65a5366ed393234b593ab69ee4364370331` |
| 2 | `theorem` | [Sublist.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean/declarations/sublist-flatmap--cacec5b7dab2f50b6f2b6e8e.md) | 34 | `result-track:cacec5b7dab2f50b6f2b6e8ea85e787ed378f59f79c97c7436a63bd7e98913e0` |
| 3 | `theorem` | [drop_take_succ_eq_cons_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean/declarations/drop-take-succ-eq-cons-getelem--88062eb58a3d194e610120dc.md) | 44 | `result-track:88062eb58a3d194e610120dcd4cf05b2306e2f588ce976ddc4ddd0c34d74f1f3` |
| 4 | `theorem` | [append_flatten_map_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb.lean/declarations/append-flatten-map-append--c3d584f0bd876a5bafcd9ab6.md) | 55 | `result-track:c3d584f0bd876a5bafcd9ab6a63928c4ff3b934df2a7de7240b86fea9e960f33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
