# Verification target: GRWTSK.Algebra.Ring.Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "350cbc6d49b24051540cf5d302d0b3db629d8b9d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `350cbc6d49b24051540cf5d302d0b3db629d8b9d`.

Source path: `GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Grind.Ordered.Order` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedRing](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/orderedring--4d3c85db54debdfd34ccb359.md) | 33 | `declaration-track:4d3c85db54debdfd34ccb359a5a9c3f211e17b283499ea5e87bfb61fc4205bc9` |
| 2 | `theorem` | [neg_one_lt_zero](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/neg-one-lt-zero--f2731a2a6893ec09ede9645c.md) | 51 | `result-track:f2731a2a6893ec09ede9645c84c5a0ef82e45b8280e88bf66116c4cb4a4f30ce` |
| 3 | `theorem` | [ofNat_nonneg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/ofnat-nonneg--b60c01eec71b2082e33a0b69.md) | 57 | `result-track:b60c01eec71b2082e33a0b69ab44a125772de88a70b171f47fe1fcac77c2aff3` |
| 4 | `theorem` | [le_of_natCast_le_natCast](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/le-of-natcast-le-natcast--86456ad68c1b1196e5bd79fb.md) | 70 | `result-track:86456ad68c1b1196e5bd79fb4096619e01e0b09a5010e3d5177a2c4e855a383b` |
| 5 | `theorem` | [le_of_intCast_le_intCast](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/le-of-intcast-le-intcast--02018431526e2988d7a1e65f.md) | 96 | `result-track:02018431526e2988d7a1e65f8013ab7f6f656b7c0ac631788a767fd5d6b051a1` |
| 6 | `theorem` | [lt_of_natCast_lt_natCast](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/lt-of-natcast-lt-natcast--2c7136e1b68f0611ba2f4762.md) | 110 | `result-track:2c7136e1b68f0611ba2f47625d1445c65edabd37467347c91f15b0fbe8a1e04b` |
| 7 | `theorem` | [lt_of_intCast_lt_intCast](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/lt-of-intcast-lt-intcast--fc7d85d15bc9dbadbc7264f5.md) | 132 | `result-track:fc7d85d15bc9dbadbc7264f53a7084322e8393e5ae565a4193ee127637f4c731` |
| 8 | `theorem` | [natCast_le_natCast_of_le](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/natcast-le-natcast-of-le--65c1bf2e975813ec2787e03f.md) | 148 | `result-track:65c1bf2e975813ec2787e03f42f0ad3bec44ce0cc1bebd1cdebd4afb82b0b458` |
| 9 | `theorem` | [natCast_nonneg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/natcast-nonneg--6cc40a3e2f6e211d1e7f4631.md) | 166 | `result-track:6cc40a3e2f6e211d1e7f463182813a5f9221b82bd210a5d6e908ad8e9bdaae35` |
| 10 | `theorem` | [natCast_lt_natCast_of_lt](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/natcast-lt-natcast-of-lt--bdca4677aaabffd12218115e.md) | 169 | `result-track:bdca4677aaabffd12218115ebd15c86ccade18a822bdcc8dcb6d9164ec6d0529` |
| 11 | `theorem` | [pos_natCast_of_pos](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/pos-natcast-of-pos--c9481b08d3daff1e72efa6bf.md) | 185 | `result-track:c9481b08d3daff1e72efa6bfdd2e960f96bdf6325ff1a17fa72d3f9e4751a00e` |
| 12 | `theorem` | [pos_intCast_of_pos](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/pos-intcast-of-pos--609d903faae654d1c4b5337a.md) | 197 | `result-track:609d903faae654d1c4b5337ab1db35b3bbabacf6fa56e189317c3f7fb7a13eb9` |
| 13 | `theorem` | [neg_intCast_of_neg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/neg-intcast-of-neg--bb93e953f5f0976da7dd749a.md) | 207 | `result-track:bb93e953f5f0976da7dd749acd20984d9ae945af24bd4c9c18460c4291c2c717` |
| 14 | `theorem` | [nonneg_intCast_of_nonneg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/nonneg-intcast-of-nonneg--cee8e71b083b7ffb00a3ec32.md) | 214 | `result-track:cee8e71b083b7ffb00a3ec3293815532d92854469202b9727c442d716108e30b` |
| 15 | `theorem` | [nonpos_intCast_of_nonpos](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/nonpos-intcast-of-nonpos--d4e602f1fe9ab1f5c25b559a.md) | 223 | `result-track:d4e602f1fe9ab1f5c25b559ada0afe8bc99d6c211b4f9f71ecf8c3a35dcc7227` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/instance--44193bf5653747bbc71f123d.md) | 230 | `declaration-track:44193bf5653747bbc71f123d5fc532532efb2e9587f7f9b4b1a872ef4dc4e2a4` |
| 17 | `theorem` | [mul_pos](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-pos--73516e0e050ca7b9d3c7e07c.md) | 254 | `result-track:73516e0e050ca7b9d3c7e07c98ecd13fa65a4490295cea6f69cc9b2c59db92f6` |
| 18 | `theorem` | [zero_le_one](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/zero-le-one--9b2bbfc29fd69af0604b6ab1.md) | 257 | `result-track:9b2bbfc29fd69af0604b6ab1b47c7d110eb2142762c5545e85d19bdebbecf54c` |
| 19 | `theorem` | [not_one_lt_zero](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/not-one-lt-zero--683e59ff9f73abf3eb28fde2.md) | 260 | `result-track:683e59ff9f73abf3eb28fde2056359e1cf453e59c173efb38057d47ab1114c07` |
| 20 | `theorem` | [mul_le_mul_of_nonneg_left](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-le-mul-of-nonneg-left--a9f3863b2b5ac5f0db4d4f52.md) | 269 | `result-track:a9f3863b2b5ac5f0db4d4f52287f02f8c64116654d45af9526cc093c6cc466ba` |
| 21 | `theorem` | [mul_le_mul_of_nonneg_right](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-le-mul-of-nonneg-right--fc7a3411d32425a3aa560ed0.md) | 280 | `result-track:fc7a3411d32425a3aa560ed0cbcf6eed301452703082cea2f0d58ea8f73ebaa4` |
| 22 | `theorem` | [mul_le_mul_of_nonpos_left](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-le-mul-of-nonpos-left--629e181824d6b9a18bc885c6.md) | 293 | `result-track:629e181824d6b9a18bc885c61e3104b076e18eaa60da44690b1d852b294af1e5` |
| 23 | `theorem` | [mul_le_mul_of_nonpos_right](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-le-mul-of-nonpos-right--c18f176f31a21a5a4e8b7612.md) | 297 | `result-track:c18f176f31a21a5a4e8b76120426c735cc75f087e89eccde96550176c476d6df` |
| 24 | `theorem` | [mul_lt_mul_of_neg_left](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-lt-mul-of-neg-left--ed54ea3bc405164ed72b91ed.md) | 301 | `result-track:ed54ea3bc405164ed72b91edf61472b3c184bab40d3d6fd54f6339c38ddd80c7` |
| 25 | `theorem` | [mul_lt_mul_of_neg_right](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-lt-mul-of-neg-right--ab411178b1f5706f1f7ae8b3.md) | 305 | `result-track:ab411178b1f5706f1f7ae8b3c071fde73062e2c1c2c264afbee8cfb1327da9d0` |
| 26 | `theorem` | [mul_nonneg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-nonneg--63335f55228fc4e313318cfb.md) | 309 | `result-track:63335f55228fc4e313318cfb7f01020ed9e5043fb0d82eac8ae277725062a934` |
| 27 | `theorem` | [mul_nonneg_of_nonpos_of_nonpos](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-nonneg-of-nonpos-of-nonpos--fa94b9c57d2d003e0c3a1294.md) | 312 | `result-track:fa94b9c57d2d003e0c3a12946de174f7e3feb66c3f2c8bc2426fe1786bb541f3` |
| 28 | `theorem` | [mul_nonpos_of_nonneg_of_nonpos](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-nonpos-of-nonneg-of-nonpos--185c6bb4d58aa006befe8bfa.md) | 316 | `result-track:185c6bb4d58aa006befe8bfaa767490dca91dc592a2fb75cc93861ddc8b174b3` |
| 29 | `theorem` | [mul_nonpos_of_nonpos_of_nonneg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-nonpos-of-nonpos-of-nonneg--dbb045fc29bfe29922f891e9.md) | 320 | `result-track:dbb045fc29bfe29922f891e990893de8da73ea67de80be2d486f46bcedac0f5a` |
| 30 | `theorem` | [mul_pos_of_neg_of_neg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-pos-of-neg-of-neg--a7022f0caa5258cc6b8d38e9.md) | 324 | `result-track:a7022f0caa5258cc6b8d38e9e99f8d3551c5375d0afd53b10d89cba1853b4f77` |
| 31 | `theorem` | [mul_neg_of_pos_of_neg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-neg-of-pos-of-neg--d32fd9cad4a9d9ba1c8accd6.md) | 328 | `result-track:d32fd9cad4a9d9ba1c8accd6fa75b74871e9d4dab0e2cadadccf0f3cc920992e` |
| 32 | `theorem` | [mul_neg_of_neg_of_pos](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-neg-of-neg-of-pos--2b88c1f2437b66f7fe31971c.md) | 332 | `result-track:2b88c1f2437b66f7fe31971c48a8769324150db57030a49f3d69327259fde910` |
| 33 | `theorem` | [mul_nonneg_iff](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-nonneg-iff--ab9e69e8495012137b71d0d5.md) | 342 | `result-track:ab9e69e8495012137b71d0d50af2467d3d7d35288def3762a8980dca576c3516` |
| 34 | `theorem` | [mul_pos_iff](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/mul-pos-iff--6922feb51f281620b46e0cd1.md) | 358 | `result-track:6922feb51f281620b46e0cd148a7eef636e2f71b77c7bc34c97d9badff7b307a` |
| 35 | `theorem` | [sq_nonneg](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/sq-nonneg--4c323bb97e8cad88326ffde1.md) | 374 | `result-track:4c323bb97e8cad88326ffde1675dc57c875ce9a356bc3d0ce264c32bbe646eb8` |
| 36 | `theorem` | [sq_pos](../../../../mathematics/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/declarations/sq-pos--ec660777c3ee70cfcb1873ae.md) | 380 | `result-track:ec660777c3ee70cfcb1873ae27e41cd6300dc7d03de4cf2755595ef2087af768` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
