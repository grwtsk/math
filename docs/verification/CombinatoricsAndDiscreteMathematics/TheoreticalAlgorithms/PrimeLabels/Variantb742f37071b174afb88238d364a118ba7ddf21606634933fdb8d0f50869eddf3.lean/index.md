# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeLabels.Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ca93d595876734a499f0f9ae1e298de01e59d0b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ca93d595876734a499f0f9ae1e298de01e59d0b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.Composition` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/declarations/prime--27f2822296be2802f5484e4f.md) | 17 | `declaration-track:27f2822296be2802f5484e4fe4cda39fbbfdd11bd26c50f37e0f8c18eb8bd5bd` |
| 2 | `structure` | [PrimeLabel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/declarations/primelabel--8400fb611b3bd24c40adf2fb.md) | 26 | `declaration-track:8400fb611b3bd24c40adf2fbe87eee429e58f9a578d6a64a363cbf56c02db900` |
| 3 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/declarations/ext--08be6cb7a5609e9ce5a35ead.md) | 32 | `result-track:08be6cb7a5609e9ce5a35ead8f9d53096c52f53c4708c88c33c7313325630b92` |
| 4 | `def` | [primeLabelOfNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/declarations/primelabelofnat--ec51ae178f0e88f512a30fbb.md) | 44 | `declaration-track:ec51ae178f0e88f512a30fbba5cf914ccd442c705af9ed2f136e90fc36b6ac0c` |
| 5 | `structure` | [PrimeEnumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/declarations/primeenumerator--02b9c392ad9fe32d2191efcb.md) | 50 | `declaration-track:02b9c392ad9fe32d2191efcbad08aaabb840f7f8c46c41abbb11a98ec4f774ef` |
| 6 | `def` | [linearPrimeEnumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/declarations/linearprimeenumerator--074d5514df3b10504258b7b1.md) | 58 | `declaration-track:074d5514df3b10504258b7b1af34c9b4ed84518a3690cf42472cfabb31af0e0a` |
| 7 | `theorem` | [primeEnumerator_unbounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/declarations/primeenumerator-unbounded--8791423f0c227519b7abef63.md) | 76 | `result-track:8791423f0c227519b7abef63cda138bc336028a65faf59a53e9785a637a0c739` |
| 8 | `theorem` | [primeEnumerator_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variantb742f37071b174afb88238d364a118ba7ddf21606634933fdb8d0f50869eddf3.lean/declarations/primeenumerator-injective--369f561edbcb3bbd8c55a77d.md) | 81 | `result-track:369f561edbcb3bbd8c55a77dde15d811520297177cfb2057c12ed463ab67a28c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
