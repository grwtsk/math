# Verification target: GRWTSK.Algebra.PrimePhaseChord.Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb391b18ffbe7b932659948335d67d7e0a289969",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb391b18ffbe7b932659948335d67d7e0a289969`.

Source path: `GRWTSK/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PrimePhaseGeometry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Round` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chord](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/chord--8217eff3cac3c744fb97c28f.md) | 16 | `declaration-track:8217eff3cac3c744fb97c28f102051bbbd291ce5c44b13b097091885f11010b1` |
| 2 | `theorem` | [chord_nonnegative](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/chord-nonnegative--7ea258d0b1dc1275e7b205c5.md) | 18 | `result-track:7ea258d0b1dc1275e7b205c5ee2a78708dd86cbcdff9096adb955d72944f7d50` |
| 3 | `theorem` | [chord_neg](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/chord-neg--2959234c172ee5f7d31c086c.md) | 20 | `result-track:2959234c172ee5f7d31c086cd140998389efe6f7c5905b88a1fa592f48f3fd54` |
| 4 | `theorem` | [chord_period](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/chord-period--f382905629556e23e34d432c.md) | 25 | `result-track:f382905629556e23e34d432cdeea9cc160901e8b9f161d661da2b79f3a45fd11` |
| 5 | `theorem` | [chord_lower_on_pi](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/chord-lower-on-pi--90204668955de941f5263b53.md) | 33 | `result-track:90204668955de941f5263b53a1fe8fb12a75aa1b23031918a6049fb9477eb5c6` |
| 6 | `theorem` | [residual_paid_by_chord](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/residual-paid-by-chord--a5537b64e21108df213bd027.md) | 50 | `result-track:a5537b64e21108df213bd02763641600de7686cb2e4c9ead402f4a5f376d23be` |
| 7 | `theorem` | [phase_distance_sq_chords](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/phase-distance-sq-chords--5e037268eb4abb180818857a.md) | 55 | `result-track:5e037268eb4abb180818857a7bf52f12567daad82ef16acdbe47be241c7f78cb` |
| 8 | `def` | [nearest](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/nearest--24eadde254091b83a3da8124.md) | 63 | `declaration-track:24eadde254091b83a3da8124612dacf96d991fac606fd1d4a0379b144a4c8bb0` |
| 9 | `def` | [residual](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/residual--73528eb0f76b4b085e2ecc65.md) | 65 | `declaration-track:73528eb0f76b4b085e2ecc6596b80100f80ca57ad539617d7709fda8c03ac0cb` |
| 10 | `theorem` | [nearest_residual](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/nearest-residual--0c4118e5ad4d08c291a61435.md) | 67 | `result-track:0c4118e5ad4d08c291a6143567118a7807d287bf29622ec52a585fccd0ae231b` |
| 11 | `theorem` | [nearest_size](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/nearest-size--2de0fa0cc46f458cc72e8115.md) | 77 | `result-track:2de0fa0cc46f458cc72e81159d293218e4759933a79c9abfde9e97129df712c1` |
| 12 | `theorem` | [residual_chord](../../../../mathematics/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/declarations/residual-chord--48b777e6d29a76ccb64b2229.md) | 85 | `result-track:48b777e6d29a76ccb64b22298f7a67b78db6cc2a724d8d85f19cf2c8f9b73cd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
