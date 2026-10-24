# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BestFirst.Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77533d89600f1811bd4975b6e26a4cb9e6069c36",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77533d89600f1811bd4975b6e26a4cb9e6069c36`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.MLList.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bestFirstSearchAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean/declarations/bestfirstsearchaux--970f1689645a0d61c29768c6.md) | 53 | `declaration-track:970f1689645a0d61c29768c68d8590065775082feef1059dc9b33ef9d7e49100` |
| 2 | `def` | [bestFirstSearch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean/declarations/bestfirstsearch--5162cbc0ceebf179c2a2783b.md) | 88 | `declaration-track:5162cbc0ceebf179c2a2783b3b7cf9884cbdc739f8c3c2ed6ee529727a0d0d70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
