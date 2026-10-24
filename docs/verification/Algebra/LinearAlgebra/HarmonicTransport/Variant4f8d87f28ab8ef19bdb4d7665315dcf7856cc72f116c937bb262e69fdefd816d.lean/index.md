# Verification target: GRWTSK.Algebra.LinearAlgebra.HarmonicTransport.Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d67b50e93e14853e1927b3cb7419feb50d04b32f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HarmonicTransport/Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HarmonicTransport/Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HarmonicTransport/Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d67b50e93e14853e1927b3cb7419feb50d04b32f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HarmonicTransport/Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HarmonicTransport/Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fold.ChainMap` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Heat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHarmonic](../../../../../mathematics/Algebra/LinearAlgebra/HarmonicTransport/Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d.lean/declarations/isharmonic--d7701b1d61f5d847fe159593.md) | 28 | `declaration-track:d7701b1d61f5d847fe159593e77d24e609f1d067b2048b732e6c38a5ac993c27` |
| 2 | `theorem` | [fold_preserves_harmonicSubspace](../../../../../mathematics/Algebra/LinearAlgebra/HarmonicTransport/Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d.lean/declarations/fold-preserves-harmonicsubspace--2df7a19d8e1063db1366f70b.md) | 34 | `result-track:2df7a19d8e1063db1366f70bdd3f45d0c79ed3ecb56a8c72ee1fa7e47a6097f7` |
| 3 | `theorem` | [fold_intertwines_diffuser](../../../../../mathematics/Algebra/LinearAlgebra/HarmonicTransport/Variant4f8d87f28ab8ef19bdb4d7665315dcf7856cc72f116c937bb262e69fdefd816d.lean/declarations/fold-intertwines-diffuser--4214a999c16295c5a52db68c.md) | 46 | `result-track:4214a999c16295c5a52db68c27bf533d6c18e6db8c23e0e0c8ca43792a1ad391` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
