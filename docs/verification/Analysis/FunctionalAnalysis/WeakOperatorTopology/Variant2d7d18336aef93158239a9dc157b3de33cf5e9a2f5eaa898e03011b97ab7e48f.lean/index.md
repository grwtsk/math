# Verification target: GRWTSK.Analysis.FunctionalAnalysis.WeakOperatorTopology.Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29ec80a409d577eba2b46202321ae547c35fd9f7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29ec80a409d577eba2b46202321ae547c35fd9f7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WeakOperatorTopology` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ext_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f.lean/declarations/ext-inner--715379cdd916b8c01d10e07d.md) | 26 | `result-track:715379cdd916b8c01d10e07d0cd64ca7cb6f5d13e7350cbad04493027aaffb13` |
| 2 | `lemma` | [tendsto_iff_forall_inner_apply_tendsto](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f.lean/declarations/tendsto-iff-forall-inner-apply-tendsto--0afa0e3acd8f51d34484e836.md) | 33 | `result-track:0afa0e3acd8f51d34484e8368e76717fe4874bdce640225af28902ca939dc8c9` |
| 3 | `lemma` | [le_nhds_iff_forall_inner_apply_le_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant2d7d18336aef93158239a9dc157b3de33cf5e9a2f5eaa898e03011b97ab7e48f.lean/declarations/le-nhds-iff-forall-inner-apply-le-nhds--4e54f05b7eaa814b69e88274.md) | 40 | `result-track:4e54f05b7eaa814b69e88274290fa493877517a65dbc2d2803b2f58b51994b89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
