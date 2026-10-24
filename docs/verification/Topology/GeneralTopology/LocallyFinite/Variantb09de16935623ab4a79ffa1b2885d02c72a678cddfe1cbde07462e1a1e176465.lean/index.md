# Verification target: GRWTSK.Topology.GeneralTopology.LocallyFinite.Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51f8d39e22c2b5b5b929065f6c203725fd4962f1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51f8d39e22c2b5b5b929065f6c203725fd4962f1`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocallyFinite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_nonempty_inter_compact](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/declarations/finite-nonempty-inter-compact--caf10489f9f787f99c5354d9.md) | 22 | `result-track:caf10489f9f787f99c5354d9c0ab89610340349e9ca8420926551dcdd82cffad` |
| 2 | `theorem` | [finite_nonempty_of_compact](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/declarations/finite-nonempty-of-compact--f43fb345fc27b2f4a3c7fe5b.md) | 33 | `result-track:f43fb345fc27b2f4a3c7fe5b1aabda7f63c62ef6356456dda2eac37b4890ce56` |
| 3 | `theorem` | [finite_of_compact](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/declarations/finite-of-compact--de62cc2ac4439ac24adc13f7.md) | 39 | `result-track:de62cc2ac4439ac24adc13f74342338e2ec1cc6eadadc55bb9344963e2cf6f9f` |
| 4 | `def` | [fintypeOfCompact](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/declarations/fintypeofcompact--6d55477ff7f3725651caf1d5.md) | 45 | `declaration-track:6d55477ff7f3725651caf1d5e3bdef4cd8bd5d43e767c982ae184aac57812056` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
