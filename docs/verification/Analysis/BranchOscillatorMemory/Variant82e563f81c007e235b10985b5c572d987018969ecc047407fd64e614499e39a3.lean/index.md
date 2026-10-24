# Verification target: GRWTSK.Analysis.BranchOscillatorMemory.Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53e12e4f6991d80148bf8fa3c80ff2d0a9944c69",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53e12e4f6991d80148bf8fa3c80ff2d0a9944c69`.

Source path: `GRWTSK/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/state--6d11d035f3d2a40591bdc1e3.md) | 23 | `declaration-track:6d11d035f3d2a40591bdc1e3ad7f343180afabe30bb0aa5641c227c9bfe388c1` |
| 2 | `def` | [free](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/free--196c793eb30934b11a0b5da2.md) | 29 | `declaration-track:196c793eb30934b11a0b5da2b6fb4772319cdcd4c40206aa3abecdcd24a04621` |
| 3 | `def` | [memory](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/memory--0778b80d4ff1e7b8282949b3.md) | 35 | `declaration-track:0778b80d4ff1e7b8282949b327cdde9aa1d1276e53a855385e0921f751b914de` |
| 4 | `def` | [impulse](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/impulse--7d13f7d08b6576bf1bf0a3d9.md) | 40 | `declaration-track:7d13f7d08b6576bf1bf0a3d9629608423df72e2a262d2fd188dd300faba4687e` |
| 5 | `def` | [velocityEnergy](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/velocityenergy--862a1df2df926d6a7314ed8c.md) | 45 | `declaration-track:862a1df2df926d6a7314ed8cf338f8b5d97d09d78d167dfbb17c1c1120d2ecc7` |
| 6 | `theorem` | [free_zero](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/free-zero--c406e97f533b8a9e0553c743.md) | 47 | `result-track:c406e97f533b8a9e0553c7432d2a653e2d6394c88ccbd7a60e69554d348c0cd8` |
| 7 | `theorem` | [free_memory](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/free-memory--a94c6620c6ccdff67a88a261.md) | 49 | `result-track:a94c6620c6ccdff67a88a261a1b10e1222aaeece85c26b04cacc6eef20d7a852` |
| 8 | `theorem` | [free_semigroup](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/free-semigroup--1cb9a9e35db527d1daad7e32.md) | 53 | `result-track:1cb9a9e35db527d1daad7e32342fa2d4a6bcfc6c70ca0147e2183f6006d81c67` |
| 9 | `theorem` | [zero_velocity_survives](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/zero-velocity-survives--62c834ff92004df3e547f3ac.md) | 58 | `result-track:62c834ff92004df3e547f3ac9c6e8f2ac07ae6a2cf261017305e003caabe106f` |
| 10 | `theorem` | [pure_velocity_displacement](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/pure-velocity-displacement--57a8d7e768629f32f9018e0c.md) | 60 | `result-track:57a8d7e768629f32f9018e0cc234e5e95724ba2d304bfdf4f3d3c74c6a105df2` |
| 11 | `theorem` | [impulse_preserves_position](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/impulse-preserves-position--90bf6a0669b3b99051ab9930.md) | 63 | `result-track:90bf6a0669b3b99051ab9930da1fd02daab3863f2a17135ea269136236cf1dd3` |
| 12 | `theorem` | [impulse_memory](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/impulse-memory--6c8b8fe604ae15e7cc1d2ddd.md) | 65 | `result-track:6c8b8fe604ae15e7cc1d2ddd99bf278a541b1d1e24a7120bc6841df1523d67dc` |
| 13 | `theorem` | [impulse_energy](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/impulse-energy--d2e19217bc657d36eb6a3962.md) | 69 | `result-track:d2e19217bc657d36eb6a3962ad93df54fbb25772904a194c0dd8e733063a5587` |
| 14 | `theorem` | [arithmetic_impulse_energy](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/arithmetic-impulse-energy--a2c004b2933df48f06d1c2be.md) | 74 | `result-track:a2c004b2933df48f06d1c2be221f0972379b68d22b7e1c3b6ae510f1a979dbfc` |
| 15 | `theorem` | [reset_keeps_memory](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/reset-keeps-memory--fdca86ee816be24bf4e51760.md) | 81 | `result-track:fdca86ee816be24bf4e517603a3ec6a9e7e760457385044dbc68e5acb5090f38` |
| 16 | `theorem` | [endpoint_neutral_memory](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/endpoint-neutral-memory--e1c76537ceacc10b62ebe297.md) | 87 | `result-track:e1c76537ceacc10b62ebe2970adf1bf9120bd6c484bf3d6d6c48de04ea9c6a00` |
| 17 | `theorem` | [plateau_candidate](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/plateau-candidate--0525e9790d40f545892ed7cd.md) | 93 | `result-track:0525e9790d40f545892ed7cd7c76916d14601ef663af3f7ef98bbb18e61d7b60` |
| 18 | `theorem` | [boundary_candidate_keeps_flux](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/boundary-candidate-keeps-flux--1b7962d15966b6a0ac6b58ab.md) | 96 | `result-track:1b7962d15966b6a0ac6b58ab2a4f250d4e5dfab4bdb3f060f8767288f15835e6` |
| 19 | `theorem` | [memory_not_forced_to_zero](../../../../mathematics/Analysis/BranchOscillatorMemory/Variant82e563f81c007e235b10985b5c572d987018969ecc047407fd64e614499e39a3.lean/declarations/memory-not-forced-to-zero--7cc3054a84abdb73ce593a63.md) | 102 | `result-track:7cc3054a84abdb73ce593a63c5a5efcc64c81df6097490b22225431fcd198172` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
