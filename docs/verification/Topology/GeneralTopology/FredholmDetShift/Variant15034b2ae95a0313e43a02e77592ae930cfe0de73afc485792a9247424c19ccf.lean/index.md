# Verification target: GRWTSK.Topology.GeneralTopology.FredholmDetShift.Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c3eac756cd6d3d081d523017134232781c14964",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c3eac756cd6d3d081d523017134232781c14964`.

Source path: `GRWTSK/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fredholm` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Endo](../../../../../mathematics/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/declarations/endo--c14714cbd2d64abb3c46d138.md) | 22 | `declaration-track:c14714cbd2d64abb3c46d1389089413e7ebf15692bf1eece0c259e52dfc3247f` |
| 2 | `def` | [shiftOp](../../../../../mathematics/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/declarations/shiftop--d12e474e63295ae2c9501fe6.md) | 35 | `declaration-track:d12e474e63295ae2c9501fe61fb46a20d3b8507df19a939bb127e8d443b13c69` |
| 3 | `lemma` | [shiftOp_continuous](../../../../../mathematics/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/declarations/shiftop-continuous--c4539ba5e06c183cd347f914.md) | 39 | `result-track:c4539ba5e06c183cd347f914757a10216b04b3479facf49360554dabd23b6cfa` |
| 4 | `def` | [shift](../../../../../mathematics/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/declarations/shift--2e1fa416e3480a0d8ec468bf.md) | 46 | `declaration-track:2e1fa416e3480a0d8ec468bfd88a770c7603157950d86a43cec174f8afbcbe8b` |
| 5 | `lemma` | [shift_zero_iff](../../../../../mathematics/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/declarations/shift-zero-iff--abb08c1eb2fa88d44f47b2b9.md) | 57 | `result-track:abb08c1eb2fa88d44f47b2b968093c3e1918501965966115b8c2f391a8dbc984` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
