# Verification target: GRWTSK.Algebra.LinearAlgebra.SpectralConditioning.Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b5626c699e0574f7ef3e0302e0924afff1c2bdb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b5626c699e0574f7ef3e0302e0924afff1c2bdb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralConditioningModulus](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean/declarations/spectralconditioningmodulus--baac868df194e38e235eb9df.md) | 30 | `declaration-track:baac868df194e38e235eb9dfc57e8f06bf1fda0f69a508c3232311a3aaa7d878` |
| 2 | `theorem` | [exact_spectral_distance_zero](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean/declarations/exact-spectral-distance-zero--4b8db51679d78ad603ad6659.md) | 47 | `result-track:4b8db51679d78ad603ad665955f76da2448a11a352536589a5a3a973761985cc` |
| 3 | `structure` | [JordanOrderCertificate](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean/declarations/jordanordercertificate--57478473416c7a89093d1123.md) | 60 | `declaration-track:57478473416c7a89093d11239e7889556817a4c06236870363b10a39c71c5e61` |
| 4 | `structure` | [JordanSensitiveObservable](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean/declarations/jordansensitiveobservable--356cabe460aa3452bae1aa9c.md) | 72 | `declaration-track:356cabe460aa3452bae1aa9caec284e8fcf379ef3364191ed84ff0e47a5880e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
