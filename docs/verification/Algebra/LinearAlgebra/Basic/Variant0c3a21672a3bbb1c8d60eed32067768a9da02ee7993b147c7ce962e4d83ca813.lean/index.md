# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "904021f1e90e2e69c40d2242cce6c0761ca9be55",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `904021f1e90e2e69c40d2242cce6c0761ca9be55`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Algebra` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BoolMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/declarations/boolmatrix--f3fb66121da50b1db044187c.md) | 11 | `declaration-track:f3fb66121da50b1db044187cd4a0ac47c553e5c8768e30d39a0fd7f8b920fb6c` |
| 2 | `def` | [BoolMatrix.entry](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/declarations/boolmatrix-entry--c84ccd1dd2fe247f2aaf69ad.md) | 15 | `declaration-track:c84ccd1dd2fe247f2aaf69ad7ad1ddc3c3959c29ef305e65b93fa733ae0fc03d` |
| 3 | `def` | [BoolMatrix.row](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/declarations/boolmatrix-row--42a75524e48b73fdbb0d7d85.md) | 23 | `declaration-track:42a75524e48b73fdbb0d7d85598594dcd5a54b84756ee6f17587d3419f220efa` |
| 4 | `def` | [BoolMatrix.col](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/declarations/boolmatrix-col--e806f6fe0f02d110ed2520e1.md) | 30 | `declaration-track:e806f6fe0f02d110ed2520e16814b96e778f95672fd9005ba90d99e3395c98d8` |
| 5 | `theorem` | [BoolMatrix.entry_eq_false_or_true](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/declarations/boolmatrix-entry-eq-false-or-true--3f7e4f674bea775e1fe1760a.md) | 37 | `result-track:3f7e4f674bea775e1fe1760a1e07c76a779f0abe51835f0f55a4d3a043f814a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
