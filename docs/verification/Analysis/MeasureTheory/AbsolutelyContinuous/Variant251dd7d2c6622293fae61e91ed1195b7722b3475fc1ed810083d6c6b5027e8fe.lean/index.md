# Verification target: GRWTSK.Analysis.MeasureTheory.AbsolutelyContinuous.Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08fe04760740d0affbb02db3a05de4535658658e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08fe04760740d0affbb02db3a05de4535658658e`.

Source path: `GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Map` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AbsolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous--8661fc5cd2ccc234a234ff77.md) | 45 | `declaration-track:8661fc5cd2ccc234a234ff77473a7c00cc85df938dda84db88e04944980d5f93` |
| 2 | `theorem` | [absolutelyContinuous_of_le](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-of-le--4d77943edec35be2c9b8576e.md) | 51 | `result-track:4d77943edec35be2c9b8576ee2cb8507e7de5c12135195c5067f9346f14a32c5` |
| 3 | `theorem` | [absolutelyContinuous_of_eq](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-of-eq--c5b5f7e57b09f9188a949d1e.md) | 56 | `result-track:c5b5f7e57b09f9188a949d1ed3e10801b3e5fe05218a40e711cbb5794fb8f1ff` |
| 4 | `theorem` | [mk](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/mk--202d4d7e867f59b95fd29199.md) | 63 | `result-track:202d4d7e867f59b95fd29199dd2b9cb41dbec3994d7366b48f321af14455c53d` |
| 5 | `theorem` | [refl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/refl--03abbfbc20f55b817448a4c9.md) | 69 | `result-track:03abbfbc20f55b817448a4c9e170cfd04c2a3491c10eb1c0bca7c340f85d1716` |
| 6 | `theorem` | [rfl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/rfl--24432d7b489d78e604023dfe.md) | 72 | `result-track:24432d7b489d78e604023dfe0f2bc2438619644b9238bb267d1bfef5052fee99` |
| 7 | `instance` | [instIsRefl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/instisrefl--17545d611d72d04be4b4ea71.md) | 74 | `declaration-track:17545d611d72d04be4b4ea715ba598c7c1501524f7dd3d392955aa7d1cee766a` |
| 8 | `lemma` | [zero](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/zero--4dbe18d997d133971a4cf1ff.md) | 78 | `result-track:4dbe18d997d133971a4cf1ffb9e3b922b9276c2afbc20f191a6aef02af973308` |
| 9 | `theorem` | [trans](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/trans--be51a19bb0cd65a59d36653c.md) | 81 | `result-track:be51a19bb0cd65a59d36653c8930708caae4618da767f4dfa0decc4c663618d9` |
| 10 | `theorem` | [map](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/map--eb669bd3952f53b01c723569.md) | 84 | `result-track:eb669bd3952f53b01c7235698c68ade0b164db30d3fa090bfbc357518fea2ce2` |
| 11 | `theorem` | [smul_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/smul-left--a5d7fcb0058ffdd612c3f105.md) | 87 | `result-track:a5d7fcb0058ffdd612c3f1053ea5a4177372b1749b360349f11a10ac8f1a0256` |
| 12 | `theorem` | [smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/smul--4199f82d5ea0e53b42bf8421.md) | 94 | `result-track:4199f82d5ea0e53b42bf8421c6a3683ee7f452e1cae34cdac98c5384908a3776` |
| 13 | `lemma` | [add](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/add--02dd08c5353581e8ea762d49.md) | 102 | `result-track:02dd08c5353581e8ea762d49f5343ef21d906e6b580d3d2cf26b6e113e11da23` |
| 14 | `lemma` | [add_left_iff](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/add-left-iff--0cb65b13bdc6a1e349915138.md) | 107 | `result-track:0cb65b13bdc6a1e34991513894e6261fc273840170dae182b5b7c77133660873` |
| 15 | `lemma` | [add_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/add-left--efed9db0eccd89638cc580d5.md) | 115 | `result-track:efed9db0eccd89638cc580d53465900bbd68a8401a5ae010a47d6efb97b6df18` |
| 16 | `lemma` | [add_right](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/add-right--dde7a38dadaac73290938af1.md) | 118 | `result-track:dde7a38dadaac73290938af18550c7d3129b00ab2be6033195312693993aa944` |
| 17 | `lemma` | [absolutelyContinuous_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-zero-iff--98334f782b370b1629f30b22.md) | 126 | `result-track:98334f782b370b1629f30b22c1a5320668ccdd551c45f38115b3dcd9b787f2fd` |
| 18 | `lemma` | [absolutelyContinuous_sum_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-sum-left--c499feab9ddfddbca7010d9b.md) | 132 | `result-track:c499feab9ddfddbca7010d9bc5aeee9aea1e2223001b03367c07e1af6ad4763d` |
| 19 | `lemma` | [absolutelyContinuous_sum_right](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-sum-right--74511019a28ea4ee7e7d36e4.md) | 136 | `result-track:74511019a28ea4ee7e7d36e419dd9b661e20639c2289c1f30d57295ad7945724` |
| 20 | `lemma` | [smul_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/smul-absolutelycontinuous--c3fcadaaf4d89786b8b44bb6.md) | 142 | `result-track:c3fcadaaf4d89786b8b44bb6962d8c10505adf8a730b625446c2e7add7f5ae3d` |
| 21 | `theorem` | [absolutelyContinuous_of_le_smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-of-le-smul--b9a4ae2849eafcc9ac8cec65.md) | 144 | `result-track:b9a4ae2849eafcc9ac8cec652e514e4d665def917380b9e892af0a7816f286e8` |
| 22 | `lemma` | [absolutelyContinuous_smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-smul--9487d35b3eb01778a7653f06.md) | 148 | `result-track:9487d35b3eb01778a7653f06dfba90845134b09a52587c340c4115733d4021c5` |
| 23 | `theorem` | [ae_le_iff_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/ae-le-iff-absolutelycontinuous--c969689d1a2ac41d00c4e060.md) | 151 | `result-track:c969689d1a2ac41d00c4e0602ff824bc0a4b9d887c672c1ac932d7b952592112` |
| 24 | `theorem` | [AbsolutelyContinuous.ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-ae-eq--b719fad3a92108a014f13b42.md) | 161 | `result-track:b719fad3a92108a014f13b422f231219afc24ea2e7d622a8cab9edc43af67f85` |
| 25 | `theorem` | [AEDisjoint.of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/aedisjoint-of-absolutelycontinuous--be29bc9e987876a1a9e7bc19.md) | 166 | `result-track:be29bc9e987876a1a9e7bc1921a651702cb960aaa71b0f2001b4f7a6aa9f5cb9` |
| 26 | `theorem` | [AEDisjoint.of_le](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/aedisjoint-of-le--3dc184bce99cf1bf498723bf.md) | 170 | `result-track:3dc184bce99cf1bf498723bf42ff0cb2e17ee0185b01e6254ea3d759c40f57d9` |
| 27 | `theorem` | [ae_mono](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/ae-mono--ad720c56d9cbf61d56262ed0.md) | 176 | `result-track:ad720c56d9cbf61d56262ed041cb9bacbbd6cafc1ccd0804afe9dd8ea1e2b375` |
| 28 | `lemma` | [absolutelyContinuous_map](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean/declarations/absolutelycontinuous-map--f6b46b16fc7641d7e16f3d16.md) | 187 | `result-track:f6b46b16fc7641d7e16f3d16fc3e0e4dd1a4ed39d82794bda3039ecc6a17d781` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
