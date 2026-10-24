# Verification target: GRWTSK.Algebra.Symm.Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7597aa58a597a03cd1a1e5134291bb700311deb8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7597aa58a597a03cd1a1e5134291bb700311deb8`.

Source path: `GRWTSK/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eq_symm](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/eq-symm--b0e2d09e697910f48a478b7e.md) | 14 | `declaration-track:b0e2d09e697910f48a478b7e6a3bf94a2a2f63626b679a4ebe3e26e59f12ce8e` |
| 2 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/example--5f3690a53b58254baa9b3c14.md) | 16 | `declaration-track:5f3690a53b58254baa9b3c143ee9d93321dc3a7631312d0e622780a65df1ebb0` |
| 3 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/example--5016b88e7f2e925c1bf8ebfe.md) | 17 | `declaration-track:5016b88e7f2e925c1bf8ebfef8d36679701bbc36bed8a62899c1233f969fe22c` |
| 4 | `def` | [sameParity](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/sameparity--f4c0a7f2bb7b664e4ce6a1d8.md) | 19 | `declaration-track:f4c0a7f2bb7b664e4ce6a1d88445f28bac8ab43dfa38b599c9bf5269fb3086b2` |
| 5 | `def` | [sameParity_symm](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/sameparity-symm--89a16c7a6fa1ca43cab9b43b.md) | 22 | `declaration-track:89a16c7a6fa1ca43cab9b43b5c4b14eedad50597677f3abba44015449ae33f63` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/example--da61946284a56cd4957cd0fc.md) | 24 | `declaration-track:da61946284a56cd4957cd0fca945b84121bd790b52ebbbc8c68e630fa42d1cfa` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/example--886b00f14e7f98920d403263.md) | 27 | `declaration-track:886b00f14e7f98920d4032632283b2184d4b908ad117e45d35caa1fff6249de1` |
| 8 | `structure` | [MulEquiv](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/mulequiv--f6ef0275481dcaa349ba80a2.md) | 34 | `declaration-track:f6ef0275481dcaa349ba80a2b045349da03f8543348f4ae8e782ca76229805ce` |
| 9 | `def` | [foo_symm](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/foo-symm--8fec3f15e75e984606f5746d.md) | 43 | `declaration-track:8fec3f15e75e984606f5746d94693f20f97beefa13fce2b21abdb394f3394d7c` |
| 10 | `def` | [MyEq](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/myeq--3c7556185d4304cef81ada5c.md) | 47 | `declaration-track:3c7556185d4304cef81ada5c9028f989c7d452b4d2f52b84584a53a969d7306b` |
| 11 | `lemma` | [MyEq.symm](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/myeq-symm--90f04b2e71a5fc229c17cec2.md) | 49 | `result-track:90f04b2e71a5fc229c17cec2d7dbfd16f9c0665ca686e765a169d25d3abfceb3` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant2af032f49afd1bbd6f378bfc7b41028360a228154dfd2634daa112bcb8c43a25.lean/declarations/example--435aca7e11ee8f5c56065dab.md) | 53 | `declaration-track:435aca7e11ee8f5c56065daba119d41a58c846bf4ae61c5efaafbfe6376db5ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
