# Verification target: GRWTSK.Algebra.Prod.Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af8a23eca013d18030e59b9de36092588385ec6d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af8a23eca013d18030e59b9de36092588385ec6d`.

Source path: `GRWTSK/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/prod--160f33db00a80be1b7d54bcd.md) | 35 | `declaration-track:160f33db00a80be1b7d54bcd3c70da053214ce95241b2ef343c5da8f6d49f55b` |
| 2 | `theorem` | [mem_prod](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/mem-prod--89d82f86ce784bd222b1b3b8.md) | 47 | `result-track:89d82f86ce784bd222b1b3b89a4ac782a55673bd0cbb3bada606f1cf4c622d00` |
| 3 | `theorem` | [prod_top_top](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/prod-top-top--2ae97d6ecb41b05dd34cb0c5.md) | 52 | `result-track:2ae97d6ecb41b05dd34cb0c56dcf1de668ed879763cd45c1cb8e45b18c08744d` |
| 4 | `theorem` | [ideal_prod_eq](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/ideal-prod-eq--74f8b4073018aa99252fada8.md) | 58 | `result-track:74f8b4073018aa99252fada8e889fbceee7116cd403ab48189eccf755c0d1728` |
| 5 | `theorem` | [map_fst_prod](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/map-fst-prod--7238ab13e9068b64ea3def73.md) | 70 | `result-track:7238ab13e9068b64ea3def73f04cd5676e7d8b3dc64d49827288892a13a1076b` |
| 6 | `theorem` | [map_snd_prod](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/map-snd-prod--d6e500891a04fc7d090a7b72.md) | 80 | `result-track:d6e500891a04fc7d090a7b72b9cf995ee13a9c61af917fb55cb7b069790f47ce` |
| 7 | `theorem` | [map_prodComm_prod](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/map-prodcomm-prod--41abf05d182ab0ac16651072.md) | 90 | `result-track:41abf05d182ab0ac16651072da729a4eab4991c573adbeb481021218f3654636` |
| 8 | `def` | [idealProdEquiv](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/idealprodequiv--9dcbd8bd6f93deb701dd7904.md) | 98 | `declaration-track:9dcbd8bd6f93deb701dd7904701106e36dac3eb537d4ac7dee5ff6ff2cff74c0` |
| 9 | `theorem` | [idealProdEquiv_symm_apply](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/idealprodequiv-symm-apply--e1a352d2582e35184e7bc892.md) | 107 | `result-track:e1a352d2582e35184e7bc8923f64b1c4494fe4bd97803ec164f212ef82a7afa6` |
| 10 | `theorem` | [prod.ext_iff](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/prod-ext-iff--4f5724765845e45a21000791.md) | 112 | `result-track:4f5724765845e45a210007916548f5ca93c780e9fe120fac0f8c33035d74694e` |
| 11 | `theorem` | [isPrime_of_isPrime_prod_top](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/isprime-of-isprime-prod-top--e25f224ab6e41408c97855ab.md) | 117 | `result-track:e25f224ab6e41408c97855ab3d989518a9a376d51240871c55b41aed869db8af` |
| 12 | `theorem` | [isPrime_of_isPrime_prod_top'](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/isprime-of-isprime-prod-top--56c9381f3f9d2239c70d44c9.md) | 130 | `result-track:56c9381f3f9d2239c70d44c9445acae930149c3d527983bab4b914840f8bac0d` |
| 13 | `theorem` | [isPrime_ideal_prod_top](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/isprime-ideal-prod-top--dad162e11a2c9c374d8838f3.md) | 137 | `result-track:dad162e11a2c9c374d8838f33809db1ef520edb7059251186ef63529ed641bb2` |
| 14 | `theorem` | [isPrime_ideal_prod_top'](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/isprime-ideal-prod-top--9b5800015e7fcee275491f77.md) | 149 | `result-track:9b5800015e7fcee275491f77211fbd1cf1255e94079ce6e96332bdd5fdf5f043` |
| 15 | `theorem` | [ideal_prod_prime_aux](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/ideal-prod-prime-aux--1f31542c040d64c0f862d4af.md) | 155 | `result-track:1f31542c040d64c0f862d4afb902d57cb048f121899c3582f8912bfad70f7bee` |
| 16 | `theorem` | [ideal_prod_prime](../../../../mathematics/Algebra/Prod/Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a.lean/declarations/ideal-prod-prime--0b1a7a0528af484414b93694.md) | 164 | `result-track:0b1a7a0528af484414b936949c9c56e6f73c507222714d1f093f16d93775a4f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
