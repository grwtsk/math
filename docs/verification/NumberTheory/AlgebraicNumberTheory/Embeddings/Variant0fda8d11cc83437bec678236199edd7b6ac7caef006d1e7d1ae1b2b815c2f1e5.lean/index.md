# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Embeddings.Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83380bf8ef22dc15cbf7de97c465721ee5dde49b",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83380bf8ef22dc15cbf7de97c465721ee5dde49b`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Complex` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/macro-rules--cf86046177ddb9c8dbfc8b3e.md) | 35 | `declaration-track:cf86046177ddb9c8dbfc8b3e62ca96f04d4f0384d95897ebdc0635092909998b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/instance--0ca867df99d278577b492228.md) | 50 | `declaration-track:0ca867df99d278577b492228aad981dad77036ab0f2bd575946e3914e38e0de6` |
| 3 | `theorem` | [card](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/card--0027bebe4e2c9b16331d4c53.md) | 56 | `result-track:0027bebe4e2c9b16331d4c53c52d14ad17cd2fca785a2e8bc911e9f20aaaad39` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/instance--8341475ee5e8fe05f99d719e.md) | 60 | `declaration-track:8341475ee5e8fe05f99d719ee8504897eca28784db15bb8b38057bcbe566ed13` |
| 5 | `theorem` | [range_eval_eq_rootSet_minpoly](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/range-eval-eq-rootset-minpoly--489556ced381fd2b37431100.md) | 75 | `result-track:489556ced381fd2b374311006ab925b16838dccfa6f91de9bcb472ee3a9fcbb4` |
| 6 | `theorem` | [coeff_bdd_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/coeff-bdd-of-norm-le--5350803a359cb48a5acafdf5.md) | 92 | `result-track:5350803a359cb48a5acafdf537523c4f91c2f91f0c371d6456d4fa41eb7a2de1` |
| 7 | `theorem` | [finite_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/finite-of-norm-le--86c610bacc7280c837b53f07.md) | 108 | `result-track:86c610bacc7280c837b53f071e3018fa93bd90a6033f5a83005eaa79a5b03349` |
| 8 | `theorem` | [pow_eq_one_of_norm_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/pow-eq-one-of-norm-eq-one--ee559710e6eecbedded73f64.md) | 122 | `result-track:ee559710e6eecbedded73f64fd108227a6da83c8e382ddacfe31531ee33db664` |
| 9 | `def` | [NumberField.place](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/numberfield-place--966a81233ac76e6a858ed03e.md) | 146 | `declaration-track:966a81233ac76e6a858ed03ef6b97a1e17e9914598d452bf546fe8c4d3403d1b` |
| 10 | `theorem` | [NumberField.place_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/numberfield-place-apply--86bfb4bbab2ff3f501626909.md) | 151 | `result-track:86bfb4bbab2ff3f501626909f32de371c70d4cd156398e2759843bfc1be7b840` |
| 11 | `def` | [conjugate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/conjugate--8969fb96847fc9664c507ea6.md) | 166 | `declaration-track:8969fb96847fc9664c507ea6000cc7fc14e7dca0d34b02ad49717a127abbf3f5` |
| 12 | `theorem` | [conjugate_coe_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/conjugate-coe-eq--93c5ce78cbed9f133effd79c.md) | 170 | `result-track:93c5ce78cbed9f133effd79cbdf7ae931615f1d6c2614eb58effbc50d180ff29` |
| 13 | `theorem` | [place_conjugate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/place-conjugate--a72f47ffc98fb6b40bbd1c73.md) | 173 | `result-track:a72f47ffc98fb6b40bbd1c73d18abb510711e3b5c11186c45f79f9635411a14e` |
| 14 | `def` | [IsReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal--7b4c7cf86248adbffcf49e3b.md) | 179 | `declaration-track:7b4c7cf86248adbffcf49e3b1a85a8d2f60e4554c9f3b3e564dd6bcf3779ab23` |
| 15 | `theorem` | [isReal_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal-iff--50e9f600fac85918c8a5d444.md) | 182 | `result-track:50e9f600fac85918c8a5d444db82c63e4b13feb31ebaaa2a892eb2a0af563e7a` |
| 16 | `theorem` | [isReal_conjugate_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal-conjugate-iff--bf6c7f1652541f4a41796941.md) | 185 | `result-track:bf6c7f1652541f4a4179694193229869b483e77e7a22a07d4d8bd515e54ac5e5` |
| 17 | `def` | [IsReal.embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal-embedding--f625d01c4c25aa2a421ba33b.md) | 190 | `declaration-track:f625d01c4c25aa2a421ba33bbbf8fe45d2bfe27018599bb90ea5de84fd788c46` |
| 18 | `theorem` | [IsReal.coe_embedding_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal-coe-embedding-apply--b67e2a2f3858a9bc67908072.md) | 201 | `result-track:b67e2a2f3858a9bc67908072b9d82f31451f20aeb1342e504d20451ae23d37fb` |
| 19 | `def` | [NumberField.InfinitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/numberfield-infiniteplace--8c819bc97813ce96783f7832.md) | 218 | `declaration-track:8c819bc97813ce96783f7832ff15dd7bf27581a528bd928ae384933383c71581` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/instance--6cc7c3395ccf2b9f78435e8f.md) | 221 | `declaration-track:6cc7c3395ccf2b9f78435e8f92a94c78ca35828bc9cba7247d481f4c04ab3a07` |
| 21 | `def` | [NumberField.InfinitePlace.mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/numberfield-infiniteplace-mk--7c72e7e1d265aeec46838997.md) | 226 | `declaration-track:7c72e7e1d265aeec4683899770c154d134cd4bd7d84c65f25d44be552b69d1a0` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/instance--6c13d384fc16bd68e43f5cad.md) | 234 | `declaration-track:6c13d384fc16bd68e43f5cad134a3a0191569a0e8f02291a8089ebaf53746824` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/instance--70bd9862ed1d943acbca2168.md) | 238 | `declaration-track:70bd9862ed1d943acbca21685383af664e613430d74f7b1cc6a8a5135fadb51e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/instance--de8fc573b1672e3ed17672b2.md) | 245 | `declaration-track:de8fc573b1672e3ed17672b2158691bf59373356dbd33085c57160e010f324de` |
| 25 | `theorem` | [apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/apply--6b352f6a44d7efd6710b0a9b.md) | 251 | `result-track:6b352f6a44d7efd6710b0a9b13821618430464ae1eb952aecf359bbc237fba7d` |
| 26 | `def` | [embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/embedding--bf405fbdc2db45386f114469.md) | 255 | `declaration-track:bf405fbdc2db45386f1144691dbdd9a9a862f6b2d128c5623f8fc3cca37b217a` |
| 27 | `theorem` | [mk_embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/mk-embedding--9fa1b34fa8d723d43d6bdea7.md) | 259 | `result-track:9fa1b34fa8d723d43d6bdea7e09b9d62ebdff29d733edb9fb527fc8da3cd0a92` |
| 28 | `theorem` | [mk_conjugate_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/mk-conjugate-eq--7a301f38d10fcb3d7f1e8f6b.md) | 263 | `result-track:7a301f38d10fcb3d7f1e8f6bffef72515a569f4e8041808e672a3483e6b756a2` |
| 29 | `theorem` | [norm_embedding_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/norm-embedding-eq--5cf59196c4d1769cc0d1016e.md) | 268 | `result-track:5cf59196c4d1769cc0d1016e0ac4db416f74977e987b7f3150fe141bc5b941ff` |
| 30 | `theorem` | [eq_iff_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/eq-iff-eq--bc0658cd97aae5286c1b9307.md) | 273 | `result-track:bc0658cd97aae5286c1b9307dae8257d25e40c05741b09b9885e6f609dadf8b7` |
| 31 | `theorem` | [le_iff_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/le-iff-le--62468fd8c150eb03dcbea340.md) | 277 | `result-track:62468fd8c150eb03dcbea340313483f783f44f3c044555489c4e8d7dd57f3535` |
| 32 | `theorem` | [pos_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/pos-iff--ed8cda28da68047af0f853d7.md) | 281 | `result-track:ed8cda28da68047af0f853d70bfcc5cb8008f87731df6273a3c0394013fe8eb5` |
| 33 | `theorem` | [mk_eq_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/mk-eq-iff--58961bce026a6696b8b94bd0.md) | 285 | `result-track:58961bce026a6696b8b94bd02627e06e51995b890a369ab085659a9c21648d33` |
| 34 | `def` | [IsReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal--2781247b53c7b155f58498a5.md) | 320 | `declaration-track:2781247b53c7b155f58498a5bd4eda1228f95f2d270e710fd6cda1a2d9372338` |
| 35 | `def` | [IsComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/iscomplex--14679b9e24192c62b88ebbd4.md) | 324 | `declaration-track:14679b9e24192c62b88ebbd43a13b25c6028dde8e05cfa7a882da71f02d03ff4` |
| 36 | `theorem` | [embedding_mk_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/embedding-mk-eq--4f88cba4a35b3f83f9c415a4.md) | 327 | `result-track:4f88cba4a35b3f83f9c415a439b53cf02573a44b29d27c474dd6d8dfc8c799df` |
| 37 | `theorem` | [embedding_mk_eq_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/embedding-mk-eq-of-isreal--bfe48e972ea1748362f470a0.md) | 332 | `result-track:bfe48e972ea1748362f470a0bd72e4fa403fd725b8d7596e35354df60e4d90ee` |
| 38 | `theorem` | [isReal_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal-iff--22b642ff319a7d0d5d00aac5.md) | 338 | `result-track:22b642ff319a7d0d5d00aac53de099bdd9dcbff6be71184a3c5af8c8d4f00dcb` |
| 39 | `theorem` | [isComplex_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/iscomplex-iff--18d3e491bd090d545b5fb846.md) | 345 | `result-track:18d3e491bd090d545b5fb8465206f4e50d3eabd24dfa3cced042aa89001012da` |
| 40 | `theorem` | [not_isReal_iff_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/not-isreal-iff-iscomplex--c1dc982d12d6e811c3d464ae.md) | 356 | `result-track:c1dc982d12d6e811c3d464aea0b7c70332862dbceb8319a4823174524834f5f9` |
| 41 | `theorem` | [isReal_or_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal-or-iscomplex--0555deb06267322feb97d180.md) | 360 | `result-track:0555deb06267322feb97d180c9cba4724572a4ee1366cd46d49ff996d39f0c0a` |
| 42 | `def` | [embedding_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/embedding-of-isreal--053b2e56c8f778da89a6d6d4.md) | 365 | `declaration-track:053b2e56c8f778da89a6d6d46590f790601825f13f1a74c712b6af900c47301b` |
| 43 | `theorem` | [embedding_of_isReal_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/embedding-of-isreal-apply--9164424b73334f50979a13c3.md) | 370 | `result-track:9164424b73334f50979a13c31cfbdb68d8ec22f0578f68a63974a5a024bc693c` |
| 44 | `theorem` | [isReal_of_mk_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/isreal-of-mk-isreal--273dd718bb0f69f322af85d3.md) | 375 | `result-track:273dd718bb0f69f322af85d338e006e0abf935c1b503621f6cde5fae77bcd599` |
| 45 | `theorem` | [not_isReal_of_mk_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/not-isreal-of-mk-iscomplex--95dca907a44977e58e8063e8.md) | 382 | `result-track:95dca907a44977e58e8063e8b1ccaa7ddff249aef57854cdacaff62486cc4112` |
| 46 | `def` | [mult](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/mult--9a6d7d5335f96b352e20d3df.md) | 390 | `declaration-track:9a6d7d5335f96b352e20d3dfcdb6998700598ebbe3ea4e5cb9f1b373b4486f1b` |
| 47 | `theorem` | [card_filter_mk_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/card-filter-mk-eq--6def8c65beb2493a13fe6462.md) | 392 | `result-track:6def8c65beb2493a13fe64620111f09d3a391b1f5cb6d5606b153ca1815a0206` |
| 48 | `def` | [mkReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/mkreal--18885bf85845bb60395c855b.md) | 407 | `declaration-track:18885bf85845bb60395c855b9a6e7e13c443a96b1ce572fc0fc7db32c1626c06` |
| 49 | `def` | [mkComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/mkcomplex--f85757cfa06b2baf74cce10c.md) | 416 | `declaration-track:f85757cfa06b2baf74cce10c3264f0f2d133a257d23c672c956f4fdbbdf8a58c` |
| 50 | `theorem` | [mkReal_coe](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/mkreal-coe--8ef7eac93f1a0b2c0394a91c.md) | 422 | `result-track:8ef7eac93f1a0b2c0394a91c1b3e4a6e0b6d86b5c1c6bc149bba017dddd80683` |
| 51 | `theorem` | [mkComplex_coe](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/mkcomplex-coe--b0750a66c54bde3a0e77c3ab.md) | 427 | `result-track:b0750a66c54bde3a0e77c3ab95d9a6e2f9d2f7e1eeabbe6e7f33708c6df55d19` |
| 52 | `instance` | [NumberField.InfinitePlace.fintype](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/numberfield-infiniteplace-fintype--ef996307af2206bb640a525b.md) | 433 | `declaration-track:ef996307af2206bb640a525b714806d67b0c17ff5fd0d36b1c6122e66ba9845f` |
| 53 | `theorem` | [prod_eq_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/prod-eq-abs-norm--6b2e6bf22dfe2eefb30bf3e5.md) | 441 | `result-track:6b2e6bf22dfe2eefb30bf3e556db12c32e8755ab68ea39003e0dbff3a37e7bf8` |
| 54 | `theorem` | [card_real_embeddings](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/card-real-embeddings--85d6485eef99d0058bc7b677.md) | 458 | `result-track:85d6485eef99d0058bc7b677b3069b742058e7dadb9eda2a92b1c735d88e9286` |
| 55 | `theorem` | [card_complex_embeddings](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/card-complex-embeddings--e9113e416555b0781d02abc4.md) | 463 | `result-track:e9113e416555b0781d02abc459f38e5922a0cfb7b3068804f690736eeb7a3c0f` |
| 56 | `theorem` | [card_add_two_mul_card_eq_rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/declarations/card-add-two-mul-card-eq-rank--296efac070d56a23a535f6d4.md) | 482 | `result-track:296efac070d56a23a535f6d43d04389908f78d32064dced44c581f2054ee2c3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
