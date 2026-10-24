# Verification target: GRWTSK.Analysis.Complex.SymmetricPairUnitTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c58f5cab5ebba880c91a9314aecea6665ca8ae1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/SymmetricPairUnitTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c58f5cab5ebba880c91a9314aecea6665ca8ae1`.

Source path: `GRWTSK/Analysis/Complex/SymmetricPairUnitTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/SymmetricPairUnitTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPairChannelChoice`](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitDeterminant](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/declarations/unitdeterminant--c7286f6548fc1cbc86d49e67.md) | 22 | `declaration-track:c7286f6548fc1cbc86d49e672e685418b1ac9e45cfda46bb53372a27fe595c0f` |
| 2 | `lemma` | [unitDeterminant_eq](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/declarations/unitdeterminant-eq--e94d1df8d029f64ba83b9741.md) | 25 | `result-track:e94d1df8d029f64ba83b9741ff9c6087472ef139c67a1f2a4f24096e1c4eb67e` |
| 3 | `lemma` | [unitDeterminant_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/declarations/unitdeterminant-ne-zero--9aca6625e2f71262bcec656b.md) | 32 | `result-track:9aca6625e2f71262bcec656bdee141feda9da76f5855d6f735c5a7391e772c6e` |
| 4 | `theorem` | [quotient_channels](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/declarations/quotient-channels--5ba7acf6689de62f6b6e79d5.md) | 38 | `result-track:5ba7acf6689de62f6b6e79d50d8c790531664a5c3a28068b2b4f7bee59e3ddae` |
| 5 | `theorem` | [quotient_zero_pair_iff](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/declarations/quotient-zero-pair-iff--f1918b7c2dd10a29dadc62e2.md) | 48 | `result-track:f1918b7c2dd10a29dadc62e26e34889dee8d0a993b6d39795e4b0a1daced7a3e` |
| 6 | `theorem` | [quotient_telescope](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/declarations/quotient-telescope--ba1e4f58b88ed36ca701aa5b.md) | 55 | `result-track:ba1e4f58b88ed36ca701aa5bad0f502a225a1668c2f9c5ea4631fb1ffefe79f8` |
| 7 | `theorem` | [energy_unit_comparison](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/declarations/energy-unit-comparison--5b981c6a373c1be283d6057a.md) | 59 | `result-track:5b981c6a373c1be283d6057a01018f0371b08e355f3f69423e396c9eb96a6f36` |
| 8 | `theorem` | [channels_of_endpoint_disks](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/declarations/channels-of-endpoint-disks--8fa39b4bcc0d6167338872b3.md) | 84 | `result-track:8fa39b4bcc0d6167338872b36d56ba3a67a3af746d050dc95dce02b15d84915b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
