# Verification target: GRWTSK.NumberTheory.ConductorThreeCritical.Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6491cb0add3b59228adbbdaf113ef9b36dffb978",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6491cb0add3b59228adbbdaf113ef9b36dffb978`.

Source path: `GRWTSK/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsResidueOnePrime](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/isresidueoneprime--ab971e489eed37a281aed107.md) | 51 | `declaration-track:ab971e489eed37a281aed1071db5251ab22d2d3e5a745fc454399e5ac1a9834c` |
| 2 | `def` | [IsResidueFivePrime](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/isresiduefiveprime--f1cb26d0bb6a8c687fbc9edb.md) | 56 | `declaration-track:f1cb26d0bb6a8c687fbc9edbad0db7c8c67079291d301dc4fea8693fd445027b` |
| 3 | `def` | [IsEligibleResidueSixPrime](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/iseligibleresiduesixprime--7230d46841c09bb597d74530.md) | 61 | `declaration-track:7230d46841c09bb597d7453084658074bee5244abcc6a74fcb8b6647679615ab` |
| 4 | `instance` | [isResidueOnePrimeDecidable](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/isresidueoneprimedecidable--a363087a277c627fa99392c8.md) | 64 | `declaration-track:a363087a277c627fa99392c8090dcf760990d3d0f41d9ada1b05fffabdb1ee19` |
| 5 | `instance` | [isResidueFivePrimeDecidable](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/isresiduefiveprimedecidable--8287aaa690ec958156fa754d.md) | 68 | `declaration-track:8287aaa690ec958156fa754d7ace6235c48a2fcbfe434fe91a8810046576969e` |
| 6 | `instance` | [isEligibleResidueSixPrimeDecidable](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/iseligibleresiduesixprimedecidable--f7e426f2a4314d7dfd241ee8.md) | 72 | `declaration-track:f7e426f2a4314d7dfd241ee838ef8ef7864cb30d4c2d2750cbcab87c919c80cb` |
| 7 | `def` | [actualResidueOneCount](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/actualresidueonecount--fc50217ba1ebfbd226762f39.md) | 78 | `declaration-track:fc50217ba1ebfbd226762f398e7b37c1efece87ed25b61a25b21793dd0fa2de8` |
| 8 | `def` | [actualResidueFiveCount](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/actualresiduefivecount--aa26f57fb33acf56e1ec8f4d.md) | 83 | `declaration-track:aa26f57fb33acf56e1ec8f4dd32e6900ba7ffc627f898cd32eea69c73f2893b9` |
| 9 | `def` | [actualResidueSixCounts](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/actualresiduesixcounts--23668186c16352846ab10287.md) | 88 | `declaration-track:23668186c16352846ab10287f0dec7195be7e6c1474d11a3a540d1043a30a194` |
| 10 | `theorem` | [residuePrime_disjoint](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/residueprime-disjoint--c28d667f7c5b4ecc4880c4df.md) | 94 | `result-track:c28d667f7c5b4ecc4880c4df53a1f56c9c023e47e1eaab280e5ceba9952b18d7` |
| 11 | `theorem` | [count_eligible_eq_residue_sum](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/count-eligible-eq-residue-sum--78001179c09bfb44fdc644db.md) | 103 | `result-track:78001179c09bfb44fdc644db9f6e230a7cb2f25dd6eeece3c8432081d05fcbad` |
| 12 | `theorem` | [infinite_eligibleResidueSixPrimes](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/infinite-eligibleresiduesixprimes--94302e3615ea1382edd6c8c6.md) | 124 | `result-track:94302e3615ea1382edd6c8c629270ca54ff13f341eae6a8edf5ad38459715320` |
| 13 | `def` | [actualEligiblePrimeCutoff](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/actualeligibleprimecutoff--c690952b2392b97bf172d352.md) | 136 | `declaration-track:c690952b2392b97bf172d3524addb8b87f27941829439cac0d8d48aae82e2b12` |
| 14 | `theorem` | [actualEligiblePrimeCutoff_indexes](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/actualeligibleprimecutoff-indexes--5d3160674eefba436632470e.md) | 141 | `result-track:5d3160674eefba436632470ed3899ff8f4773ea04f0c58c760b34e1ea1e05080` |
| 15 | `def` | [indexedArithmeticBias](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/indexedarithmeticbias--4d73959bc39d4051c3f1f4f0.md) | 178 | `declaration-track:4d73959bc39d4051c3f1f4f079bbcbdd6339492f92d2d801d88b792785a0e11d` |
| 16 | `def` | [indexedDiscrepancyOperator](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/indexeddiscrepancyoperator--7774dd28b18154ba47df733b.md) | 186 | `declaration-track:7774dd28b18154ba47df733b3789c6c3b0ecc4e8ff2676fd6949c197e69dceea` |
| 17 | `theorem` | [indexedDiscrepancyOperator_norm](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/indexeddiscrepancyoperator-norm--17decaedb6eaff6db3d68bc1.md) | 194 | `result-track:17decaedb6eaff6db3d68bc1292e1cbbc88131dcc13dd3e108a98709e1964707` |
| 18 | `theorem` | [actualIndexedErrorOperator_norm](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/actualindexederroroperator-norm--db3b30f16639d0bc5ab5876d.md) | 202 | `result-track:db3b30f16639d0bc5ab5876d0791a03b62333c0b38f5eeb68db083f52417b064` |
| 19 | `theorem` | [actualIndexedArithmeticBias_eq](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/actualindexedarithmeticbias-eq--565b846caf55c5e3a3b1a327.md) | 210 | `result-track:565b846caf55c5e3a3b1a327411ba0bb8fac0d43e73219d9fa5224716adce7e5` |
| 20 | `theorem` | [actualIndexedErrorOperator_norm_eq_countDifference](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/actualindexederroroperator-norm-eq-countdifference--c9164c78b4faf3e047b6ddc0.md) | 228 | `result-track:c9164c78b4faf3e047b6ddc0a11674a206e5313d57a54116a67f1b9b1941d8fa` |
| 21 | `def` | [conductorThreeCriticalRate](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/conductorthreecriticalrate--d6be27bec8052594bc1c4bd7.md) | 242 | `declaration-track:d6be27bec8052594bc1c4bd72669a52a5fd8b3f3d11b5a882550240c2165d442` |
| 22 | `theorem` | [conductorThreeCriticalRate_nonneg](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/conductorthreecriticalrate-nonneg--e58d2b4e6629a2550d202a0b.md) | 248 | `result-track:e58d2b4e6629a2550d202a0b8110bb9e6cf6134750149d0cb74a13900235c0d5` |
| 23 | `theorem` | [conductorThreeCriticalRate_pos](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/conductorthreecriticalrate-pos--8099d6420b29c32275a43418.md) | 254 | `result-track:8099d6420b29c32275a434183f66815a556c1744d5c566ecce6daca663c855ee` |
| 24 | `def` | [MatrixCriticalDecay](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/matrixcriticaldecay--bbddb23519b4fd297b5a8858.md) | 269 | `declaration-track:bbddb23519b4fd297b5a885805600b446c46b65afbd5431bb4db302911e38fa7` |
| 25 | `def` | [ArithmeticBiasCriticalDecay](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/arithmeticbiascriticaldecay--0d1077f4b147f58b8df3d559.md) | 277 | `declaration-track:0d1077f4b147f58b8df3d5594935a7232306a64e5ab6fb15ba3d7de53fee0bfb` |
| 26 | `theorem` | [one_le_sqrtThree](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/one-le-sqrtthree--cea0c002a2bbc2887ffec239.md) | 284 | `result-track:cea0c002a2bbc2887ffec2397c9094b2c97cfcec43ea0443048b6d87616c666e` |
| 27 | `theorem` | [matrixCriticalDecay_iff_arithmeticBiasCriticalDecay](../../../../mathematics/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/declarations/matrixcriticaldecay-iff-arithmeticbiascriticaldecay--675447a76243f7c3c07726c6.md) | 291 | `result-track:675447a76243f7c3c07726c6c13b0aeee89373f69f4207e37ffc2db802e19a2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
