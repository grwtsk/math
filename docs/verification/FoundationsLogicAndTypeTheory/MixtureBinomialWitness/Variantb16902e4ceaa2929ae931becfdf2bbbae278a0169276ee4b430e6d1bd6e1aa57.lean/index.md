# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MixtureBinomialWitness.Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a309fe9b8a409c5ecdeaa6abbb9b5e165097a144",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a309fe9b8a409c5ecdeaa6abbb9b5e165097a144`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.KnownLabelPhaseConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Vandermonde` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [height](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/height--4424e46f2b6246e10d38b28f.md) | 22 | `declaration-track:4424e46f2b6246e10d38b28f966e4fdf65bb16160f03d8e8f965f5c7af825c5a` |
| 2 | `def` | [witness](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/witness--71074c09be714046560405bc.md) | 29 | `declaration-track:71074c09be714046560405bc0ff7695034736e05395ddb0bab3ea41784f5f290` |
| 3 | `def` | [entry](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/entry--248b1a12d8f44c58fc759605.md) | 37 | `declaration-track:248b1a12d8f44c58fc759605ece1acd8b48660598dc33ca32db245adf33f1ccf` |
| 4 | `def` | [response](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/response--aaf26ee75766ef2c1ce856b0.md) | 45 | `declaration-track:aaf26ee75766ef2c1ce856b010742567715c83e93e88565aadcc84a9b43ca74c` |
| 5 | `theorem` | [binomial_identity](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/binomial-identity--2ed2bfd99ad80f62836d2f48.md) | 49 | `result-track:2ed2bfd99ad80f62836d2f48021102d2620dc86ccf6c48b518b0137ef95601a3` |
| 6 | `theorem` | [witness_norm_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/witness-norm-sq--0c9ab0319dd1b72e2a4628da.md) | 60 | `result-track:0c9ab0319dd1b72e2a4628daa65aa8a3fd0685cb6bf901f84387e39ff1f21e06` |
| 7 | `theorem` | [witness_nonzero](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/witness-nonzero--d1fa4ae41c128572aa43284e.md) | 68 | `result-track:d1fa4ae41c128572aa43284e95d781b07dc2bc71d3485b2b228f7adeb6445c7c` |
| 8 | `theorem` | [exact_response](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/exact-response--02a016d00c1b304f64abe4bd.md) | 73 | `result-track:02a016d00c1b304f64abe4bd9d485359d32633402995ae861697b8fe345b8c21` |
| 9 | `theorem` | [heights_in_unit_window](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/heights-in-unit-window--229f8b1737ba7f4a4a60b11b.md) | 92 | `result-track:229f8b1737ba7f4a4a60b11b7cb2e3193254c1be19ce3b838f236278b701a3ab` |
| 10 | `theorem` | [primeLog_nonnegative](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/primelog-nonnegative--2b610e70b4b45b5de1b95dc0.md) | 103 | `result-track:2b610e70b4b45b5de1b95dc0a0b1f7a6d78ce3a48fa15b3ea3ab157a5a3b52a5` |
| 11 | `theorem` | [primeLog_le_three](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/primelog-le-three--6aed5fbe99521a531c98fbcc.md) | 106 | `result-track:6aed5fbe99521a531c98fbccb2b5be03faa6ed434027e3c75bc39f02fbc8fa8d` |
| 12 | `theorem` | [response_coordinate_bound](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/response-coordinate-bound--7f6052570d3f3fb89fa18d3c.md) | 111 | `result-track:7f6052570d3f3fb89fa18d3c9640d8808f00e831d2c4584c878f622b6ea010f0` |
| 13 | `theorem` | [response_norm_bound](../../../../mathematics/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/declarations/response-norm-bound--972f73b5e43442700b332855.md) | 132 | `result-track:972f73b5e43442700b332855c35bf3416280f20b4a480750b2fe88eaa77dbc95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
