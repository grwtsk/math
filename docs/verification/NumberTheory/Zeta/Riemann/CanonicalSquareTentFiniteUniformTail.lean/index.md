# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteUniformTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05baed43db04e28bc3e1a142a8b5097b0d071bb8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05baed43db04e28bc3e1a142a8b5097b0d071bb8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_test_tail_uniform](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/declarations/finite-test-tail-uniform--7f95548de5a65e81a9630dbe.md) | 44 | `result-track:7f95548de5a65e81a9630dbe58cd042bfd442b59cc3d48a2fc86898ca3af609b` |
| 2 | `theorem` | [finite_test_signed_and_real_comparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/declarations/finite-test-signed-and-real-comparison--389cac08e69b1ae1f112066a.md) | 73 | `result-track:389cac08e69b1ae1f112066aa87ce094c39c78a8d81b0499ec890a32e0430f68` |
| 3 | `def` | [movingSpike](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/declarations/movingspike--5c11e3e1cc76084b3162df4f.md) | 94 | `declaration-track:5c11e3e1cc76084b3162df4f14b71d7822e45004ccbb81bfa433cf96b1638cf5` |
| 4 | `theorem` | [movingSpike_pointwise_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/declarations/movingspike-pointwise-vanishes--5512c2e76fe680629340db6e.md) | 98 | `result-track:5512c2e76fe680629340db6e7ef3e41bb4e41ce618f945955592a978282951a8` |
| 5 | `theorem` | [movingSpike_no_global_cutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/declarations/movingspike-no-global-cutoff--a6b1e0a50b4834ea6da100c3.md) | 108 | `result-track:a6b1e0a50b4834ea6da100c3f79d48c0336bbb73b61af418f3081d38ae5c9005` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
