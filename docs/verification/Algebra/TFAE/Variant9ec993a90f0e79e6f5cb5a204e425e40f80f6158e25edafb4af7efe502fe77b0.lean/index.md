# Verification target: GRWTSK.Algebra.TFAE.Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ea80ce06a3b0967bfd51d9df335e40732a28981",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/index.md) · [Full source](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ea80ce06a3b0967bfd51d9df335e40732a28981`.

Source path: `GRWTSK/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Ideal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Cotangent` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximalIdeal_pow_eq_of_principal](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/declarations/exists-maximalideal-pow-eq-of-principal--45e97eea065256eaf96a9209.md) | 35 | `result-track:45e97eea065256eaf96a9209f798e34a028e810c1e06a90c7dcb68853e20078d` |
| 2 | `theorem` | [maximalIdeal_isPrincipal_of_isDedekindDomain](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/declarations/maximalideal-isprincipal-of-isdedekinddomain--b3a68af504336f2fc321e009.md) | 90 | `result-track:b3a68af504336f2fc321e009ff172c776c3ab3dc4b95ca120e99173fdc4df807` |
| 3 | `theorem` | [tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/declarations/tfae-of-isnoetherianring-of-islocalring-of-isdomain--84ea3c9d8aa29311d1a8ec06.md) | 163 | `result-track:84ea3c9d8aa29311d1a8ec06915c59298568aaa1e9a9497d52b058aa4a307193` |
| 4 | `theorem` | [IsDiscreteValuationRing.TFAE](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/declarations/isdiscretevaluationring-tfae--791a4ba3e8ec1e28ffebb3ab.md) | 205 | `result-track:791a4ba3e8ec1e28ffebb3abd85d8de70842dc644760c04204ce3de314b7a333` |
| 5 | `lemma` | [IsLocalRing.finrank_CotangentSpace_eq_one_iff](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/declarations/islocalring-finrank-cotangentspace-eq-one-iff--4308c104a6f0053bee616160.md) | 224 | `result-track:4308c104a6f0053bee6161608904410708cd45e1fca9f841b9c74c8ab5df7eb4` |
| 6 | `lemma` | [IsLocalRing.finrank_CotangentSpace_eq_one](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/declarations/islocalring-finrank-cotangentspace-eq-one--50849bc934d239b5d5a84e76.md) | 237 | `result-track:50849bc934d239b5d5a84e766b5e89b76c6a1bd4b0d00799304896b707c76637` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TFAE/Variant9ec993a90f0e79e6f5cb5a204e425e40f80f6158e25edafb4af7efe502fe77b0.lean/declarations/instance--d880ff2d0d2646605f940fe7.md) | 244 | `declaration-track:d880ff2d0d2646605f940fe73c66d55e69864a9bdc7c8afaf19f7953662a202d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
