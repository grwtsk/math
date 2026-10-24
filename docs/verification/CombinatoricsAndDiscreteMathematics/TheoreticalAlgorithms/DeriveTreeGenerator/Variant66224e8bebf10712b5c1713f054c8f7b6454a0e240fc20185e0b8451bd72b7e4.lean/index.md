# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeriveTreeGenerator.Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ed1c84520c8120515c2a00a4d0302bac3cb142d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ed1c84520c8120515c2a00a4d0302bac3cb142d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Plausible.Attr` — import line 1; external provider; requires a separately pinned dependency.
- `Plausible.Arbitrary` — import line 2; external provider; requires a separately pinned dependency.
- `Plausible.DeriveArbitrary` — import line 3; external provider; requires a separately pinned dependency.
- `Plausible.Testable` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean/declarations/tree--8f01ceb93b89c77b81e1b8c5.md) | 12 | `declaration-track:8f01ceb93b89c77b81e1b8c567d5c7aa795bfe73f4b8c344b0e0985db6d9e271` |
| 2 | `def` | [mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean/declarations/mirror--743d89d2c4090950db005fae.md) | 81 | `declaration-track:743d89d2c4090950db005faed23bb475aaacdce679af37a7fa2217e1ba25b7a4` |
| 3 | `def` | [shrinkTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean/declarations/shrinktree--297d20dd3c5b82cdba239ae5.md) | 88 | `declaration-track:297d20dd3c5b82cdba239ae54de1d271bb647b837990d8206ab263a2567ec6b4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveTreeGenerator/Variant66224e8bebf10712b5c1713f054c8f7b6454a0e240fc20185e0b8451bd72b7e4.lean/declarations/instance--5358c3cb7a1a643b57981ed9.md) | 98 | `declaration-track:5358c3cb7a1a643b57981ed921a89c7d6c066d1800d02ee60138039cf9236059` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
