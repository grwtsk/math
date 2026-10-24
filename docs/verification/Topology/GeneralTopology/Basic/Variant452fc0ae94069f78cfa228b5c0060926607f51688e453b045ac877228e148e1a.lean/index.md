# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e304855c08968c5e8dd40522b0237a18907f71b9",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e304855c08968c5e8dd40522b0237a18907f71b9`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousSqrt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/instance--8841d6079cabc5993a1e60fd.md) | 28 | `declaration-track:8841d6079cabc5993a1e60fd835c091ad4af1b008a6e2cdce6a2ed46b8dee116` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/instance--f42a1d23a8645b0a716a7dbc.md) | 31 | `declaration-track:f42a1d23a8645b0a716a7dbc15a459b7e0c92cd19afe16ae7e6a7619ea72e2d6` |
| 3 | `lemma` | [posPart_def](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-def--06b4ad9c6bb88db4e6f4a809.md) | 38 | `result-track:06b4ad9c6bb88db4e6f4a809413d058d201ae1625fa33510eee6243c1d339372` |
| 4 | `lemma` | [negPart_def](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-def--c1d140c9a368c2ab6a5e9b46.md) | 40 | `result-track:c1d140c9a368c2ab6a5e9b46161758d0a83e0268293c6f8e87afbb2ac846eb9b` |
| 5 | `lemma` | [posPart_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-zero--b0e16b3518735c3ee817a6c2.md) | 43 | `result-track:b0e16b3518735c3ee817a6c2e19a6508d999d17af0ef1e21f23b73252f70d7f9` |
| 6 | `lemma` | [negPart_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-zero--71cf35984d256ad35d357d10.md) | 46 | `result-track:71cf35984d256ad35d357d100fc012ce8f5d36fe2822561ed37248c25002ad7a` |
| 7 | `lemma` | [posPart_eq_zero_of_not_isSelfAdjoint](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-eq-zero-of-not-isselfadjoint--f83ec337de106f2d30607619.md) | 48 | `result-track:f83ec337de106f2d30607619e7490710e60f1f4a786bef5c280198c40ee004be` |
| 8 | `lemma` | [negPart_eq_zero_of_not_isSelfAdjoint](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-eq-zero-of-not-isselfadjoint--c33c93e1406ecaa3161a9c09.md) | 51 | `result-track:c33c93e1406ecaa3161a9c09c0ead4cfada642cc6c5840318fa03ccfeefdcc97` |
| 9 | `lemma` | [posPart_mul_negPart](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-mul-negpart--981bf983a08b292310f70d6e.md) | 55 | `result-track:981bf983a08b292310f70d6ee4a73550bccdf6026126092a5338dc35f7b4773f` |
| 10 | `lemma` | [negPart_mul_posPart](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-mul-pospart--01aa5dfd42d96e95b09e491f.md) | 65 | `result-track:01aa5dfd42d96e95b09e491f5d4eccb88b9e4d7d7d84057210e4f7727d0dd7bf` |
| 11 | `lemma` | [posPart_sub_negPart](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-sub-negpart--fe660f0e90ff012d0f89ae5d.md) | 74 | `result-track:fe660f0e90ff012d0f89ae5d7717a20f7943d1b8f0ea3cadc07d69a4c591ebf5` |
| 12 | `lemma` | [posPart_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-neg--cfa4ed209611b1b2beca2c56.md) | 86 | `result-track:cfa4ed209611b1b2beca2c567a3cce3f950429ca677d63673fecbbda31b3a3b1` |
| 13 | `lemma` | [negPart_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-neg--b2eccb1feac6c69c231455da.md) | 95 | `result-track:b2eccb1feac6c69c231455da887d290cb242a58a6591843fc9742a797779f416` |
| 14 | `lemma` | [posPart_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-smul--d3ad8505240455ff486142e4.md) | 103 | `result-track:d3ad8505240455ff486142e4f70fc54133a05a83d81ec5304acc14eb5c6530df` |
| 15 | `lemma` | [negPart_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-smul--901346b24574a3db9a689b88.md) | 116 | `result-track:901346b24574a3db9a689b881c098a682afa22e2fa59b24dcc0f947f26149f38` |
| 16 | `lemma` | [posPart_smul_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-smul-of-nonneg--caf1ff8bdde9fb875bf2ba44.md) | 119 | `result-track:caf1ff8bdde9fb875bf2ba4405b114bc216a6a710d5dcfd194bd6425596e76cd` |
| 17 | `lemma` | [posPart_smul_of_nonpos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-smul-of-nonpos--d01299dfc248d34b8bd4e8ed.md) | 122 | `result-track:d01299dfc248d34b8bd4e8edb95eeb95d132a4a5b1c97bf9df4bf5d6da773200` |
| 18 | `lemma` | [negPart_smul_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-smul-of-nonneg--5195e6088e93bc0d72574c82.md) | 126 | `result-track:5195e6088e93bc0d72574c826cc3c42f03997799047d82f048a0efe7d4dabfd9` |
| 19 | `lemma` | [negPart_smul_of_nonpos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-smul-of-nonpos--9d2720102ebdf5a7f8baffe8.md) | 129 | `result-track:9d2720102ebdf5a7f8baffe8c6210e5a7236bd82d542ee7b001e0901a7051b52` |
| 20 | `lemma` | [posPart_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-nonneg--55e274476391b139fa7b5524.md) | 139 | `result-track:55e274476391b139fa7b55241dcea4a885c05de0724a56ecaa1f32ab83c6ebfa` |
| 21 | `lemma` | [negPart_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-nonneg--890c5a3d2a40047d65ff3152.md) | 144 | `result-track:890c5a3d2a40047d65ff3152b6d2ed1beae3da3f816a9ea3c4a135951c5a8c40` |
| 22 | `lemma` | [posPart_eq_of_eq_sub_negPart](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-eq-of-eq-sub-negpart--cd6e8c1a9d7817c4423ee5b7.md) | 148 | `result-track:cd6e8c1a9d7817c4423ee5b7cfebbeacada0bbcbe2abefce822e71fc981c46b2` |
| 23 | `lemma` | [negPart_eq_of_eq_PosPart_sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-eq-of-eq-pospart-sub--cd2522d928779b6dd4ac4bd3.md) | 154 | `result-track:cd2522d928779b6dd4ac4bd30d0b5c961a36ed57a03dafecff4eaec515ad000b` |
| 24 | `lemma` | [le_posPart](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/le-pospart--3538405e8372dea85a387b58.md) | 160 | `result-track:3538405e8372dea85a387b58778c35c5ab0c234931ee513b994329c23a14b46b` |
| 25 | `lemma` | [neg_negPart_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/neg-negpart-le--caf765f90281a6aeb25bc84b.md) | 163 | `result-track:caf765f90281a6aeb25bc84b9b33b5b8303dcd141100473810d6fc403d1ad8f1` |
| 26 | `lemma` | [posPart_eq_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-eq-self--d284aded3c6dd739295b560d.md) | 169 | `result-track:d284aded3c6dd739295b560d958eff4328044ae179fe412ea36d51a159482a9c` |
| 27 | `lemma` | [eq_posPart_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/eq-pospart-iff--04469fab9b542c60c86cd42e.md) | 177 | `result-track:04469fab9b542c60c86cd42e2ee5ef1aff1a4e1371eefcd55eb948be8486f4c0` |
| 28 | `lemma` | [negPart_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-eq-zero-iff--c1e6a2dad0bfda9eda9e3487.md) | 180 | `result-track:c1e6a2dad0bfda9eda9e3487daf10a562c34de28ea5d080f2e8cee17066a2a87` |
| 29 | `lemma` | [negPart_eq_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-eq-neg--dbe0df887f6bcc928cc24ae5.md) | 186 | `result-track:dbe0df887f6bcc928cc24ae58ef01764e33408fa582e72b6f905cd569bef3d1b` |
| 30 | `lemma` | [eq_negPart_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/eq-negpart-iff--5d38c7e4b41e1d2f13cd6f07.md) | 200 | `result-track:5d38c7e4b41e1d2f13cd6f07ceb7847860814a7d01ae17b6fe1a0ecde3db97f7` |
| 31 | `lemma` | [posPart_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-eq-zero-iff--04a006c0d6bf4e5163274f04.md) | 203 | `result-track:04a006c0d6bf4e5163274f0410b6a84613fa223fb95d30fe54d11b392b0ac637` |
| 32 | `lemma` | [posPart_negPart_unique](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-negpart-unique--2dad79400cb48147047e7cf1.md) | 219 | `result-track:2dad79400cb48147047e7cf19525212b874dbae28a68a356b3a3f0e7bcb52bf4` |
| 33 | `lemma` | [posPart_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-one--fc5282f07207d075bf16403f.md) | 322 | `result-track:fc5282f07207d075bf16403feedb6c9ed83a9ee7f4edf1f2718e4aba4179a362` |
| 34 | `lemma` | [negPart_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-one--38f2340613548308e9d12d98.md) | 327 | `result-track:38f2340613548308e9d12d9820e816b31271f773d59d67c347317cc8293ae428` |
| 35 | `lemma` | [posPart_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-algebramap--f6b956ee1d5a9639793db4e5.md) | 332 | `result-track:f6b956ee1d5a9639793db4e5c4c4059a3b55f025de543b6d2788388fdc04270d` |
| 36 | `lemma` | [negPart_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/negpart-algebramap--1cd771d9125117dbc0709d63.md) | 337 | `result-track:1cd771d9125117dbc0709d63d11b8a61b5d39efdb847dd0f2a85b7ce808134b9` |
| 37 | `lemma` | [posPart_algebraMap_nnreal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-algebramap-nnreal--5c1d0b85a2dfc71c76f19aa4.md) | 343 | `result-track:5c1d0b85a2dfc71c76f19aa4cb17af9b69d5c67a18067f20bf936031eac77cd0` |
| 38 | `lemma` | [posPart_natCast](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/pospart-natcast--8dd8f2494141a5ed474b6230.md) | 349 | `result-track:8dd8f2494141a5ed474b6230d305a8cbda568191d6c3288786ef5cca4b849c41` |
| 39 | `lemma` | [CStarAlgebra.linear_combination_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/cstaralgebra-linear-combination-nonneg--60985522dc7cbf0103da28e3.md) | 365 | `result-track:60985522dc7cbf0103da28e3844afb7525d1a90ef343b19f2cc0c71c194b653c` |
| 40 | `lemma` | [CStarAlgebra.span_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/declarations/cstaralgebra-span-nonneg--318359a82ce7f43779d037f7.md) | 373 | `result-track:318359a82ce7f43779d037f787d7f16894b24509fb0428dcb0624f1031b8fc68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
