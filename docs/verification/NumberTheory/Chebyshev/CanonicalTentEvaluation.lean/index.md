# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fb43bafae3c904f7934359c58d57b6cea10b878",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fb43bafae3c904f7934359c58d57b6cea10b878`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.EnclosedZeroInventory`](../../../../mathematics/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkWithin](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean/declarations/checkwithin--d90bf5462bfc37dbcb960b1f.md) | 30 | `declaration-track:d90bf5462bfc37dbcb960b1f101f9f4205f9033b9bc37e2af0c6f11227c10a38` |
| 2 | `theorem` | [checkWithin_sound](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean/declarations/checkwithin-sound--896318c8429242db8f26a871.md) | 36 | `result-track:896318c8429242db8f26a871a827ce2ebdf811af440059d336f34832733632e8` |
| 3 | `theorem` | [checkWithin_sound_of_count_upper](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean/declarations/checkwithin-sound-of-count-upper--f035b1e0bb70f6467fe5d168.md) | 75 | `result-track:f035b1e0bb70f6467fe5d168df0135c33ae07be6210636b4818d00e2b85eabbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
