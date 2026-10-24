# Verification target: GRWTSK.Algebra.QuarticCubicResidueSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a231eb29d6d21c38dedb011286c15be508b7a9a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticCubicResidueSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticCubicResidueSeparation.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticCubicResidueSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a231eb29d6d21c38dedb011286c15be508b7a9a`.

Source path: `GRWTSK/Algebra/QuarticCubicResidueSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticCubicResidueSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticCubicDiscriminantReduction`](../../../mathematics/Algebra/QuarticCubicDiscriminantReduction.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.FieldTheory.Separable` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjacencyCubic_roots_nodup_of_discr_ne_zero](../../../mathematics/Algebra/QuarticCubicResidueSeparation.lean/declarations/adjacencycubic-roots-nodup-of-discr-ne-zero--56c84755e5e99020041a4ebb.md) | 27 | `result-track:56c84755e5e99020041a4ebb6ebb83d1d52c04a0a3e994dbd9f0cd417d9d6b5f` |
| 2 | `theorem` | [adjacencyCubic_roots_nodup_of_vandermonde_ne_zero](../../../mathematics/Algebra/QuarticCubicResidueSeparation.lean/declarations/adjacencycubic-roots-nodup-of-vandermonde-ne-zero--5f34449f3b0983a4ec3570fb.md) | 40 | `result-track:5f34449f3b0983a4ec3570fb2ef75a79d3c0ec86c458735d86db98719783eec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
