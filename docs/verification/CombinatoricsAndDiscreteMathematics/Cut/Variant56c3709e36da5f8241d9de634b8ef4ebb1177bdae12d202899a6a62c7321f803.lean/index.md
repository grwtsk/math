# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cut.Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61112ec064ac0a56a1c2313a65c2311a12b0d3f9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61112ec064ac0a56a1c2313a65c2311a12b0d3f9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Carrier` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean/declarations/primecut--7e38a932ec34b36d33ea6505.md) | 18 | `declaration-track:7e38a932ec34b36d33ea65059246d9ece5c33d76f3d4e9855efce5dcf98cc080` |
| 2 | `def` | [topCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean/declarations/topcut--41b762d1e860a1a40b37692b.md) | 22 | `declaration-track:41b762d1e860a1a40b37692b3633c3cf8f5dd5f9a869645ac096b4297e24bfc3` |
| 3 | `def` | [cutDepth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean/declarations/cutdepth--999d6e16205ef5da07b09949.md) | 27 | `declaration-track:999d6e16205ef5da07b09949337e953d155fdf31a78d41fe524bcdd87c80e171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
