# Verification target: GRWTSK.Topology.GeneralTopology.045SourceDualFourierJump.Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2783225b49518fa754a4265897652c0d868f87b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2783225b49518fa754a4265897652c0d868f87b`.

Source path: `GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sign` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signModulated](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/signmodulated--50d7966bc87660d1329b9d68.md) | 30 | `declaration-track:50d7966bc87660d1329b9d68109b13a899570542dfa5cc8384fcf01dbf6c2a68` |
| 2 | `theorem` | [no_continuous_ae_signModulated](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/no-continuous-ae-signmodulated--6e4f1009a550cc30cd010843.md) | 33 | `result-track:6e4f1009a550cc30cd010843c21fc855659f05004f7f29246e820577b7ab6689` |
| 3 | `theorem` | [no_continuous_ae_neg_signModulated](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/no-continuous-ae-neg-signmodulated--c7f912ef627c478a2f3a1659.md) | 50 | `result-track:c7f912ef627c478a2f3a1659be13e6fb4288fba547865e4ba12b61dbaa15eff8` |
| 4 | `def` | [standardSourceTransform](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/standardsourcetransform--d1f058ba84f7b7b33f651e01.md) | 60 | `declaration-track:d1f058ba84f7b7b33f651e01ec87458c1acd68be6671419f0f1603ecffaf4f76` |
| 5 | `theorem` | [standardSourceTransform_zero](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/standardsourcetransform-zero--c56ff91125c2c571fb0be841.md) | 64 | `result-track:c56ff91125c2c571fb0be841422857fa75fe9550fe74254b9e29c5f92e561dce` |
| 6 | `theorem` | [standardSourceTransform_zero_ne](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/standardsourcetransform-zero-ne--9101d5c7925592cd4bb469b8.md) | 76 | `result-track:9101d5c7925592cd4bb469b81295636e26b3ce7773de3d61c7f52a7ea96321c1` |
| 7 | `theorem` | [standardSourceTransform_continuous](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/standardsourcetransform-continuous--ff0c5158d7e3975c1adbadce.md) | 85 | `result-track:ff0c5158d7e3975c1adbadce13121f6e596e029c9ba2dd7901d83cc1b50f57f8` |
| 8 | `theorem` | [actual_source_spectral_jump](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/actual-source-spectral-jump--1907a449814a4bf1ee366b50.md) | 94 | `result-track:1907a449814a4bf1ee366b50cf54e1c1755d57761379023750827060f297cab7` |
| 9 | `theorem` | [actual_source_negative_spectral_jump](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/actual-source-negative-spectral-jump--47058d9020e00ec93385a272.md) | 101 | `result-track:47058d9020e00ec93385a272e8ab298162d232d02a252780f92741d386386bca` |
| 10 | `theorem` | [no_integrable_fourier_sign_source](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/no-integrable-fourier-sign-source--793ea68d9468d2eaffde31b7.md) | 108 | `result-track:793ea68d9468d2eaffde31b7aa53914e82442ef5798a75e54c94f2ae181175e2` |
| 11 | `theorem` | [no_continuous_compact_fourier_sign_source](../../../../../mathematics/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/declarations/no-continuous-compact-fourier-sign-source--f1f328558573b908d5737122.md) | 118 | `result-track:f1f328558573b908d573712251864d6a6783bfa6b47e0c3538f5ddd96a103892` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
