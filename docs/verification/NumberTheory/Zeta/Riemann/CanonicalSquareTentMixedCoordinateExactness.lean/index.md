# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateExactness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9155109556059541638be90b28b2b075f715600",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateExactness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateExactness.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateExactness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9155109556059541638be90b28b2b075f715600`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateExactness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateExactness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateRepair.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mixedCoordinate_degenerate_collision](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateExactness.lean/declarations/mixedcoordinate-degenerate-collision--933fcae1bbf7e6cb54faac51.md) | 36 | `result-track:933fcae1bbf7e6cb54faac51064bc90b9eca8288a50d657fe5a093c0bdf30b67` |
| 2 | `theorem` | [mixedCoordinate_not_injective_of_degenerate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateExactness.lean/declarations/mixedcoordinate-not-injective-of-degenerate--e8145f95a01037ec5d817204.md) | 48 | `result-track:e8145f95a01037ec5d81720419e7c04cc248422f029ccbc40bf8e61d37ca7f2c` |
| 3 | `theorem` | [mixedCoordinate_injective_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateExactness.lean/declarations/mixedcoordinate-injective-iff--6bb010a9b21627a8d52c8024.md) | 59 | `result-track:6bb010a9b21627a8d52c8024d979215b58b07d436523f3211fd4f822a088749a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
