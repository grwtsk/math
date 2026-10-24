# Verification target: GRWTSK.Algebra.MinimalPrime.Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/index.md) · [Full source](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe`.

Source path: `GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-minimalprimes--0ffe7912140c0a8ef2d6a77b.md) | 38 | `declaration-track:0ffe7912140c0a8ef2d6a77b024e49df274481c37537ab2e00a99fd49713aa17` |
| 2 | `def` | [minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/minimalprimes--1988375314f24d8174c5c8b8.md) | 44 | `declaration-track:1988375314f24d8174c5c8b8f0cac16a1fdd774dcce8286f93d007dab91a8547` |
| 3 | `theorem` | [Ideal.exists_minimalPrimes_le](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-exists-minimalprimes-le--37cc37b1b518e356acf555c8.md) | 50 | `result-track:37cc37b1b518e356acf555c84a804d074d6b890e545ddbb84609f22bd320439e` |
| 4 | `theorem` | [Ideal.radical_minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-radical-minimalprimes--132a3e486a1513296ccdbfb5.md) | 72 | `result-track:132a3e486a1513296ccdbfb5dbdc747eb37d0ffda49a8684260b0dbb0fc00f2d` |
| 5 | `theorem` | [Ideal.sInf_minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-sinf-minimalprimes--20a219119f8f91f173246e7d.md) | 86 | `result-track:20a219119f8f91f173246e7daf9dd3869c263da5d5e958c3f7f025aded3e902a` |
| 6 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes-of-injective--54aa23101002dc3db2595140.md) | 99 | `result-track:54aa23101002dc3db2595140369a853150da94b1039b71b3f78a33d19b140be3` |
| 7 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes--a8546fec93a40bc90296c9ba.md) | 123 | `result-track:a8546fec93a40bc90296c9ba461c361e19dc9c1848d26712547d88265d280ff5` |
| 8 | `theorem` | [Ideal.exists_minimalPrimes_comap_eq](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-exists-minimalprimes-comap-eq--e6d9d4f7beec1be42cff4260.md) | 156 | `result-track:e6d9d4f7beec1be42cff4260b209dd3f5574f7afe736127047a747f794868400` |
| 9 | `theorem` | [Ideal.mimimal_primes_comap_of_surjective](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-mimimal-primes-comap-of-surjective--35be1ddac02abbe66fe85fcc.md) | 166 | `result-track:35be1ddac02abbe66fe85fccb09515a88cc22666af8e91bb35e27443447ae516` |
| 10 | `theorem` | [Ideal.comap_minimalPrimes_eq_of_surjective](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-comap-minimalprimes-eq-of-surjective--94f43921634a15542a59b308.md) | 179 | `result-track:94f43921634a15542a59b308bff2e9ef7647897c1f1aa3f73cf46e77a4bd8b48` |
| 11 | `theorem` | [Ideal.minimalPrimes_eq_comap](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-minimalprimes-eq-comap--eac7b88e467c0d7c4a023f6c.md) | 190 | `result-track:eac7b88e467c0d7c4a023f6cf10d093de7e0b67e6b9d167aba33ab42385b6c31` |
| 12 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-minimalprimes-eq-subsingleton--105ab01e75f2cb6e2679a864.md) | 196 | `result-track:105ab01e75f2cb6e2679a864de201be9892f4b3df27f36a44022dba8d47ea47e` |
| 13 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton_self](../../../../mathematics/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/declarations/ideal-minimalprimes-eq-subsingleton-self--d25fd834a2abfa13c9479dc5.md) | 206 | `result-track:d25fd834a2abfa13c9479dc54fd48e237d5506e7b853d5cbf72f3df0106631da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
