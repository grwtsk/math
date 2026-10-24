# Verification target: GRWTSK.Algebra.StandardSmoothCotangent.Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ccb44a1b832c83e42c7f87d86e291096fcf471a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/index.md) · [Full source](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ccb44a1b832c83e42c7f87d86e291096fcf471a`.

Source path: `GRWTSK/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Cotangent.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.StandardSmooth` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Kaehler` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Etale.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cotangentComplexAux](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/cotangentcomplexaux--d66b803c0549522bd096fee8.md) | 57 | `declaration-track:d66b803c0549522bd096fee80c89182bb6fa9304895eeea0a4074108cc580cde` |
| 2 | `lemma` | [cotangentComplexAux_apply](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/cotangentcomplexaux-apply--8b86b6758e8915b1162a64cf.md) | 62 | `result-track:8b86b6758e8915b1162a64cfcd7c713896f13784fb8e5345f728d9b90cb6ffc7` |
| 3 | `lemma` | [cotangentComplexAux_zero_iff](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/cotangentcomplexaux-zero-iff--f5ac4fe0d406f00eb96fe698.md) | 70 | `result-track:f5ac4fe0d406f00eb96fe6987bd306b61423d1dc32aca6753a32bb71cfc96e94` |
| 4 | `lemma` | [cotangentComplexAux_injective](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/cotangentcomplexaux-injective--ab787c9f1187e1d1e13e9dc3.md) | 82 | `result-track:ab787c9f1187e1d1e13e9dc3c5b1d7b41e26e3b2ca5cea696a8da8fb216934dc` |
| 5 | `lemma` | [cotangentComplexAux_surjective](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/cotangentcomplexaux-surjective--3d866517c34a0a00b01560b8.md) | 119 | `result-track:3d866517c34a0a00b01560b83f49eaae08e358a62140275e6e54073dc40aceaf` |
| 6 | `def` | [cotangentEquiv](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/cotangentequiv--b1b2146325a2d05a5b392681.md) | 130 | `declaration-track:b1b2146325a2d05a5b392681c6a6948b940b384565fea93e2f56d211cf64702b` |
| 7 | `lemma` | [cotangentComplex_injective](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/cotangentcomplex-injective--ac3cd24d4df00b97ea4780e8.md) | 133 | `result-track:ac3cd24d4df00b97ea4780e8a58e65af83562d693525b4c39ccb655af21e2db6` |
| 8 | `instance` | [subsingleton_h1Cotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/subsingleton-h1cotangent--f963633093a0872adc20b1bd.md) | 140 | `declaration-track:f963633093a0872adc20b1bd9ffe6c9116fd66d8509ca9ded02c165771acefe9` |
| 9 | `def` | [basisCotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/basiscotangent--4c871a3c74c113af0220331f.md) | 146 | `declaration-track:4c871a3c74c113af0220331f9b80a682f4ae9b7aee0be47121c67b943e62a1ea` |
| 10 | `lemma` | [basisCotangent_apply](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/basiscotangent-apply--6cb229664891daf161c62500.md) | 149 | `result-track:6cb229664891daf161c625005b709094545b8c7569516020b9fd975588f38ecc` |
| 11 | `instance` | [free_cotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/free-cotangent--d6ed12959650e4807f2099c2.md) | 158 | `declaration-track:d6ed12959650e4807f2099c2841dd956bcdb813c248f3286c610f74adcacd5bd` |
| 12 | `def` | [sectionCotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/sectioncotangent--375c0726b69a04dcb3c7f1c2.md) | 168 | `declaration-track:375c0726b69a04dcb3c7f1c2727d2fe8c9f400d0a7a9273793b545a61511d3f7` |
| 13 | `lemma` | [sectionCotangent_eq_iff](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/sectioncotangent-eq-iff--896cb6002b9d939d815c3ace.md) | 172 | `result-track:896cb6002b9d939d815c3ace2290553ffda0a516ebe37556f397f959c242a161` |
| 14 | `lemma` | [sectionCotangent_comp](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/sectioncotangent-comp--140b12b1905083409f4ac180.md) | 179 | `result-track:140b12b1905083409f4ac18008ada0738d2171150a89d2180f5b09556f2c620a` |
| 15 | `lemma` | [sectionCotangent_zero_of_notMem_range](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/sectioncotangent-zero-of-notmem-range--c6b334cd4502c3cf59344147.md) | 187 | `result-track:c6b334cd4502c3cf5934414732c67dd94985314a79f32316363e291daccd11ab` |
| 16 | `def` | [basisKaehlerOfIsCompl](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/basiskaehlerofiscompl--afecb2f057139ce7095de1aa.md) | 207 | `declaration-track:afecb2f057139ce7095de1aa1ca87e1000178155e274a4cc3c9b47a45f5d3297` |
| 17 | `def` | [basisKaehler](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/basiskaehler--8ec68617100ff7a0d7ba6a9c.md) | 228 | `declaration-track:8ec68617100ff7a0d7ba6a9c73819e0da4659aee084a98fd4668f9b83cac0408` |
| 18 | `theorem` | [free_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/free-kaehlerdifferential--2ebf2ac87b6d3eeb912dd4d6.md) | 236 | `result-track:2ebf2ac87b6d3eeb912dd4d6e34036a140f06f61c7c03255f498e301db975ddc` |
| 19 | `theorem` | [rank_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/rank-kaehlerdifferential--f15f5dbfb94141953cc5f3d1.md) | 244 | `result-track:f15f5dbfb94141953cc5f3d1714cb2e1684b1560c61147ec9b50e94be6ea5b45` |
| 20 | `instance` | [IsStandardSmooth.free_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/isstandardsmooth-free-kaehlerdifferential--ed3225f52e71b9005af13022.md) | 252 | `declaration-track:ed3225f52e71b9005af13022e9e9d6aa72ed1cf5c59bb50030ad55da3c4df601` |
| 21 | `instance` | [IsStandardSmooth.subsingleton_h1Cotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/isstandardsmooth-subsingleton-h1cotangent--dbafac60359241159d4ceac3.md) | 257 | `declaration-track:dbafac60359241159d4ceac31b7c134d7408cd79630e0314a6d6b1ec42b975ad` |
| 22 | `theorem` | [IsStandardSmoothOfRelativeDimension.rank_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/isstandardsmoothofrelativedimension-rank-kaehlerdifferential--6e7cc714c2a153ca93f62fcc.md) | 264 | `result-track:6e7cc714c2a153ca93f62fcc7356cb1de2b9cef22b00a37d1c5c40eb5cd448e7` |
| 23 | `instance` | [IsStandardSmoothOfRelationDimension.subsingleton_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/isstandardsmoothofrelationdimension-subsingleton-kaehlerdifferential--39ddb6e6367bd53a287fa94f.md) | 270 | `declaration-track:39ddb6e6367bd53a287fa94f3eb49644798706179d3395267a1ca8e3a7b55d99` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/instance--52d22c08fa475ef955caafaa.md) | 282 | `declaration-track:52d22c08fa475ef955caafaa96ef827fb3920a906d0b45ed4ae2b53df950a72a` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/declarations/instance--3861b3d9314cc99e9cdc9838.md) | 288 | `declaration-track:3861b3d9314cc99e9cdc98384d53a1d7d30c49c93f07dab3fc1bf761e97bebcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
