# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstPrimeAbel.Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4353ffc20566b519a40555b9f0e1d43d8ca25fc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4353ffc20566b519a40555b9f0e1d43d8ca25fc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstPrimeWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeweight--6b08fe01026fddf9cf22da37.md) | 24 | `declaration-track:6b08fe01026fddf9cf22da37a811800ffc80bb9461ee396cc17cc9531cef876d` |
| 2 | `def` | [firstPrimeRemainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeremainder--96bf5fc10dcda8d3104ccd80.md) | 28 | `declaration-track:96bf5fc10dcda8d3104ccd80b2717b2c911a99be45c5a1a4181e1c101810b527` |
| 3 | `def` | [firstPrimeDecayingMain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimedecayingmain--b205313b1a3178b3ee4d2c01.md) | 32 | `declaration-track:b205313b1a3178b3ee4d2c0103796b41cec7e626c238d6a7a656fb7a39bb5aa8` |
| 4 | `theorem` | [firstPrimeWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeweight-hasderivat--2152548eb368964fca18a5e2.md) | 36 | `result-track:2152548eb368964fca18a5e215692ae27a07a1c3c7f823e63d9c601be7d58a14` |
| 5 | `theorem` | [firstPrimeWeight_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeweight-contdiff--b8bf767a9de6687a7406c2fd.md) | 46 | `result-track:b8bf767a9de6687a7406c2fdd2991d5ee8a93f94155995a9611f84018f4afe07` |
| 6 | `theorem` | [firstPrimeWeight_zero_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeweight-zero-endpoint--319eb40d7a631f7cabd686dc.md) | 49 | `result-track:319eb40d7a631f7cabd686dc528967a41bcdaa4b47a500d31aeab2080315332c` |
| 7 | `theorem` | [firstPrimeWeight_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeweight-at-zero--3c6a5ff2d654b0f7007a4306.md) | 53 | `result-track:3c6a5ff2d654b0f7007a430648a5e771ccf690391860793c156594bb5cdd0178` |
| 8 | `theorem` | [first_prime_summand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/first-prime-summand--41f92471ec01fa98148b7707.md) | 58 | `result-track:41f92471ec01fa98148b7707cabdb87ce4698fb50d6ec14bf865288cac71692b` |
| 9 | `theorem` | [primeContribution_eq_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/primecontribution-eq-closed--382c00140c297749efc55f6d.md) | 72 | `result-track:382c00140c297749efc55f6dac4eea723bbb4358896333ea4662732107f96aad` |
| 10 | `theorem` | [firstPrimeWeight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeweight-intervalintegrable--0fce4fdcc0bd8929024d5c61.md) | 105 | `result-track:0fce4fdcc0bd8929024d5c614a891f447eb9a24e7ab7ae1a8041c6af096248b0` |
| 11 | `theorem` | [firstPrimeRemainder_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeremainder-intervalintegrable--a6b3451ed4aabdffe74d8aae.md) | 110 | `result-track:a6b3451ed4aabdffe74d8aae78d916b0d4868921c11d42ea4c47ac3b039feb32` |
| 12 | `theorem` | [primeContribution_centered_abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/primecontribution-centered-abel--8399745a57592ed1d1dfa93d.md) | 117 | `result-track:8399745a57592ed1d1dfa93ddeb7144d124148a431181f4ca03fa774b09709a1` |
| 13 | `theorem` | [firstPrimeWeight_integral_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeweight-integral-eq-neg--e25c3183ed007e7dd93f857d.md) | 127 | `result-track:e25c3183ed007e7dd93f857df729fc79ccfd8f6eb72826d05c01ceaa7c6676ae` |
| 14 | `theorem` | [primeContribution_eq_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/primecontribution-eq-remainder--18c3e0b66c8755d9882e4852.md) | 134 | `result-track:18c3e0b66c8755d9882e48529de568296d27b8223cbccea4f7fb5c5445e6e0c9` |
| 15 | `theorem` | [firstPrimeDecayingMain_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimedecayingmain-intervalintegrable--1d2e1bb95fe264cc1f6479a4.md) | 140 | `result-track:1d2e1bb95fe264cc1f6479a425c8cc2a45e23fe3e3ab4d3ba3f83e312a822c00` |
| 16 | `theorem` | [firstPrimeDecayingMain_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimedecayingmain-abs-le--2e0a42d266036f728654fd58.md) | 147 | `result-track:2e0a42d266036f728654fd58c5579fdb3a572d22b22f381ce5df2ef1fcf60f20` |
| 17 | `theorem` | [firstPrimeWeight_derivative_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/firstprimeweight-derivative-abs-le--e302899250ad1a5cc7da0c6b.md) | 181 | `result-track:e302899250ad1a5cc7da0c6b0587d05e124a8423a7db900c5eec1f5fe1174b71` |
| 18 | `theorem` | [primeContribution_add_remainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbel/Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2.lean/declarations/primecontribution-add-remainder-abs-le--2f6a7c6d4dc4a5c5857849ac.md) | 197 | `result-track:2f6a7c6d4dc4a5c5857849acac4d578cee7fe5eeef51a8df4d56e7719e2ab6f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
