# Verification target: GRWTSK.Topology.GeneralTopology.ApproximateUnit.Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a81c25e7957df3b2497a624aec5e29c9c09a8ba1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a81c25e7957df3b2497a624aec5e29c9c09a8ba1`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Monoid` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filter.IsApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean/declarations/filter-isapproximateunit--d09a6c8af2d77052a7eff68a.md) | 33 | `declaration-track:d09a6c8af2d77052a7eff68a60a47d09b0f9eb848b8fe5f3a40ea4b700cb2f36` |
| 2 | `lemma` | [pure_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean/declarations/pure-one--c24c9a3c5ef66f21c0784531.md) | 50 | `result-track:c24c9a3c5ef66f21c078453107c19f6473e89cbc278e21ec0f6d737fab46ed9f` |
| 3 | `lemma` | [mono](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean/declarations/mono--373721d54129c5a9e7d07782.md) | 56 | `result-track:373721d54129c5a9e7d07782fb88d2a254f7e92f94dd63bbf506648e1d494f68` |
| 4 | `lemma` | [nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean/declarations/nhds-one--7bd0812375b2dae94c63628d.md) | 63 | `result-track:7bd0812375b2dae94c63628d1c022148e8c9b469e56dff0f765195f45b6f40ab` |
| 5 | `lemma` | [iff_neBot_and_le_nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean/declarations/iff-nebot-and-le-nhds-one--0881071eaf820598e9e22025.md) | 68 | `result-track:0881071eaf820598e9e220252fe43fc577b6a08d36a38e16783e3b8aeb5714a3` |
| 6 | `lemma` | [iff_le_nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant8b4b75c889fdbf2a9e1cdfb8ec43ecb996b5e344366701daecb1e944c8e49a25.lean/declarations/iff-le-nhds-one--e668c3881bead8d2e18c103c.md) | 74 | `result-track:e668c3881bead8d2e18c103c4c2ffbd4fef3f54b58f80fa46dd900177b4e80db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
