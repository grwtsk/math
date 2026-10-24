# Verification target: GRWTSK.Analysis.StoneSeparation.Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63ea39594b53779486abc4695c6c90f4d9b0eb30",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean/index.md) · [Full source](../../../../mathematics/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63ea39594b53779486abc4695c6c90f4d9b0eb30`.

Source path: `GRWTSK/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Join` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_disjoint_segment_convexHull_triple](../../../../mathematics/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean/declarations/not-disjoint-segment-convexhull-triple--0c182e89857c26849d7d39a0.md) | 37 | `result-track:0c182e89857c26849d7d39a07cdee66591345d846954079932cd7b1ba4e11f39` |
| 2 | `theorem` | [exists_convex_convex_compl_subset](../../../../mathematics/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean/declarations/exists-convex-convex-compl-subset--26fd83326ad7ad1cde14c344.md) | 82 | `result-track:26fd83326ad7ad1cde14c3445e7501d91fe85aaaa15c88542d5db768507be489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
