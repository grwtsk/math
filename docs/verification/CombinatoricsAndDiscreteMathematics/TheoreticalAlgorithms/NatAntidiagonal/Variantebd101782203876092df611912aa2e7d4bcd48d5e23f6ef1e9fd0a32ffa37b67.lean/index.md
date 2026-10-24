# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatAntidiagonal.Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c426ccfe858215afcaccfe4d9169353fb01f3b5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c426ccfe858215afcaccfe4d9169353fb01f3b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.NatAntidiagonal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal--aeebaff63a2b1d2838cf17ff.md) | 31 | `declaration-track:aeebaff63a2b1d2838cf17ff3024ede003236d12b0787ebb7397c73e59503658` |
| 2 | `theorem` | [mem_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/mem-antidiagonal--cfcc9f0cddcd25840e962354.md) | 37 | `result-track:cfcc9f0cddcd25840e9623544a9a618fcf05c0baaf5e36845b6b66432f6282f1` |
| 3 | `theorem` | [card_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/card-antidiagonal--8deffb04d82c4e6e8cf8e86c.md) | 43 | `result-track:8deffb04d82c4e6e8cf8e86cf57f541a703d1516d908ca8b42f88937b9bd2298` |
| 4 | `theorem` | [antidiagonal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-zero--a6e6c24550f177fd1d677090.md) | 48 | `result-track:a6e6c24550f177fd1d6770900983dae4714d3b41962dadf1228ed2289cdd4bd5` |
| 5 | `theorem` | [antidiagonal_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-succ--3bcafa9ccd8743b69b8712f8.md) | 51 | `result-track:3bcafa9ccd8743b69b8712f8d4a749e7cb88c2dbc50af606794b20a8876c2772` |
| 6 | `theorem` | [antidiagonal_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-succ--6564580bab94337c4e9886b8.md) | 62 | `result-track:6564580bab94337c4e9886b827edf46287d0f552abd145be9158c8367603197f` |
| 7 | `theorem` | [antidiagonal_succ_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-succ-succ--d7341fce5d78546b0746ccbf.md) | 73 | `result-track:d7341fce5d78546b0746ccbf2143c182bcfab0bd2b9f31c7c9ca95f8e1b87928` |
| 8 | `theorem` | [map_swap_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/map-swap-antidiagonal--ca3e25276130f33ca46ff4d8.md) | 87 | `result-track:ca3e25276130f33ca46ff4d8783933bfe93f258d95906af0b475097f83a9ff7b` |
| 9 | `theorem` | [map_prodComm_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/map-prodcomm-antidiagonal--585537ffcb8fba224cd1233b.md) | 92 | `result-track:585537ffcb8fba224cd1233b246b346eca94f28f9b4ba05edaea13a7e35044af` |
| 10 | `theorem` | [antidiagonal_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-congr--706404624a4cf7d9ba24ca9e.md) | 97 | `result-track:706404624a4cf7d9ba24ca9e37f8aa342a064f333aa85bf3635cc26efaf3c8da` |
| 11 | `theorem` | [antidiagonal_subtype_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-subtype-ext--1ebbd591491a6e82b621506d.md) | 106 | `result-track:1ebbd591491a6e82b621506d597eb84d8fd783b58d8789068f53fdbafc0a1aa9` |
| 12 | `theorem` | [antidiagonal.fst_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-fst-le--494e96931544b06ceded1bb3.md) | 109 | `result-track:494e96931544b06ceded1bb34edaeb8121ffac34ff8d66dac09470ecc9ec4af3` |
| 13 | `theorem` | [antidiagonal.fst_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-fst-lt--7b8a09087ccf1b538cb58028.md) | 115 | `result-track:7b8a09087ccf1b538cb58028d149fb14ece60d5532c3028d69a40ed7db362512` |
| 14 | `theorem` | [antidiagonal.snd_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-snd-le--4ffed7c501c54a6710facd0a.md) | 118 | `result-track:4ffed7c501c54a6710facd0a878283ea69caca270fd1e6abd836b79f630d7b2c` |
| 15 | `theorem` | [antidiagonal.snd_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-snd-lt--6d0a9e64327ae17ef430914c.md) | 124 | `result-track:6d0a9e64327ae17ef430914c076315ea3ac0c35d4086d53c35c4b62d4a7838fb` |
| 16 | `theorem` | [filter_fst_eq_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/filter-fst-eq-antidiagonal--1f097f96547e70f6e1f5750f.md) | 127 | `result-track:1f097f96547e70f6e1f5750f231e1fc117b88ee15442977fc978ad633e7a4957` |
| 17 | `theorem` | [filter_snd_eq_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/filter-snd-eq-antidiagonal--328c2c1bda4b437723a24756.md) | 138 | `result-track:328c2c1bda4b437723a24756ba6df9e547d78d1928ccf86a736f26b31f262b8e` |
| 18 | `lemma` | [antidiagonal_filter_snd_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-filter-snd-le-of-le--69459dc4d8c93f9ff84a2db7.md) | 146 | `result-track:69459dc4d8c93f9ff84a2db7ab962583b9b5ae87e1c09baef1c7e3cda943473c` |
| 19 | `lemma` | [antidiagonal_filter_fst_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-filter-fst-le-of-le--f3a09a94fdc1bbdd7724e35a.md) | 160 | `result-track:f3a09a94fdc1bbdd7724e35ab9a839e850220d1e3d0cdd3b4873ae4576033d79` |
| 20 | `lemma` | [antidiagonal_filter_le_fst_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-filter-le-fst-of-le--4301a6d0fbd1d6640facbf9a.md) | 172 | `result-track:4301a6d0fbd1d6640facbf9ae122ccb5d4d7755209448b5052020b604e8710ec` |
| 21 | `lemma` | [antidiagonal_filter_le_snd_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonal-filter-le-snd-of-le--54d34ed2ef95ac32a45f6aaa.md) | 185 | `result-track:54d34ed2ef95ac32a45f6aaa151cb8c607ef7da71993ee5090b37fb3f2e408e5` |
| 22 | `def` | [sigmaAntidiagonalEquivProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/sigmaantidiagonalequivprod--0bf0e8201590e93cab41723a.md) | 202 | `declaration-track:0bf0e8201590e93cab41723a25b83a883493a8cdc90b804dd68fbedb4714d988` |
| 23 | `def` | [antidiagonalEquivFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/declarations/antidiagonalequivfin--9f46c12ceacc9d2ddb8b5567.md) | 219 | `declaration-track:9f46c12ceacc9d2ddb8b55676cd07dc838e6158ae833f1ee192b3ef1e3ac14bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
