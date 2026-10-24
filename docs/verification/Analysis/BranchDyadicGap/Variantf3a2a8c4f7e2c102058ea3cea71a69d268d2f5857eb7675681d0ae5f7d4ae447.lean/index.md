# Verification target: GRWTSK.Analysis.BranchDyadicGap.Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d8bdcdbf22ff24f35dbe7e98c60e699bd7fac7d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d8bdcdbf22ff24f35dbe7e98c60e699bd7fac7d`.

Source path: `GRWTSK/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [difference](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/difference--51ae4d20c94807368361235e.md) | 25 | `declaration-track:51ae4d20c94807368361235e2241c2f359dcc501e9291c3478de57e9f71ae6e2` |
| 2 | `theorem` | [exact_energy](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/exact-energy--a6627e0f5c95e0c8325e342e.md) | 27 | `result-track:a6627e0f5c95e0c8325e342e7e9a3e82df965f9e388ecd18a77674416c4782b4` |
| 3 | `theorem` | [lower_norm](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/lower-norm--2f86a91b885053dc1410edb1.md) | 35 | `result-track:2f86a91b885053dc1410edb1916be5d0f6f8c4cdd32672d239b4a17423bdf6d9` |
| 4 | `theorem` | [upper_norm](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/upper-norm--7ac6173646efb133d76532f0.md) | 41 | `result-track:7ac6173646efb133d76532f04c259f5a7d37a9238d6b448c6ef0f154e8f9ef60` |
| 5 | `theorem` | [lower_energy](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/lower-energy--0dd2924f0ea27595c07ff9e8.md) | 47 | `result-track:0dd2924f0ea27595c07ff9e8a19a2eddfdabf704aa92063745d72045f54aa0d2` |
| 6 | `theorem` | [kernel_zero](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/kernel-zero--3972e0c57e1a1f2e98ef1177.md) | 52 | `result-track:3972e0c57e1a1f2e98ef117702cb249fa17230e4d705ee41ba7099b27b645844` |
| 7 | `def` | [theta](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/theta--3563f940badd5d61a662af5d.md) | 64 | `declaration-track:3563f940badd5d61a662af5d1dba550f7241b8fa74f578553291f3ea4d0bf3ee` |
| 8 | `def` | [gap](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/gap--3fb775c2f2258a811c0a0db7.md) | 69 | `declaration-track:3fb775c2f2258a811c0a0db7f83c3c3a0664bd6bad8c8fafd302a924065b1e31` |
| 9 | `theorem` | [theta_positive](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/theta-positive--f535008e708a5021fda22637.md) | 71 | `result-track:f535008e708a5021fda226374da85e9ffe80cc6a199cd4777bdad7895e31ac30` |
| 10 | `theorem` | [theta_lt_one](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/theta-lt-one--0e93a50047ffa2a64b205ad3.md) | 72 | `result-track:0e93a50047ffa2a64b205ad3abee30e75783f80b1049334a73d552c387819f21` |
| 11 | `theorem` | [gap_identity](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/gap-identity--473a5b1e70403f0433219ba2.md) | 77 | `result-track:473a5b1e70403f0433219ba246fec5af1405ebcad2cf5d16fd98c2db09847c45` |
| 12 | `theorem` | [gap_positive](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/gap-positive--c71301a24858a160b99d1b5b.md) | 84 | `result-track:c71301a24858a160b99d1b5bf27d051f6e64a8b71a2878736d87bdf65cad4eef` |
| 13 | `theorem` | [prime_two_energy](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/prime-two-energy--8be941e8808af1b4c2fdce13.md) | 88 | `result-track:8be941e8808af1b4c2fdce136b99614ae5275d9b9033a77257aed2309c6b0623` |
| 14 | `theorem` | [synthesis_transfer](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/synthesis-transfer--c01df4c9213855f874e659fc.md) | 95 | `result-track:c01df4c9213855f874e659fc2651a2ff4a46e7a2d4bc82f93064a102fb622256` |
| 15 | `theorem` | [cutoff_witness](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/cutoff-witness--47b78030c4be249e57176d60.md) | 104 | `result-track:47b78030c4be249e57176d601b4b94677bb7195fe452fb6aba0eadbb8c192b3f` |
| 16 | `theorem` | [cutoff_witness_norm](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/cutoff-witness-norm--990a0f2bf1f94522a76df86b.md) | 108 | `result-track:990a0f2bf1f94522a76df86bc9f20aa6d82463a4db3d965a77e7a38631186194` |
| 17 | `theorem` | [cutoff_ratio](../../../../mathematics/Analysis/BranchDyadicGap/Variantf3a2a8c4f7e2c102058ea3cea71a69d268d2f5857eb7675681d0ae5f7d4ae447.lean/declarations/cutoff-ratio--e8a72aa7e359ade0cd815bd4.md) | 116 | `result-track:e8a72aa7e359ade0cd815bd449ec8da1349efd3d4fdf3ae8e3ec6c7ba3f457aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
