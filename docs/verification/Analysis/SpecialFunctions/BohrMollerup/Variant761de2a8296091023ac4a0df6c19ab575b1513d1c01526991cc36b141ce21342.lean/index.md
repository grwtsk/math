# Verification target: GRWTSK.Analysis.SpecialFunctions.BohrMollerup.Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54f5f3b20ecf171ec9c9e17bec2cdb911a418a2b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54f5f3b20ecf171ec9c9e17bec2cdb911a418a2b`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/gamma-mul-add-mul-le-rpow-gamma-mul-rpow-gamma--0071da5e740b29ddc97cb14f.md) | 52 | `result-track:0071da5e740b29ddc97cb14ffc855be55664b3f3bad2441eb919c5dc74eb57d4` |
| 2 | `theorem` | [convexOn_log_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/convexon-log-gamma--7bd50864007109c341a43a5f.md) | 109 | `result-track:7bd50864007109c341a43a5f557a5d239bc2f0106f59e405cbe0fa8b033ba2d3` |
| 3 | `theorem` | [convexOn_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/convexon-gamma--c86318e01c5094a578e687e3.md) | 120 | `result-track:c86318e01c5094a578e687e3a1fc7ca424fa3ed6b90d93c5a7fe746f64e830fd` |
| 4 | `def` | [logGammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/loggammaseq--d4d8a9bc00036b2e564758fb.md) | 138 | `declaration-track:d4d8a9bc00036b2e564758fb5251a96ff5c46da8eec45ed385c27c51fc55e372` |
| 5 | `theorem` | [f_nat_eq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/f-nat-eq--cd9abd6ad95e0ca1e3fb4b2f.md) | 143 | `result-track:cd9abd6ad95e0ca1e3fb4b2f74222196e09b2a56dccaa6f2b1f3dd2041a1cd81` |
| 6 | `theorem` | [f_add_nat_eq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/f-add-nat-eq--6717d8c3927d02497b3dd82b.md) | 154 | `result-track:6717d8c3927d02497b3dd82baf03a66fc4d37d7472ba9d8cca06c13724dbf5ec` |
| 7 | `theorem` | [f_add_nat_le](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/f-add-nat-le--8fe6c0ef3ec8df8eebe21de7.md) | 166 | `result-track:8fe6c0ef3ec8df8eebe21de745584da2e1e4e1fb7ae2844f6eb5c0df43552832` |
| 8 | `theorem` | [f_add_nat_ge](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/f-add-nat-ge--cf73313f9fbae3431170e8fd.md) | 176 | `result-track:cf73313f9fbae3431170e8fdf226f8c77ce0de249e53a7f30cf0c1f9f93f633f` |
| 9 | `theorem` | [logGammaSeq_add_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/loggammaseq-add-one--7b0ce44ebf8c5ece41d8618f.md) | 188 | `result-track:7b0ce44ebf8c5ece41d8618f491a4b71aae9b5955fcb4d899bafb275b6444408` |
| 10 | `theorem` | [le_logGammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/le-loggammaseq--db890eb5ba00354f0f82e52c.md) | 204 | `result-track:db890eb5ba00354f0f82e52c6d892432e3d1a296e0b30ac1a4512575e647d1fa` |
| 11 | `theorem` | [ge_logGammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/ge-loggammaseq--1ed8fffd42797fe7abdb936f.md) | 212 | `result-track:1ed8fffd42797fe7abdb936f74bf0a113410d9553a6abeb6409e0f6ced6e2bd8` |
| 12 | `theorem` | [tendsto_logGammaSeq_of_le_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/tendsto-loggammaseq-of-le-one--3ae98046d34d24474af854fe.md) | 223 | `result-track:3ae98046d34d24474af854feb2d7995c82aaf8738713d38fb98cdd6722e5dc92` |
| 13 | `theorem` | [tendsto_logGammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/tendsto-loggammaseq--621625a093f839a0eb1e0382.md) | 239 | `result-track:621625a093f839a0eb1e0382ab2035a7c7674dd91c44049436bbd5eba8031824` |
| 14 | `theorem` | [tendsto_log_gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/tendsto-log-gamma--906094627cea74171c3218e8.md) | 289 | `result-track:906094627cea74171c3218e81a844a5dc31c0587d4062da809b1c37ffcba5009` |
| 15 | `theorem` | [eq_Gamma_of_log_convex](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/eq-gamma-of-log-convex--ff25efd03737e4e7813f5bd5.md) | 303 | `result-track:ff25efd03737e4e7813f5bd59acc66fb1000eca6271bea192bd649cff2f59d6c` |
| 16 | `theorem` | [Gamma_two](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/gamma-two--00ede0795109d22203b498d3.md) | 321 | `result-track:00ede0795109d22203b498d3a61734b6611017b2ec14b3d4e9a08db20e19f9d2` |
| 17 | `theorem` | [Gamma_three_div_two_lt_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/gamma-three-div-two-lt-one--4b414a372df91c67a2349d57.md) | 323 | `result-track:4b414a372df91c67a2349d579ee699579056dddb461b5048a4b5094fb23172c7` |
| 18 | `theorem` | [Gamma_strictMonoOn_Ici](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/gamma-strictmonoon-ici--9309a91c2b95efd796fefdd4.md) | 345 | `result-track:9309a91c2b95efd796fefdd44b14a8194967d5adc290d270d33632c40d2e6014` |
| 19 | `def` | [doublingGamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/doublinggamma--e3ede931a0f5f6cf7ede492f.md) | 367 | `declaration-track:e3ede931a0f5f6cf7ede492f5590cf13491f0b267acf2b41ef1f7c4c9dae8c80` |
| 20 | `theorem` | [doublingGamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/doublinggamma-add-one--a9250a7b98938ddf5663f871.md) | 370 | `result-track:a9250a7b98938ddf5663f8714df4479478e55af1dfd616237ac69eaa7530dbc9` |
| 21 | `theorem` | [doublingGamma_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/doublinggamma-one--b8aebf0443ceccd63ebaa749.md) | 376 | `result-track:b8aebf0443ceccd63ebaa749a848aa9632a6412119746c84cbb5a20f0b210c80` |
| 22 | `theorem` | [log_doublingGamma_eq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/log-doublinggamma-eq--ea19c9782bb865e55577b5d2.md) | 380 | `result-track:ea19c9782bb865e55577b5d2a3553ec2d0bf7f92507d8d00d2d081544aed85ce` |
| 23 | `theorem` | [doublingGamma_log_convex_Ioi](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/doublinggamma-log-convex-ioi--4d7b451dfc61c91dc8500bea.md) | 394 | `result-track:4d7b451dfc61c91dc8500beaedf9667ff54e4b18ec9a7a05ecce91c523d27d77` |
| 24 | `theorem` | [doublingGamma_eq_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/doublinggamma-eq-gamma--4b17628d726f27f7978766c6.md) | 417 | `result-track:4b17628d726f27f7978766c66577f44cc2786e09b4c854220714f440764d8852` |
| 25 | `theorem` | [Gamma_mul_Gamma_add_half_of_pos](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/declarations/gamma-mul-gamma-add-half-of-pos--ec6a7974a170fc03c6b848ca.md) | 427 | `result-track:ec6a7974a170fc03c6b848ca535ee10dd9910208ebb65cc4aa29a1a143a86843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
