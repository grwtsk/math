# Verification target: GRWTSK.NumberTheory.Moebius.RestrictedAdditiveMultiplicativeBridgeAudit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7acd5563474eb968475d20184aeb88fefb6b1b5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7acd5563474eb968475d20184aeb88fefb6b1b5`.

Source path: `GRWTSK/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.NormControlledAdditiveMultiplicativeBridge`](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RestrictedDifferenceSpace](../../../../mathematics/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/declarations/restricteddifferencespace--5384ef29ab7590448296d80e.md) | 18 | `declaration-track:5384ef29ab7590448296d80e0f8e8dafa2fd215681ed959527aa5a38d1892cac` |
| 2 | `def` | [HasRestrictedLowerFrameBound](../../../../mathematics/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/declarations/hasrestrictedlowerframebound--ace20834b5a8a8e8ba7090fe.md) | 24 | `declaration-track:ace20834b5a8a8e8ba7090fe4de544fcce9cb8a5507513774c12f010d7777216` |
| 3 | `theorem` | [not_hasRestrictedLowerFrameBound_of_admissibleKernel](../../../../mathematics/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/declarations/not-hasrestrictedlowerframebound-of-admissiblekernel--8983c01bbc8e43a5d4015170.md) | 35 | `result-track:8983c01bbc8e43a5d4015170aa049cf467ce0ebf30aab9ab8c74a8add9a1ef1c` |
| 4 | `theorem` | [ambientKernel_requires_admissibility](../../../../mathematics/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/declarations/ambientkernel-requires-admissibility--5510232cf4822fedac27eba2.md) | 63 | `result-track:5510232cf4822fedac27eba292ae95d9c58c349c254eef10d288d66e7c5e5ce2` |
| 5 | `structure` | [ActualArithmeticBridgeAvailability](../../../../mathematics/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/declarations/actualarithmeticbridgeavailability--a15906f3f207f6e5eb472d08.md) | 79 | `declaration-track:a15906f3f207f6e5eb472d08eecd58b901c5053726ebb90557d6f0a37d096294` |
| 6 | `def` | [ReconstructionResidual](../../../../mathematics/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/declarations/reconstructionresidual--6d88bb3c8a017e54f6e3e373.md) | 90 | `declaration-track:6d88bb3c8a017e54f6e3e373ac3b5a23786a304caecaef6b26288552ccfe4eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
