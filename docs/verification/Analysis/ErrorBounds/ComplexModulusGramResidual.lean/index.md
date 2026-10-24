# Verification target: GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f2ce40a11d73bb68f0793b49f2d3d470b63396",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f2ce40a11d73bb68f0793b49f2d3d470b63396`.

Source path: `GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/ComplexModulusGramResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.HermitianGramRealification`](../../../../mathematics/Analysis/ErrorBounds/HermitianGramRealification.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modulusMass](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/modulusmass--55d752bab097fe6e33718b44.md) | 43 | `declaration-track:55d752bab097fe6e33718b4408ec5b9062229ef7299cfc566860dccb207db92e` |
| 2 | `theorem` | [modulusMass_nonnegative](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/modulusmass-nonnegative--6e3fe350a6d2b784221bca1f.md) | 46 | `result-track:6e3fe350a6d2b784221bca1f6bdee47047544db42608ef1ed00659ae2c04de48` |
| 3 | `theorem` | [modulusMass_add_le](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/modulusmass-add-le--a1c1353bacbb0ebd368f5650.md) | 51 | `result-track:a1c1353bacbb0ebd368f5650f56a7decc0caed78c4fdd9cfaf17ff2c32963a50` |
| 4 | `theorem` | [rectangular_modulus_bound](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/rectangular-modulus-bound--e3d4926e4b395b17a0dbefed.md) | 63 | `result-track:e3d4926e4b395b17a0dbefed111211567496420434bbdc4b2692aed364060955` |
| 5 | `def` | [conjugateLift](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/conjugatelift--be5f836e107498c928c2b02b.md) | 88 | `declaration-track:be5f836e107498c928c2b02b84866868994ab20ef2ad87e583bceaa56e6ca7ca` |
| 6 | `theorem` | [complexTransport_eq_lift](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/complextransport-eq-lift--2fb7f6a29f147b344dc9390f.md) | 93 | `result-track:2fb7f6a29f147b344dc9390f59eca55d2ad5ef04f0d3cb252fbe11e5e04f61b3` |
| 7 | `theorem` | [modulus_lift_column_factorization](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/modulus-lift-column-factorization--bbf5d0730e937a13c8de1797.md) | 104 | `result-track:bbf5d0730e937a13c8de179799df6034c1c82d8088a294e674caa464f57c5afc` |
| 8 | `theorem` | [modulus_lift_column_bound](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/modulus-lift-column-bound--1689930f5790dc960da8a7fe.md) | 119 | `result-track:1689930f5790dc960da8a7fe10bee1a27dfb6c02570509208c01787b563329b7` |
| 9 | `theorem` | [readout_modulus_bound](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/readout-modulus-bound--e2a6a7618f259206d158eae4.md) | 136 | `result-track:e2a6a7618f259206d158eae4f88c42ebb7a18f47da50e80d1165ef71eacbaa5f` |
| 10 | `theorem` | [readout_with_tail_bound](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/readout-with-tail-bound--6baa8ba361c57104dd67956e.md) | 155 | `result-track:6baa8ba361c57104dd67956e8fa0e72b56d334033ba739dd3de1e025cdeb653f` |
| 11 | `theorem` | [complex_residual_evolution](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/complex-residual-evolution--6c7886eee7b781ea1e731f3c.md) | 181 | `result-track:6c7886eee7b781ea1e731f3c313a426ad426e4be0144912ecafd86da8cc0f164` |
| 12 | `def` | [modulusResidualMass](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/modulusresidualmass--2043e300b3a2ec5372234187.md) | 197 | `declaration-track:2043e300b3a2ec5372234187c22e0eecd6115b79a86a575d4313997cec2b1e5a` |
| 13 | `def` | [complexMismatch](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/complexmismatch--013621a1088cbd7ec018902a.md) | 202 | `declaration-track:013621a1088cbd7ec018902a027d0c85f1911ffc9624e8698946eb02d278d61c` |
| 14 | `theorem` | [modulus_gram_mass_step](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/modulus-gram-mass-step--a3be1b9612a4b009516bb81d.md) | 209 | `result-track:a3be1b9612a4b009516bb81d1a334a1a64c9a10cecbf3875f9defc7e7a8490b0` |
| 15 | `theorem` | [no_fixed_negative_of_modulus_growing_gram](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/no-fixed-negative-of-modulus-growing-gram--32f826fad26b0ce78e082031.md) | 240 | `result-track:32f826fad26b0ce78e082031c78fc71de2d46c67317d58679c2487d5ae11c746` |
| 16 | `theorem` | [unit_phase_preserves_mass](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/unit-phase-preserves-mass--68a0447c394b05d0fb5009d0.md) | 286 | `result-track:68a0447c394b05d0fb5009d0f14e183e72aa4027575f361f7fd84de8d95c62dc` |
| 17 | `theorem` | [unit_phase_preserves_column_mass](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/unit-phase-preserves-column-mass--7b97b208e97d696febd7fd4e.md) | 294 | `result-track:7b97b208e97d696febd7fd4e8b88bdaf4bdcc8bbf376cee644601dd54a6f848c` |
| 18 | `theorem` | [double_modulusMass_le_realSource_mass](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/double-modulusmass-le-realsource-mass--41086542e3e9ea13e6872c69.md) | 302 | `result-track:41086542e3e9ea13e6872c69e94aa6e4fe149c2dd86e8297b8fb35dfe5d407c4` |
| 19 | `theorem` | [native_modulus_strict_fixture](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/native-modulus-strict-fixture--8e2df3519248c0f448b70a64.md) | 314 | `result-track:8e2df3519248c0f448b70a6461a5c67add9dbfbb39f7db4b350aacd67d6c17f3` |
| 20 | `theorem` | [native_pair_rate_fixture](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/native-pair-rate-fixture--c9a8c2778cc8c3e2c98b7b2f.md) | 326 | `result-track:c9a8c2778cc8c3e2c98b7b2f672436506cea47e51a3f5a4821bde8720ca84742` |
| 21 | `theorem` | [imaginary_negative_fixture](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/declarations/imaginary-negative-fixture--e95b83f37575a46d65c5178c.md) | 332 | `result-track:e95b83f37575a46d65c5178c7d565932c766c0697bbf1352658a811b028c5fce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
