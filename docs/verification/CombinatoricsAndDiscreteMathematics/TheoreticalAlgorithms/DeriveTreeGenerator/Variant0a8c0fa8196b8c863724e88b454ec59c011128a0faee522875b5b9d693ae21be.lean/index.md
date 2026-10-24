# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeriveTreeGenerator.Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9bcbcf1edec5e1290a19e3fe6627a65ddcd5899",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9bcbcf1edec5e1290a19e3fe6627a65ddcd5899`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Plausible.Attr` — import line 6; external provider; requires a separately pinned dependency.
- `Plausible.Arbitrary` — import line 7; external provider; requires a separately pinned dependency.
- `Plausible.DeriveArbitrary` — import line 8; external provider; requires a separately pinned dependency.
- `Plausible.Testable` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean/declarations/tree--91a40804408c1c49f832b021.md) | 20 | `declaration-track:91a40804408c1c49f832b02119d9b999e63fdcc11f5f1694a0cfd1d5c831a063` |
| 2 | `def` | [mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean/declarations/mirror--89242ff950447f57104f4132.md) | 89 | `declaration-track:89242ff950447f57104f413261b49eb872df2c0c3ec5d04281e8f2b9c7401351` |
| 3 | `def` | [shrinkTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean/declarations/shrinktree--d0877678e3fc407217b2ca5a.md) | 96 | `declaration-track:d0877678e3fc407217b2ca5a08477d8c42107761c34673ca0c27b62459a31998` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant0a8c0fa8196b8c863724e88b454ec59c011128a0faee522875b5b9d693ae21be.lean/declarations/instance--88a299c58f745b9c1812d1cb.md) | 106 | `declaration-track:88a299c58f745b9c1812d1cb6d483ddfe4339188d1df7e2b3a5e7dbe9b5ea602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
