# Verification target: GRWTSK.Algebra.KrullsHeightTheorem.Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77222e768ad258d9ae2f4af1c3640777739fbb34",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/index.md) · [Full source](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77222e768ad258d9ae2f4af1c3640777739fbb34`.

Source path: `GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HopkinsLevitzki` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Height` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsLocalRing.quotient_artinian_of_mem_minimalPrimes_of_isLocalRing](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/islocalring-quotient-artinian-of-mem-minimalprimes-of-islocalring--83c99a7bef1ff2d760f3248e.md) | 50 | `result-track:83c99a7bef1ff2d760f3248eee8ae28cbe53773462017dff7070b53587a545ef` |
| 2 | `lemma` | [Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes_of_isLocalRing](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-height-le-one-of-isprincipal-of-mem-minimalprimes-of-islocalring--26ee433476de58368ff01001.md) | 61 | `result-track:26ee433476de58368ff0100134ccaeed8671a8d2df87f696d05734622e3c6850` |
| 3 | `lemma` | [Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-height-le-one-of-isprincipal-of-mem-minimalprimes--6b96434d5b498f7e83cd87d9.md) | 109 | `result-track:6b96434d5b498f7e83cd87d9f708240e0832f0d614d2133769e927a7cdc646e5` |
| 4 | `theorem` | [Ideal.mem_minimalPrimes_span_of_mem_minimalPrimes_span_insert](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-mem-minimalprimes-span-of-mem-minimalprimes-span-insert--d72c9c7884a2f7e7ef742f64.md) | 122 | `result-track:d72c9c7884a2f7e7ef742f642d866112ac7e109f27a116623f2bae15f6f1c29c` |
| 5 | `lemma` | [Ideal.height_le_spanRank_toENat_of_mem_minimal_primes](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-height-le-spanrank-toenat-of-mem-minimal-primes--6442b56e2a94fec9a2616594.md) | 160 | `result-track:6442b56e2a94fec9a2616594931f3c9bb998233ac0c063531983e2306732e7a0` |
| 6 | `lemma` | [Ideal.height_le_spanRank_toENat](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-height-le-spanrank-toenat--350d13825c90909d57e165ee.md) | 214 | `result-track:350d13825c90909d57e165ee401139cc4288c82863e7f2f03af63c70073878f3` |
| 7 | `lemma` | [Ideal.height_le_spanFinrank](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-height-le-spanfinrank--d0f8fd105baccb8b159dba6d.md) | 221 | `result-track:d0f8fd105baccb8b159dba6dd61db6ebb3b4157b54820fc13ce0644f30cc5720` |
| 8 | `lemma` | [Ideal.height_le_spanRank](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-height-le-spanrank--5e86451fc32d1b9f6c041bb5.md) | 227 | `result-track:5e86451fc32d1b9f6c041bb518dd516babf2764f0610f101b6d48732085c6ce6` |
| 9 | `instance` | [Ideal.finiteHeight_of_isNoetherianRing](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-finiteheight-of-isnoetherianring--8726b9dcb9199792c753c684.md) | 233 | `declaration-track:8726b9dcb9199792c753c684c2a2b781f537a465b2729d5c4495d5a97774e9d5` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/instance--5f4d6fe5f09f39745c66c0f6.md) | 237 | `declaration-track:5f4d6fe5f09f39745c66c0f6e71817443fe4badec4dd968b29afdcdb07b031fd` |
| 11 | `lemma` | [Ideal.exists_spanRank_eq_and_height_eq](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-exists-spanrank-eq-and-height-eq--250de3859cbe2b9e92adfe4a.md) | 247 | `result-track:250de3859cbe2b9e92adfe4a26cb9082e08c9114caea7bbef1052f9553b91c4a` |
| 12 | `lemma` | [Ideal.height_le_iff_exists_minimalPrimes](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-height-le-iff-exists-minimalprimes--824eaa0b1c0b1736db97ec77.md) | 262 | `result-track:824eaa0b1c0b1736db97ec772233c7072cc75b078021d6efbf94fe0e9d42e20e` |
| 13 | `lemma` | [Ideal.exists_finset_card_eq_height_of_isNoetherianRing](../../../../mathematics/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean/declarations/ideal-exists-finset-card-eq-height-of-isnoetherianring--0a40357b1ea4b49a43f145f3.md) | 276 | `result-track:0a40357b1ea4b49a43f145f300a8eda33dfc1f041029bb9823a98f99fac1f5bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
