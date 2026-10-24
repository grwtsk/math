# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PrimeSideB.Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1934960950af75446e27ed57e91a2883188050c",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1934960950af75446e27ed57e91a2883188050c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideTemp` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/isbigo--0bfba71870f21ad289173245.md) | 53 | `result-track:0bfba71870f21ad2891732457afe827b29b8b30b0c528c2cbea45120f084dfbe` |
| 2 | `lemma` | [of_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/of-isbigo--7ceda3ed41ceed3404b26db1.md) | 61 | `result-track:7ceda3ed41ceed3404b26db1798e382603854219a9a137bd860e97a92f904b81` |
| 3 | `lemma` | [iff_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/iff-isbigo--7be46454ef61c55fb5290e10.md) | 70 | `result-track:7be46454ef61c55fb5290e10d728f14708c0004a8c2a66d6fefd8eab0a0fa5b7` |
| 4 | `lemma` | [mono_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/mono-right--9fc9fa8a2dbf6b1848dd8b3f.md) | 73 | `result-track:9fc9fa8a2dbf6b1848dd8b3fe0c59c930a581c37e7bae0d9d3d51dd89595bf3f` |
| 5 | `lemma` | [mono_right'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/mono-right--6413c65aebe33ef2d002e03b.md) | 81 | `result-track:6413c65aebe33ef2d002e03bdcf548f0d8b65096c5942103578df3153218717b` |
| 6 | `lemma` | [of_eventually_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/of-eventually-le--8cb4e7f65ded92f16d59ddb7.md) | 90 | `result-track:8cb4e7f65ded92f16d59ddb7b787ed50c216ebdac47d1e036935f44aa9585bb8` |
| 7 | `lemma` | [eventually_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/eventually-le--c1679025baaa095e8842c95c.md) | 95 | `result-track:c1679025baaa095e8842c95c95542cc04d3baa2ea4db02b0f17df70d06ad3843` |
| 8 | `lemma` | [add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/add--c9d2585b648969408e229540.md) | 100 | `result-track:c9d2585b648969408e2295403fe17d796bb21edcf73dbf752a18dbe987eb5d91` |
| 9 | `lemma` | [sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/sub--c49f45f8bd0e0eb23c0e63de.md) | 110 | `result-track:c49f45f8bd0e0eb23c0e63de77709ab63cedd5da44c81b32d234f80a4cadd79d` |
| 10 | `lemma` | [const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/const-mul--e011d40811129f24364b0c45.md) | 120 | `result-track:e011d40811129f24364b0c4558ed5966182bfa2b620b5601086cb7c29015bbf4` |
| 11 | `lemma` | [of_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/of-abs-le--f3aa27c9b69d3d51735d474f.md) | 130 | `result-track:f3aa27c9b69d3d51735d474f4d8b5aa1f3a416c4bab8b196c07618f5ae480ab3` |
| 12 | `lemma` | [congr_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/congr-left--3cacdd90dc75739aff02e218.md) | 136 | `result-track:3cacdd90dc75739aff02e2185da4f80b5181a98b90a679af376ef6bfebe1f7db` |
| 13 | `lemma` | [majorant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/majorant-nonneg--bb87c68a496747036a379790.md) | 140 | `result-track:bb87c68a496747036a3797905769dc1a51267416ab4ea7af59bbb08a4648474a` |
| 14 | `lemma` | [l_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/l-tendsto-attop--3a4b159655b73d492b6e82ce.md) | 151 | `result-track:3a4b159655b73d492b6e82ce887cd92667084c42da4d157f346b6d4e340d3de1` |
| 15 | `lemma` | [ell1_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/ell1-eq--6866d6bb87ea60ec889e4472.md) | 155 | `result-track:6866d6bb87ea60ec889e4472c328f36e4fbb536bdb079d15279de4854289e81a` |
| 16 | `lemma` | [two_log_two_sub_one_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/two-log-two-sub-one-pos--d02847b97fcd7a3cb5dfbc66.md) | 158 | `result-track:d02847b97fcd7a3cb5dfbc66142aa977961328cac96d9b1cf94182a08620f849` |
| 17 | `lemma` | [l_lt_ell1](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/l-lt-ell1--69f69def8d1e396802fbb615.md) | 162 | `result-track:69f69def8d1e396802fbb615e5880696d770c862cd08574778bc6f306f8e859c` |
| 18 | `lemma` | [ell1_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/ell1-tendsto-attop--ff417495db9687f7678770e5.md) | 165 | `result-track:ff417495db9687f7678770e58b3bda6c005f374dbe7dd70234597d39a744fe68` |
| 19 | `lemma` | [X_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/x-pos--0b21149d95c87bb3349d791e.md) | 170 | `result-track:0b21149d95c87bb3349d791e97cdf9fc0ffbae08f800256485cb46681111318a` |
| 20 | `lemma` | [X_eq_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/x-eq-rpow--c5eae0082d2677fd2711bd17.md) | 173 | `result-track:c5eae0082d2677fd2711bd176d9e043a81b5e956cdfe3ee9df4742e7f59dd484` |
| 21 | `lemma` | [L_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/l-tendsto-attop--46684181dec650ac66444633.md) | 177 | `result-track:46684181dec650ac6644463329733935f84c2986daa269c2949b5da825fc6aa8` |
| 22 | `lemma` | [log_l_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/log-l-tendsto-attop--e09735e45369c9d1702b0e5d.md) | 181 | `result-track:e09735e45369c9d1702b0e5de024d5c3a5fb1039df9c1f5c4f7fd3d0868d9b68` |
| 23 | `lemma` | [eventually_l_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/eventually-l-ge--ab76c6229a05f63b730c7355.md) | 184 | `result-track:ab76c6229a05f63b730c7355fbf0ce0684f5cac24ffe5181f4cd045e48f9bf18` |
| 24 | `lemma` | [eventually_log_l_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/eventually-log-l-ge--47da8ba69446056693a49b43.md) | 186 | `result-track:47da8ba69446056693a49b433a8f5f6d3363a0ecac4e1d9b43010efea99a545e` |
| 25 | `lemma` | [eventually_L_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/eventually-l-ge--aaf32186f62a1304ddc7d840.md) | 189 | `result-track:aaf32186f62a1304ddc7d84049b20d11533f547fe0b269472be0466456dfa0db` |
| 26 | `lemma` | [l_le_ell1](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/l-le-ell1--a7df3f5244698bf94fd217d7.md) | 192 | `result-track:a7df3f5244698bf94fd217d749e1ccf384f9527283892090b8af26910add53d2` |
| 27 | `lemma` | [eventually_ell1_le_two_l](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/eventually-ell1-le-two-l--736d94981503127509c9d9ce.md) | 194 | `result-track:736d94981503127509c9d9ce7fbdb4f6411c509a810b68f2662ca32956a02b99` |
| 28 | `lemma` | [L_le_l](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/l-le-l--2f11209bc7ceee6858f9f453.md) | 201 | `result-track:2f11209bc7ceee6858f9f453aae8141dbb87ba20e5790a90ff89c72a963ba86d` |
| 29 | `lemma` | [sqrt_X_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/sqrt-x-eq--84b1d226dfd1efe318eaa17d.md) | 205 | `result-track:84b1d226dfd1efe318eaa17dc909bf43a65ac945067a0a872c7bbe3579178fff` |
| 30 | `lemma` | [sqrt_X_le_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/sqrt-x-le-rpow--df7314f9241e18f820e7d7b4.md) | 210 | `result-track:df7314f9241e18f820e7d7b445178f8c04bb44920012fe216e2af8a3388175cc` |
| 31 | `lemma` | [eventually_X_le_T](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/eventually-x-le-t--4284d63b3ebfcb02ea150121.md) | 219 | `result-track:4284d63b3ebfcb02ea150121a5047f3048b110302f54083b8082c1720a17eb28` |
| 32 | `lemma` | [eventually_one_le_X](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/eventually-one-le-x--015504edaba804fa67487556.md) | 230 | `result-track:015504edaba804fa674875569c2ae4a33487dc4815209aa86350f2595009eb03` |
| 33 | `lemma` | [rpow_half_sub_one_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/rpow-half-sub-one-mul--fa9f7833b37c7b7cdb61084e.md) | 234 | `result-track:fa9f7833b37c7b7cdb61084ea96dde7d81a4ed94f14f93fdd4211e5317ad7678` |
| 34 | `lemma` | [calE_summands_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/cale-summands-nonneg--e92d214ed479d4d580c9523f.md) | 240 | `result-track:e92d214ed479d4d580c9523f25891c83b28daa94c3893c105e93187dca18a0ea` |
| 35 | `lemma` | [calE_ge_w_div_L](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/cale-ge-w-div-l--2ec231372a2de868a46887d4.md) | 249 | `result-track:2ec231372a2de868a46887d4747ffe59acfdfba680ca0b09391c55930dd7a71a` |
| 36 | `lemma` | [calE_ge_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/cale-ge-rpow--2d1e4b44675859e535167e19.md) | 255 | `result-track:2d1e4b44675859e535167e1922c51e2035edd10642081730f58ca950629a06d1` |
| 37 | `lemma` | [calE_ge_mid](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/cale-ge-mid--a6a8707e38e77d711e5b1b87.md) | 261 | `result-track:a6a8707e38e77d711e5b1b871fbc88f488af44afdc640d73ab01d2d752126084` |
| 38 | `lemma` | [calE_nonneg_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/cale-nonneg-eventually--bd623e17a5d4cd41eb5cec3a.md) | 266 | `result-track:bd623e17a5d4cd41eb5cec3a859835712c4d7ed3f7c43bdc57c110d277486bc3` |
| 39 | `theorem` | [calE_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/cale-tendsto-zero--3a981a73249ed48b94cb5d3d.md) | 273 | `result-track:3a981a73249ed48b94cb5d3da69d3d072d64073cec1371bc3b58b96c2a888c97` |
| 40 | `structure` | [Data](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/data--5452dace31eeb6091a31963a.md) | 331 | `declaration-track:5452dace31eeb6091a31963a3e5ad611a1b7f8b2e3363717c19298f55c6249b5` |
| 41 | `structure` | [Facts](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/facts--9c9b5d071dbbaaffbba8dff6.md) | 365 | `declaration-track:9c9b5d071dbbaaffbba8dff6c350acdc9dfddab171bccd2d328caf4047adde50` |
| 42 | `theorem` | [tr1](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/tr1--88e9185ca3955d927510e5e4.md) | 412 | `result-track:88e9185ca3955d927510e5e43d22e4b7768ba2cdd6359d2631e6042e2dadb1a4` |
| 43 | `lemma` | [Ncnt_lower](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/ncnt-lower--e525c7cbcf2c026e2ddada93.md) | 416 | `result-track:e525c7cbcf2c026e2ddada93a11f3657380820579cb3bc7ed5480d61cac80de3` |
| 44 | `lemma` | [T_le_Ncnt](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/t-le-ncnt--1429bfa600815cb9672b53f2.md) | 429 | `result-track:1429bfa600815cb9672b53f275aa6e6b9840b95f3ead198d4a1b586651f0beaa` |
| 45 | `lemma` | [Ncnt_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/ncnt-pos--ee835ee0af4a9c945688353a.md) | 435 | `result-track:ee835ee0af4a9c945688353a2074d4c94397e00024e72b08f09f2694b8dacbdd` |
| 46 | `theorem` | [tr1'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/tr1--aee29d65fc76ecc045c29a21.md) | 443 | `result-track:aee29d65fc76ecc045c29a2154401c76d3f1e6f97c94569149a55893b2990b53` |
| 47 | `lemma` | [regime](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/regime--f8ae940aa73f1383a8990ea9.md) | 483 | `result-track:f8ae940aa73f1383a8990ea90d3e4127a665d14d37c23dcc38e8d2a9cdc87847` |
| 48 | `theorem` | [tr2_first](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/tr2-first--78f69b836165c838d4cf500e.md) | 493 | `result-track:78f69b836165c838d4cf500e6321dd47caf375e9578e39fced9f7e4816fff0df` |
| 49 | `lemma` | [tr2_pointwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/tr2-pointwise--d077e8e0378f1874d6d1e534.md) | 553 | `result-track:d077e8e0378f1874d6d1e534a420bef011d74d696de16dcd435b458f64d5f13b` |
| 50 | `theorem` | [tr2](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/tr2--07f383973f5b898cd04ef4d6.md) | 662 | `result-track:07f383973f5b898cd04ef4d652774fe60e4c179cb54e0c1e9ca538f3c32e0242` |
| 51 | `lemma` | [ratio_pointwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/ratio-pointwise--a5fb589756b18e7e594f069e.md) | 690 | `result-track:a5fb589756b18e7e594f069e69998a85848c6907c2fad3f31b13cbcc3f123e7a` |
| 52 | `theorem` | [ratio](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/ratio--fafdecc912f32aa67d87de50.md) | 783 | `result-track:fafdecc912f32aa67d87de50275e57f3942d2e116a66914b35f4effd963747bf` |
| 53 | `theorem` | [tracesBounds_of_facts](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/declarations/tracesbounds-of-facts--12b8202f41b804d992fa58a9.md) | 817 | `result-track:12b8202f41b804d992fa58a9459fe8462376d0b73a97812a3fbaaef004673bda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
