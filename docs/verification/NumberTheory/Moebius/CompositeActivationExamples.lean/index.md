# Verification target: GRWTSK.NumberTheory.Moebius.CompositeActivationExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2d680827ec45e798926c5792d88b29e4f2c2aa0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CompositeActivationExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2d680827ec45e798926c5792d88b29e4f2c2aa0`.

Source path: `GRWTSK/NumberTheory/Moebius/CompositeActivationExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CompositeActivationExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Order.WellFounded.AdditiveNaturalRank`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixtureWidth](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixturewidth--499ffdbf8fa18b8af079d951.md) | 14 | `declaration-track:499ffdbf8fa18b8af079d951f80f336017d6df4aca7052ec2d963d5f9de8356f` |
| 2 | `def` | [fixtureHorizon](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixturehorizon--d2c7533bfc3970910c64f07d.md) | 15 | `declaration-track:d2c7533bfc3970910c64f07d79a9d7b3b2c5ff851bfe0808ad209adadb35eb33` |
| 3 | `theorem` | [fixture_width_valid](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixture-width-valid--ad47d2e2edd9cfe7e510739c.md) | 17 | `result-track:ad47d2e2edd9cfe7e510739c356d048f55fd44d10991814fa70518d17028061a` |
| 4 | `theorem` | [fixture_old_exp](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixture-old-exp--b4894afc2421ee0e570422a8.md) | 22 | `result-track:b4894afc2421ee0e570422a8914be38c9474f65e5c08fcc8862b0491c4702fe3` |
| 5 | `theorem` | [fixture_old_inventory](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixture-old-inventory--8880ef2fde905b8cdabeb4fb.md) | 27 | `result-track:8880ef2fde905b8cdabeb4fb1379bc3e41c5402c2f1a77db3c33991ea6e61c19` |
| 6 | `theorem` | [fixture_horizon_inventory](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixture-horizon-inventory--33ec91154f96102436dc2aa8.md) | 32 | `result-track:33ec91154f96102436dc2aa8d9f4d5ea2e6fa57d024b70c8d6ff0dd805ca2981` |
| 7 | `theorem` | [fixture_shell](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixture-shell--b057ee57c3230de6f7c9e2d8.md) | 37 | `result-track:b057ee57c3230de6f7c9e2d8eca6aa0e705e503293064db7913ee9b5a2bdc52f` |
| 8 | `theorem` | [fixture_horizon_wave](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixture-horizon-wave--875fdaf870ce21162ac1c12a.md) | 41 | `result-track:875fdaf870ce21162ac1c12ac90ae0a2f4f73ded752f0971623b5fdc73f476ce` |
| 9 | `theorem` | [mu_six](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/mu-six--689b73ccd235fe418519766b.md) | 46 | `result-track:689b73ccd235fe418519766bd0a7e84ca2cc5cbc907a96c9bd187571efbb0b93` |
| 10 | `theorem` | [mu_ten](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/mu-ten--d467e50accb72367be98663d.md) | 52 | `result-track:d467e50accb72367be98663dbf95293ba4a9b65b877bc70dd0e0ba677b7277f2` |
| 11 | `theorem` | [mu_fifteen](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/mu-fifteen--4de13dcdcb7bf4e4f5fae0dc.md) | 58 | `result-track:4de13dcdcb7bf4e4f5fae0dcd0da68e678c31c9072f2eada78085e782ec9e26d` |
| 12 | `theorem` | [mu_thirty](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/mu-thirty--b9f4d67fab812b543a65060c.md) | 64 | `result-track:b9f4d67fab812b543a65060c7130b5356c7308da89eef88fc38d5d8b94a1ca12` |
| 13 | `theorem` | [fixture_echo_raw](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixture-echo-raw--49e6c588327ace6807b3c4d1.md) | 71 | `result-track:49e6c588327ace6807b3c4d1e70f786c89a496979a446eb0a43d91420ef2571c` |
| 14 | `theorem` | [atom_above_fixture](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/atom-above-fixture--9d393b9af0572df351f26d9e.md) | 85 | `result-track:9d393b9af0572df351f26d9e3cbe5fd43a7ada5c25c41f0af350318343beba52` |
| 15 | `theorem` | [fixture_echo](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/fixture-echo--271105f1df6b57a979597a3d.md) | 92 | `result-track:271105f1df6b57a979597a3ddcf1f50d0d410a19ee11ca6864582fa402af4ff0` |
| 16 | `theorem` | [atom_six_positive](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/atom-six-positive--42b40d51a5e1be95c7fc93e1.md) | 99 | `result-track:42b40d51a5e1be95c7fc93e1ffcc1295dcf0f5a333b6704b1e2e5f44d0e93694` |
| 17 | `theorem` | [missing_composite_bridge_rejected](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/missing-composite-bridge-rejected--3934001eb279dc8ffc47e49c.md) | 110 | `result-track:3934001eb279dc8ffc47e49cd837bd466d15b14e02909a845f619b7ede74a62d` |
| 18 | `theorem` | [scalar_sign_erasure_rejected](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/scalar-sign-erasure-rejected--d57536bbb926045cbb5de536.md) | 117 | `result-track:d57536bbb926045cbb5de536f59e1e20e1807775bb071e03ccef92251d0c2607` |
| 19 | `theorem` | [unchanged_child_rejected](../../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/declarations/unchanged-child-rejected--853ca62344efa769efd87092.md) | 121 | `result-track:853ca62344efa769efd87092001fd0a24caa88e56108680c497a0d1f05cfb927` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
