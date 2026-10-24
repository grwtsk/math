# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe19f7cbc7a45ba8cf9e7cba403ed6e9970cc334",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe19f7cbc7a45ba8cf9e7cba403ed6e9970cc334`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource`](../../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Analysis.Real.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SquarePair](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarepair--da4f85a5c2e2a09c83c12349.md) | 44 | `declaration-track:da4f85a5c2e2a09c83c123491a06a395bd55feda9eb1d3d4238be5fabba4b82d` |
| 2 | `instance` | [squarePairFintype](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarepairfintype--ab844f2148bdfb71474a6487.md) | 47 | `declaration-track:ab844f2148bdfb71474a648708fe60960c511035cd4e7c5b8837d292b9a85a5b` |
| 3 | `theorem` | [squarePair_exponent_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarepair-exponent-pos--0d2162d51ba3a0d2e7f227c0.md) | 50 | `result-track:0d2162d51ba3a0d2e7f227c08d757f5e303341c4b8f058a17977ef2d4e90506e` |
| 4 | `theorem` | [squarePair_prime](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarepair-prime--7a96df462bc4b1aee272f961.md) | 54 | `result-track:7a96df462bc4b1aee272f961e7fd57279b9398301bf39907ac3302bb8ded049a` |
| 5 | `def` | [pairAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairatom--f9ea4a27863164b2cb1939d5.md) | 59 | `declaration-track:f9ea4a27863164b2cb1939d548244c6fa8d6ecedf3943e370fc4a0de95385208` |
| 6 | `theorem` | [pairAtom_prime_val](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairatom-prime-val--98b18d588f1ac85f9da93186.md) | 63 | `result-track:98b18d588f1ac85f9da931860067ccf3f418f6285f9721eb54b00b31f3766bf1` |
| 7 | `theorem` | [pairAtom_exponent_val](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairatom-exponent-val--a2908ce6dc63552728a946cf.md) | 68 | `result-track:a2908ce6dc63552728a946cfe7b0bec621fc3923b5aa77ce0c367ac00ade5e06` |
| 8 | `theorem` | [pairAtom_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairatom-injective--8c2368a14275249886c0e05b.md) | 72 | `result-track:8c2368a14275249886c0e05ba60316b9210db08cacdd8e7c6a6df594e5e013ff` |
| 9 | `def` | [pairAtomEmbedding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairatomembedding--b78d281a443d472b8a0c7e1b.md) | 80 | `declaration-track:b78d281a443d472b8a0c7e1bca19d11fc556327f91889f4a444c84d818569de4` |
| 10 | `def` | [squareStageAtoms](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarestageatoms--1b8ab36433833b6278f71b3c.md) | 84 | `declaration-track:1b8ab36433833b6278f71b3c46bf4a4ed4901c9823dd7e637842bf2ebfb0a2fc` |
| 11 | `def` | [squareAtomStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squareatomstage--1971d0524f5670362048db30.md) | 88 | `declaration-track:1971d0524f5670362048db30ebf8c3f22484b36ab35150e40137a3b853731686` |
| 12 | `def` | [pairToWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairtowitness--b6659fe62c7375c19e847786.md) | 92 | `declaration-track:b6659fe62c7375c19e8477866b0831b3500ef34a16f6114ce9d7cdbadbca7b6f` |
| 13 | `theorem` | [pairToWitness_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairtowitness-injective--46bd5a0cf5d593e085c908c7.md) | 97 | `result-track:46bd5a0cf5d593e085c908c739620cf9ff9c0968c6ca3fc74a3ee0cda9a2cf46` |
| 14 | `theorem` | [pairToWitness_surjective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairtowitness-surjective--d73b0b8823da96ae8d409a76.md) | 103 | `result-track:d73b0b8823da96ae8d409a766e1c1b1b1e4165d7fd64322d0b5834b70a62225b` |
| 15 | `def` | [pairWitnessEquiv](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairwitnessequiv--83a0757c1209e83a0bac8bf8.md) | 114 | `declaration-track:83a0757c1209e83a0bac8bf8b17c7216aa977c19bb54678545703fecb5054364` |
| 16 | `theorem` | [stageReadout_reindex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/stagereadout-reindex--8df766bc73f696a1fffe7fc7.md) | 120 | `result-track:8df766bc73f696a1fffe7fc7648af7e69dbf9542bcaef97750f412b1a6a56aa2` |
| 17 | `theorem` | [stageEnergy_reindex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/stageenergy-reindex--025d604a4dad93a158fa04a0.md) | 133 | `result-track:025d604a4dad93a158fa04a0adcfcfbd7300fc2d9a45b3310121bc7399ef28a0` |
| 18 | `theorem` | [exp_logLocation_pairAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/exp-loglocation-pairatom--37a490266fd28d26427f49e6.md) | 149 | `result-track:37a490266fd28d26427f49e6d128d6b736656ddff9a25d65bc947140553e8d7c` |
| 19 | `def` | [squareLogTest](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarelogtest--8cf8c211d6614a85179d7f4a.md) | 161 | `declaration-track:8cf8c211d6614a85179d7f4aa2964a48fa40f5b3f4f0c7e222926d202542d692` |
| 20 | `theorem` | [squareLogTest_pairAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarelogtest-pairatom--c0e0595f30b342e02b0844ab.md) | 164 | `result-track:c0e0595f30b342e02b0844ab276ae636e8e1b96961f591121d1c96cabcdbeadf` |
| 21 | `def` | [pairTentMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairtentmass--c234ac5d8421548e544bf165.md) | 170 | `declaration-track:c234ac5d8421548e544bf165970bff65067fb5cd140f1fce5f758fcd4925e667` |
| 22 | `theorem` | [pairTentMass_eq_squareTentMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairtentmass-eq-squaretentmangoldt--34524e404a56df4ef6ef63e4.md) | 176 | `result-track:34524e404a56df4ef6ef63e4e3554e3b4627bb91f1df4bb4bf26c20a6ee94335` |
| 23 | `theorem` | [pairAtom_tent_sum_eq_pairTentMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/pairatom-tent-sum-eq-pairtentmass--767f4f5c9060f5e483705db3.md) | 220 | `result-track:767f4f5c9060f5e483705db3c70140f2519b02ea3206223dc192176bc34299e8` |
| 24 | `theorem` | [stageReadout_squareLogTest_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/stagereadout-squarelogtest-eq--48da033f5922d9f784b52e9d.md) | 241 | `result-track:48da033f5922d9f784b52e9df43ed9abc9822a6b31c54a693c89d649c5d102cd` |
| 25 | `def` | [squareAtomStageAlignment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squareatomstagealignment--ab5272ff7e433da8fbb767d6.md) | 257 | `declaration-track:ab5272ff7e433da8fbb767d62941a284c03067bcf079d86e6204cbf78c0fbf76` |
| 26 | `def` | [squareRootAmplitude](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarerootamplitude--76aef5ddc2f54ba34e9b20ca.md) | 265 | `declaration-track:76aef5ddc2f54ba34e9b20ca0752448b5d92388d0039061c27ca4d34b413adfe` |
| 27 | `theorem` | [squareLogTest_pairAtom_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarelogtest-pairatom-nonneg--84f0379a68ac30e7cea83bc7.md) | 268 | `result-track:84f0379a68ac30e7cea83bc71a239fe5e47afef2aa142f2444e754dfab11ff91` |
| 28 | `theorem` | [squareRootAmplitude_sq_pairAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squarerootamplitude-sq-pairatom--eaadd21622467ae62e7c2758.md) | 273 | `result-track:eaadd21622467ae62e7c2758963438281ff27dab4710f3a1775b440d32d32165` |
| 29 | `theorem` | [stageEnergy_squareRootAmplitude_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/stageenergy-squarerootamplitude-eq--4a53185554cf3e59b6dec591.md) | 282 | `result-track:4a53185554cf3e59b6dec5916d982e30b8b716bbef5863e9f2af96809d3020f9` |
| 30 | `theorem` | [squareRoot_quadraticization](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/declarations/squareroot-quadraticization--f8f3429dbce0b29d32772a35.md) | 298 | `result-track:f8f3429dbce0b29d32772a3538534e7846b00382eb5eb3d46025dc5735996470` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
