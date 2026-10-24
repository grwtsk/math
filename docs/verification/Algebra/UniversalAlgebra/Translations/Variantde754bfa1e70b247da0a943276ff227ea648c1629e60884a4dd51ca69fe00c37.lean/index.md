# Verification target: GRWTSK.Algebra.UniversalAlgebra.Translations.Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38b65994d6484a3d533198354aaad6574b7ae99e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38b65994d6484a3d533198354aaad6574b7ae99e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Translations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stream_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/stream-zero--0ca2687251c715211fbe397a.md) | 60 | `result-track:0ca2687251c715211fbe397a971ee3509912ca3f39f541e56dd82b8669bed15e` |
| 2 | `theorem` | [stream_eq_none_of_fr_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/stream-eq-none-of-fr-eq-zero--73fd909d6ba65571e517269f.md) | 66 | `result-track:73fd909d6ba65571e517269f0fb4a60a7ddf92f02cd393f1ac74a7329309172e` |
| 3 | `theorem` | [succ_nth_stream_eq_none_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/succ-nth-stream-eq-none-iff--9c96080c9138d6a327cc74fc.md) | 77 | `result-track:9c96080c9138d6a327cc74fcbb6b7e845b3f78284e09e163d500343a08685546` |
| 4 | `theorem` | [succ_nth_stream_eq_some_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/succ-nth-stream-eq-some-iff--fc4cdad9f91dcaadd6c526ad.md) | 87 | `result-track:fc4cdad9f91dcaadd6c526adadc974565f151f622b05404e79c243960b39e0e1` |
| 5 | `theorem` | [stream_succ_of_some](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/stream-succ-of-some--2d4e6baf0a8c1463e86a53de.md) | 98 | `result-track:2d4e6baf0a8c1463e86a53de64376ab6362d1144fbb73fc8c11c78fdbe3f2e2b` |
| 6 | `theorem` | [stream_succ_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/stream-succ-of-int--b7c5bdf1408ca7b4c642efa1.md) | 105 | `result-track:b7c5bdf1408ca7b4c642efa1255f8216301a975de5d6a23c2cebe3de198e863a` |
| 7 | `theorem` | [exists_succ_nth_stream_of_fr_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/exists-succ-nth-stream-of-fr-zero--4211e150f698a9caaddf9d77.md) | 112 | `result-track:4211e150f698a9caaddf9d775fb82745fa659399ced64ed9c7a78cdee2169efd` |
| 8 | `theorem` | [stream_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/stream-succ--9a95e0ddc8a85868b42d9114.md) | 128 | `result-track:9a95e0ddc8a85868b42d91144dc6aa51cc41ad6ede32a70568095e8022b6b30a` |
| 9 | `theorem` | [IntFractPair.seq1_fst_eq_of](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/intfractpair-seq1-fst-eq-of--21534d040d42ed5d55c53c95.md) | 159 | `result-track:21534d040d42ed5d55c53c95d6898f59735ca379b4fb9c80d427b1fb69c37b57` |
| 10 | `theorem` | [of_h_eq_intFractPair_seq1_fst_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-h-eq-intfractpair-seq1-fst-b--624383f5e08b1572da5e2710.md) | 163 | `result-track:624383f5e08b1572da5e27108c65c7cebe367f01ff2657ea7be792678c828091` |
| 11 | `theorem` | [of_h_eq_floor](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-h-eq-floor--1fb398a5d392ee60299a5275.md) | 170 | `result-track:1fb398a5d392ee60299a52757906c251f38e55f3ca662a1e7721c95cd9c180da` |
| 12 | `theorem` | [IntFractPair.get?_seq1_eq_succ_get?_stream](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/intfractpair-get-seq1-eq-succ-get-stream--f36b5fd10bfc92b5976a060c.md) | 190 | `result-track:f36b5fd10bfc92b5976a060c2131ed9ae4d7cd0e4503309ee8716549bb732ab0` |
| 13 | `theorem` | [of_terminatedAt_iff_intFractPair_seq1_terminatedAt](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-terminatedat-iff-intfractpair-seq1-terminatedat--051623988ed4f6ebaabf9ef8.md) | 204 | `result-track:051623988ed4f6ebaabf9ef8b2c8cdce940b4808aaed08166186387273c0711d` |
| 14 | `theorem` | [of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-terminatedat-n-iff-succ-nth-intfractpair-stream-eq-none--15e0aef3f5da5bf79442b209.md) | 209 | `result-track:15e0aef3f5da5bf79442b2090e2e126ae7d3539d75ab1938c8ff5745ebe58d44` |
| 15 | `theorem` | [IntFractPair.exists_succ_get?_stream_of_gcf_of_get?_eq_some](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/intfractpair-exists-succ-get-stream-of-gcf-of-get-eq-some--3c3f922964a9e77b3c7aeac8.md) | 226 | `result-track:3c3f922964a9e77b3c7aeac8063181c7fdd3f283a2d604236227d105cc7d99ca` |
| 16 | `theorem` | [get?_of_eq_some_of_succ_get?_intFractPair_stream](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/get-of-eq-some-of-succ-get-intfractpair-stream--f2d260ddb401b3d3026bbe9f.md) | 240 | `result-track:f2d260ddb401b3d3026bbe9f0e8bc1cffcc37a3125a730f4337277725c4e97b0` |
| 17 | `theorem` | [get?_of_eq_some_of_get?_intFractPair_stream_fr_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/get-of-eq-some-of-get-intfractpair-stream-fr-ne-zero--14707a456c720ce99dbdcef2.md) | 250 | `result-track:14707a456c720ce99dbdcef25840514d396417afc367d6e8d76d5cca13b723bc` |
| 18 | `theorem` | [of_s_head_aux](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-s-head-aux--b895679b3047042dfd76fed4.md) | 262 | `result-track:b895679b3047042dfd76fed4955a1f80f81143c59a53db97f9fe854ac43e0976` |
| 19 | `theorem` | [of_s_head](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-s-head--fe50ce63c84bf0540172fbed.md) | 274 | `result-track:fe50ce63c84bf0540172fbed558a9a220d08c401814374eaa62689c3483f00da` |
| 20 | `theorem` | [of_s_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-s-of-int--818d372c690b71e0ed9c8075.md) | 284 | `result-track:818d372c690b71e0ed9c8075262e71c0f9e7263fdd3c1e4b10f23571ec6fc183` |
| 21 | `theorem` | [of_s_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-s-succ--66b6952c79e8338d45a5ab9e.md) | 298 | `result-track:66b6952c79e8338d45a5ab9e9152d8a275a0c56985358287280a28cecf895b31` |
| 22 | `theorem` | [of_s_tail](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/of-s-tail--3f7343737eda83ca344630e7.md) | 318 | `result-track:3f7343737eda83ca344630e7169c4529e004c616e4a83dc7f9e11639fc4f9877` |
| 23 | `theorem` | [convergents'_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/convergents-of-int--bc5b21118148bf5a16a85591.md) | 327 | `result-track:bc5b21118148bf5a16a85591255be9de86b48aaa710abe6f7f53511f35dd5834` |
| 24 | `theorem` | [convergents'_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/declarations/convergents-succ--27d2b68dc4f93529fabc917a.md) | 339 | `result-track:27d2b68dc4f93529fabc917a6b5c609390e6eca01b5ab8f7a96b72a0a2f1d4d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
