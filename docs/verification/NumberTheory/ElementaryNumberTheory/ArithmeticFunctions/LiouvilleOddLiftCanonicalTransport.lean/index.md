# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleOddLiftCanonicalTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a6adcdcdcd52e2d7b7d89c47d22fca54e714b43",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a6adcdcdcd52e2d7b7d89c47d22fca54e714b43`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleOddLiftDyadicRecurrence`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Data.Finset.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oddLiftOffsets](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftoffsets--e97881c7fb0f305ba66188eb.md) | 44 | `declaration-track:e97881c7fb0f305ba66188eb0f40c8896b28029fdbc0afadecfe3eb454a57eaf` |
| 2 | `theorem` | [oddLift_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddlift-injective--40480c84c8c1617add61973f.md) | 48 | `result-track:40480c84c8c1617add61973fa3edf95b9760cd13ac322ade4a2f5b08087c0d0e` |
| 3 | `theorem` | [oddLiftOffsets_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftoffsets-card--47973548aaff6310b1e3714f.md) | 55 | `result-track:47973548aaff6310b1e3714f0d910db115f8723b7183e3271270c78e23fa6090` |
| 4 | `def` | [oddLiftSubtypeEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftsubtypeequiv--242534f9cd0deffbc743f85a.md) | 63 | `declaration-track:242534f9cd0deffbc743f85a73fe9d5120210c4421774f46ce14cc482b357a46` |
| 5 | `theorem` | [oddLiftSubtypeEquiv_val](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftsubtypeequiv-val--211f69f392130bc0ff3b8282.md) | 84 | `result-track:211f69f392130bc0ff3b82820d736b35f6f4bcedc9a46260e691a76ebb280156` |
| 6 | `def` | [oddLiftSubset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftsubset--1863a70f74c37bdf8a55a032.md) | 90 | `declaration-track:1863a70f74c37bdf8a55a032d26c2170e54023207f88f909ade897078708a9b3` |
| 7 | `theorem` | [oddLiftSubset_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftsubset-card--62d501c53681bde2d6c34dcf.md) | 96 | `result-track:62d501c53681bde2d6c34dcfe4e6b1c4376a2645c430234d97a89b41997120a5` |
| 8 | `theorem` | [oddLiftSubset_empty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftsubset-empty--00850808218e4abccfd4971d.md) | 103 | `result-track:00850808218e4abccfd4971d24333c8aec4775ef12db4fbcd6c41ae323c44ae1` |
| 9 | `theorem` | [oddLiftSubset_eq_empty_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftsubset-eq-empty-iff--5963ce75428200c87b043ef0.md) | 110 | `result-track:5963ce75428200c87b043ef08f9c8c04edd1b3fe14973ce83218728336e84894` |
| 10 | `theorem` | [oddLiftedProduct_eq_canonical](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftedproduct-eq-canonical--73837ae13ed6933f5fe4971d.md) | 118 | `result-track:73837ae13ed6933f5fe4971d7d1b2f978370aadabc5506ae3dde0b82d46106cb` |
| 11 | `theorem` | [oddLiftedMean_eq_canonical](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftedmean-eq-canonical--5daad855e23952e39b9a9aa6.md) | 140 | `result-track:5daad855e23952e39b9a9aa6ca8212e778d3c21e8f6e62adbbd1f17ff7fac3ed` |
| 12 | `theorem` | [oddLiftedAllOrderEnergy_eq_canonical](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/oddliftedallorderenergy-eq-canonical--6fc08f5ab9c49399088c6e4a.md) | 154 | `result-track:6fc08f5ab9c49399088c6e4abf4d2100e3f8198d12635bf62927f78b5a311f7e` |
| 13 | `theorem` | [canonicalOddLiftEnergy_le_source_residual](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/canonicaloddliftenergy-le-source-residual--86ee922420d156734b6146c5.md) | 172 | `result-track:86ee922420d156734b6146c5fcd6618d89d32f86781a72bf6cc703af8f47f1b8` |
| 14 | `theorem` | [canonicalOddLiftCyclicTV_le_source_residual](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/declarations/canonicaloddliftcyclictv-le-source-residual--6941e04575573ef4f8c1d5f0.md) | 183 | `result-track:6941e04575573ef4f8c1d5f0e0c0dfae141b0886cd6d2b407f25880b8fd46897` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
