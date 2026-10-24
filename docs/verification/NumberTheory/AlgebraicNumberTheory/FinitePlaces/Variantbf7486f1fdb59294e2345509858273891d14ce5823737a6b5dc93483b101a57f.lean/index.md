# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.FinitePlaces.Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "276e6dcfcb94e989031eecbb4418cc2d3e75acc6",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `276e6dcfcb94e989031eecbb4418cc2d3e75acc6`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Ultra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.WithZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Factorization` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.NormedValued` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_lt_absNorm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/one-lt-absnorm--a09ca464f29e0d124fbb19f9.md) | 46 | `result-track:a09ca464f29e0d124fbb19f9ca505199bebbf346fb2a629eee4fe12cd6db2b98` |
| 2 | `lemma` | [one_lt_absNorm_nnreal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/one-lt-absnorm-nnreal--47a49ba91df337db179ccdcd.md) | 58 | `result-track:47a49ba91df337db179ccdcd373a6fe451547cecdb6bae06b765b0980caef016` |
| 3 | `lemma` | [absNorm_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/absnorm-ne-zero--4da02534b0c982740e34c204.md) | 63 | `result-track:4da02534b0c982740e34c204a4cce2f48aecc1b0eb98ca9d2f6745548cc17a06` |
| 4 | `def` | [adicAbv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/adicabv--2e6f41472023074a61bfc986.md) | 70 | `declaration-track:2e6f41472023074a61bfc986e815ba4469f09514c840553113e71a54d5ef7259` |
| 5 | `theorem` | [adicAbv_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/adicabv-def--58a0a69b77939d35dc8c06f0.md) | 86 | `result-track:58a0a69b77939d35dc8c06f06a6666377eadfe19df9b2d7133e1ceebce0cee28` |
| 6 | `def` | [FinitePlace.embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-embedding--2f13ce1f51e972b19035a07e.md) | 100 | `declaration-track:2f13ce1f51e972b19035a07ec4e8c2fbce0e8be16a793a074915820511c6945c` |
| 7 | `theorem` | [FinitePlace.embedding_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-embedding-apply--661aec126ae6b004a8cf9235.md) | 105 | `result-track:661aec126ae6b004a8cf9235dbb9122e63372091785d85b4b895fcd3a2112ef3` |
| 8 | `instance` | [instRankOneValuedAdicCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/instrankonevaluedadiccompletion--c79fb6264471cfa0e78ba711.md) | 107 | `declaration-track:c79fb6264471cfa0e78ba711e4b0022d3054fc483974bcc5713f452a02e98b8b` |
| 9 | `instance` | [instNormedFieldValuedAdicCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/instnormedfieldvaluedadiccompletion--ebc282e5b73a1e1d777aef7f.md) | 127 | `declaration-track:ebc282e5b73a1e1d777aef7f21703ecba33186d19a2e48080f8fc25e9930cc99` |
| 10 | `def` | [FinitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace--eda09bc214d209d794507e84.md) | 132 | `declaration-track:eda09bc214d209d794507e848ff8335114534487cec26b8f1fb083ae8f1c4b55` |
| 11 | `def` | [FinitePlace.mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-mk--a2dc2838777ef4a7a957f9b6.md) | 136 | `declaration-track:a2dc2838777ef4a7a957f9b6562f8ca8e0fc41e908d455698a08ea250321de24` |
| 12 | `lemma` | [toNNReal_valued_eq_adicAbv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/tonnreal-valued-eq-adicabv--09f0cbf4f9b448d33a290390.md) | 139 | `result-track:09f0cbf4f9b448d33a29039080088aa4a8570175ca89b275f3577f88c1a15562` |
| 13 | `theorem` | [FinitePlace.norm_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-norm-def--1348b082a2ac59ccb85c9fae.md) | 147 | `result-track:1348b082a2ac59ccb85c9fae80364c86cd2de0d72f5177737f100fa5743e615b` |
| 14 | `theorem` | [FinitePlace.norm_def'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-norm-def--7bdefbe1c6cf594086d259a1.md) | 153 | `result-track:7bdefbe1c6cf594086d259a13ab143c6485a3725d13eb29e9dabb1d28f31a77b` |
| 15 | `theorem` | [FinitePlace.norm_def_int](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-norm-def-int--e6a9dad3c6c6395ec9d5fe05.md) | 159 | `result-track:e6a9dad3c6c6395ec9d5fe0511b1325fbee283008e17ace55c9b10e134dfcecb` |
| 16 | `theorem` | [RingOfIntegers.HeightOneSpectrum.adicAbv_add_le_max](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/ringofintegers-heightonespectrum-adicabv-add-le-max--cb4674f5da47d571e4d23714.md) | 164 | `result-track:cb4674f5da47d571e4d2371471175c41271ed75ecb96aff20311cc72ae3d888a` |
| 17 | `theorem` | [RingOfIntegers.HeightOneSpectrum.adicAbv_natCast_le_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/ringofintegers-heightonespectrum-adicabv-natcast-le-one--e55c2054a42c0201334ddfd5.md) | 172 | `result-track:e55c2054a42c0201334ddfd5a979d6982b593525dc065e40c690a919fb6b8f9e` |
| 18 | `theorem` | [RingOfIntegers.HeightOneSpectrum.adicAbv_intCast_le_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/ringofintegers-heightonespectrum-adicabv-intcast-le-one--0d512fabcd2f3cc758b6bad7.md) | 179 | `result-track:0d512fabcd2f3cc758b6bad753c4fdb94acd61f5b9df9653b8ea001facc49319` |
| 19 | `theorem` | [FinitePlace.norm_le_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-norm-le-one--eabcad991d38948e22cace53.md) | 188 | `result-track:eabcad991d38948e22cace53095dabb3348db85f98447ffb5f9da2949e7743f8` |
| 20 | `theorem` | [FinitePlace.norm_eq_one_iff_notMem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-norm-eq-one-iff-notmem--653622fdca13518e3d0ceac5.md) | 195 | `result-track:653622fdca13518e3d0ceac54f94d7d1bda9a6d4a620fe924733d4d4ad76c41c` |
| 21 | `theorem` | [FinitePlace.norm_lt_one_iff_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/finiteplace-norm-lt-one-iff-mem--6121f51427ecc805793f0279.md) | 208 | `result-track:6121f51427ecc805793f0279689e691e9d12fd941b9fdfa295e8cf4748301162` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/instance--a26c0123d50d6f0b45507b52.md) | 220 | `declaration-track:a26c0123d50d6f0b45507b52aed6bdb277eadd92e3539bb8fe71ba7c5d80c17e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/instance--99cb19fa873c17aeac1be99f.md) | 224 | `declaration-track:99cb19fa873c17aeac1be99f484a0a65106ce5940841c66c5c73878abd9082e6` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/instance--779127ddcd90563baf67c6f4.md) | 229 | `declaration-track:779127ddcd90563baf67c6f4fcfc5f2ba0fbc5ddacf2f3b72adf6ca2431ed773` |
| 25 | `theorem` | [mk_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/mk-apply--ccdfcebd341599511b3b7ee1.md) | 233 | `result-track:ccdfcebd341599511b3b7ee1ad592cb85550147cda663834e6b188867d5f6bad` |
| 26 | `def` | [maximalIdeal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/maximalideal--8441b46af6716103d16195c5.md) | 238 | `declaration-track:8441b46af6716103d16195c599465aba7fe9a7e0aa9f875e968e727171b5193e` |
| 27 | `theorem` | [mk_maximalIdeal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/mk-maximalideal--32a1fe8a1614f77c690c7afe.md) | 241 | `result-track:32a1fe8a1614f77c690c7afe17ff933d3e9a8e44d03a89e2e2e7d6d3feb0389b` |
| 28 | `theorem` | [norm_embedding_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/norm-embedding-eq--85dab0ececca58e92d8745e5.md) | 244 | `result-track:85dab0ececca58e92d8745e50a81cc9fc7927c907ccf1bfeb5b35c36007b6430` |
| 29 | `theorem` | [pos_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/pos-iff--d2515164d901a8f20a43e8eb.md) | 248 | `result-track:d2515164d901a8f20a43e8eb15b484a7e6b7dee1ac31798e3926480cce8fe8c2` |
| 30 | `theorem` | [mk_eq_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/mk-eq-iff--44a99cd6bf4c4c7dad0a4ef9.md) | 251 | `result-track:44a99cd6bf4c4c7dad0a4ef9873b197fa9dc577f09344c293e15b13c22748235` |
| 31 | `theorem` | [maximalIdeal_mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/maximalideal-mk--d9d47f93fe0fc92c923bcd1c.md) | 265 | `result-track:d9d47f93fe0fc92c923bcd1c1454af2acdbabefb8c888e034d5bff6640aed915` |
| 32 | `def` | [equivHeightOneSpectrum](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/equivheightonespectrum--6f88bcf6163c481a0854b057.md) | 269 | `declaration-track:6f88bcf6163c481a0854b05757c6dd85f7187582728e16112915c43319b7858a` |
| 33 | `lemma` | [maximalIdeal_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/maximalideal-injective--49c84912b15194e078819d88.md) | 276 | `result-track:49c84912b15194e078819d885838c638b662228d24bc1b506511add41ae092a9` |
| 34 | `lemma` | [maximalIdeal_inj](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/maximalideal-inj--613f319a6ffdb6fd82d31752.md) | 279 | `result-track:613f319a6ffdb6fd82d31752af9082570c5db2a205b77dd8ce3ccdda71b2f67b` |
| 35 | `theorem` | [mulSupport_finite_int](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/mulsupport-finite-int--816855a6be1e2629a541e0c2.md) | 282 | `result-track:816855a6be1e2629a541e0c27f764b4248484128116f9baeff492c1580b45ccb` |
| 36 | `theorem` | [mulSupport_finite](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/mulsupport-finite--ba5f843a2ad28e2a038931b8.md) | 296 | `result-track:ba5f843a2ad28e2a038931b8dc634b702e72ef8db24970820c5963bedb8a0427` |
| 37 | `lemma` | [equivHeightOneSpectrum_symm_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/equivheightonespectrum-symm-apply--aeaea184909c18e1eb2e0059.md) | 320 | `result-track:aeaea184909c18e1eb2e0059adf4a1e4da011e1ec0901f37cd4545168df2b1e9` |
| 38 | `lemma` | [embedding_mul_absNorm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/declarations/embedding-mul-absnorm--a641ba2e19904e0a5293cbb7.md) | 328 | `result-track:a641ba2e19904e0a5293cbb75f3e263b63c67f7cc3dcd5fe10cd72e57ff4c0ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
