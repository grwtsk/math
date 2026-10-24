# Verification target: GRWTSK.Algebra.BocksteinExtension.Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "595a0a24454dbb57fb0b8fee1589133863cb303c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BocksteinExtension/Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BocksteinExtension/Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8.lean/index.md) · [Full source](../../../../mathematics/Algebra/BocksteinExtension/Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `595a0a24454dbb57fb0b8fee1589133863cb303c`.

Source path: `GRWTSK/Algebra/BocksteinExtension/Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BocksteinExtension/Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.Rounding` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Exact.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BocksteinExtension](../../../../mathematics/Algebra/BocksteinExtension/Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8.lean/declarations/bocksteinextension--1827d48c922babaab6e482b2.md) | 16 | `declaration-track:1827d48c922babaab6e482b20f6a6d16fa03b023b45967760480a7db32b452c8` |
| 2 | `theorem` | [bockstein_include_zero](../../../../mathematics/Algebra/BocksteinExtension/Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8.lean/declarations/bockstein-include-zero--8f82768a96bbd53176f75a72.md) | 39 | `result-track:8f82768a96bbd53176f75a721b494ee1f04f20388127467294652e6a1790f96e` |
| 3 | `theorem` | [difference_lifts_from_torus](../../../../mathematics/Algebra/BocksteinExtension/Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8.lean/declarations/difference-lifts-from-torus--0c7373b9a1de9d9437161c4f.md) | 44 | `result-track:0c7373b9a1de9d9437161c4f56bd1a1e67c17bfdad9fdb78b7fce45864e7e7f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
