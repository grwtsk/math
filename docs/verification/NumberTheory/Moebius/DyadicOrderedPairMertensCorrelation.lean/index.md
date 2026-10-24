# Verification target: GRWTSK.NumberTheory.Moebius.DyadicOrderedPairMertensCorrelation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00aa20b040a9182f002109f3c38484a941fb37e2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00aa20b040a9182f002109f3c38484a941fb37e2`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicBlockWeightedMertensSquare`](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensPrefixSquareDiagonal](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/mertensprefixsquarediagonal--2c0d1c073b6a720df26e680e.md) | 37 | `declaration-track:2c0d1c073b6a720df26e680ef61e8f0868d5fd12caacc4f0bb17716e9532a6ab` |
| 2 | `def` | [mertensPrefixOrderedPairCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/mertensprefixorderedpaircorrelation--6e1ba1b87b2c6f4c96f8ee2a.md) | 41 | `declaration-track:6e1ba1b87b2c6f4c96f8ee2a44e36420156e2f63c686c05b59c20a4e9e767a02` |
| 3 | `def` | [weightedMertensDyadicDiagonal](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/weightedmertensdyadicdiagonal--7e5795ca9f42459a58591015.md) | 47 | `declaration-track:7e5795ca9f42459a5859101578c7428c2c1d741387f529e75908c402f4b7cd2c` |
| 4 | `def` | [weightedMertensDyadicOrderedPairCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/weightedmertensdyadicorderedpaircorrelation--d5dd4d80afab137672e525cd.md) | 54 | `declaration-track:d5dd4d80afab137672e525cd22ec763701454e53ef9a3dedc13631c1b0e93ca8` |
| 5 | `def` | [SubpolynomialDyadicOrderedPairMertensCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/subpolynomialdyadicorderedpairmertenscorrelation--62376c1179d340d35d78829c.md) | 61 | `declaration-track:62376c1179d340d35d78829c74158c5bd98529eafc6d868f53872994d8d8a638` |
| 6 | `theorem` | [square_finset_sum_eq_diagonal_add_orderedPair](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/square-finset-sum-eq-diagonal-add-orderedpair--b93e846f8d82a38fecdfaafb.md) | 67 | `result-track:b93e846f8d82a38fecdfaafbbd9d240cb52523947af423653afe3edf06737438` |
| 7 | `theorem` | [pickupMertensPrefix_sq_eq_diagonal_add_orderedPair](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/pickupmertensprefix-sq-eq-diagonal-add-orderedpair--82ce5c734c64dc733f4ebaf7.md) | 100 | `result-track:82ce5c734c64dc733f4ebaf7bfe52602260d35b3f81c36d69a74b0bed0ffce67` |
| 8 | `theorem` | [mertensPrefixSquareDiagonal_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/mertensprefixsquarediagonal-nonneg--4c3d46d9f771a4b347e6cc95.md) | 109 | `result-track:4c3d46d9f771a4b347e6cc952c8f5fd1d1b9f9908f02721f3339a39d87ba4c9c` |
| 9 | `theorem` | [mertensPrefixSquareDiagonal_le_natCast](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/mertensprefixsquarediagonal-le-natcast--497b1516be099bac7cd8d030.md) | 115 | `result-track:497b1516be099bac7cd8d030ecca69675d9928c8aaf997f2cff3114acbf42279` |
| 10 | `theorem` | [weightedMertensDyadicDiagonal_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/weightedmertensdyadicdiagonal-nonneg--0e49c999a96d4d14c1f63f9c.md) | 128 | `result-track:0e49c999a96d4d14c1f63f9ce9feb2769e6dc4d03a77bfca25bdc92b421b3d10` |
| 11 | `theorem` | [weightedMertensDyadicBlock_eq_diagonal_add_orderedPair](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/weightedmertensdyadicblock-eq-diagonal-add-orderedpair--c3b5b6727da3a867e5916030.md) | 139 | `result-track:c3b5b6727da3a867e59160308ec61dacb48e3aa24c557b305471e252809fadea` |
| 12 | `theorem` | [weightedMertensDiagonal_summand_le_inv_dyadic](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/weightedmertensdiagonal-summand-le-inv-dyadic--ce8f5d833610480c88635743.md) | 154 | `result-track:ce8f5d833610480c88635743ba8b7a72cd0cdc8f3fbc30c0697a5c8f4c94e68e` |
| 13 | `theorem` | [weightedMertensDyadicDiagonal_le_one](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/weightedmertensdyadicdiagonal-le-one--fd06a7ba03eac817838d463f.md) | 188 | `result-track:fd06a7ba03eac817838d463f43e51d8244d836f8a15ae109168c17d4742e5966` |
| 14 | `theorem` | [weightedMertensDyadicOrderedPairCorrelation_le_block](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/weightedmertensdyadicorderedpaircorrelation-le-block--940fa9ca8d05a2e5d0f386d7.md) | 211 | `result-track:940fa9ca8d05a2e5d0f386d7c2d39680f8f1e5f07f3bd529df1e681e00ef6ab1` |
| 15 | `theorem` | [one_le_dyadic_rpow](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/one-le-dyadic-rpow--af65cf9709e7b256f6ffb0c8.md) | 217 | `result-track:af65cf9709e7b256f6ffb0c8a74190d11dd9e24ab576ab817911bee6c3d4366f` |
| 16 | `theorem` | [subpolynomialOrderedPair_of_dyadicBlock](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/subpolynomialorderedpair-of-dyadicblock--805a0463de358fffb1d4d157.md) | 225 | `result-track:805a0463de358fffb1d4d1570c7f486483153fc011ad770665827f50ce2fbd32` |
| 17 | `theorem` | [subpolynomialDyadicBlock_of_orderedPair](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/subpolynomialdyadicblock-of-orderedpair--efa371d0874b5d8e5473aaf2.md) | 237 | `result-track:efa371d0874b5d8e5473aaf22d2db3a0c455c14500dcb2ab0bf8a42f9a93b297` |
| 18 | `theorem` | [subpolynomialDyadicOrderedPair_iff_block](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/subpolynomialdyadicorderedpair-iff-block--de98230d2c67238ae9825dbd.md) | 260 | `result-track:de98230d2c67238ae9825dbda3881025a14964809d38ab221882a5aabb2637b6` |
| 19 | `theorem` | [subpolynomialDyadicOrderedPair_iff_cumulative](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/subpolynomialdyadicorderedpair-iff-cumulative--3e965e85977c0bfeb1dab0a8.md) | 266 | `result-track:3e965e85977c0bfeb1dab0a8b72e5e51fdb3b7d0a39ebadd5f4bf2970656d9db` |
| 20 | `theorem` | [subpolynomialDyadicOrderedPair_iff_allPositiveWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/subpolynomialdyadicorderedpair-iff-allpositiveweightedmertenssquare--4db91ddda1f6867aae5100b6.md) | 272 | `result-track:4db91ddda1f6867aae5100b60486b82d5be265a45adb8bc9c86d32af76ba64b9` |
| 21 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicOrderedPairMertensCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/declarations/riemannhypothesis-of-subpolynomialdyadicorderedpairmertenscorrelation--856272a4144234c0f0d0e718.md) | 280 | `result-track:856272a4144234c0f0d0e7188ae471352f0c17691384ad2fe2edc4985aa6ccf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
