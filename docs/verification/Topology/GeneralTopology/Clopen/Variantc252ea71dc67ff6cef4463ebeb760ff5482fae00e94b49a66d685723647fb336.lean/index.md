# Verification target: GRWTSK.Topology.GeneralTopology.Clopen.Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce0b9c77949b5c9a5ae999f069159a29e2c3bf8b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce0b9c77949b5c9a5ae999f069159a29e2c3bf8b`.

Source path: `GRWTSK/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.BoolIndicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsClopen.isOpen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-isopen--80e64c3e782d70c8527edadb.md) | 24 | `result-track:80e64c3e782d70c8527edadb5d8b93a76ee712aba315ddf8505450103499f61b` |
| 2 | `theorem` | [IsClopen.isClosed](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-isclosed--1e43d7dd7aed96c7ff4be62b.md) | 26 | `result-track:1e43d7dd7aed96c7ff4be62be23d4d7be6e429f881af69f342083ba55bcb3d8d` |
| 3 | `theorem` | [isClopen_iff_frontier_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-iff-frontier-eq-empty--42df43f5429b563d3aedfd70.md) | 28 | `result-track:42df43f5429b563d3aedfd70bd0820774265c89b2b1f42ed2bf22e09a6eab759` |
| 4 | `theorem` | [IsClopen.union](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-union--80e99d65b12578a812a3ec8f.md) | 36 | `result-track:80e99d65b12578a812a3ec8f75c04eed0c3593bdac53a9bdcc745262a66b1280` |
| 5 | `theorem` | [IsClopen.inter](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-inter--0b4f299d465afd375b2f2633.md) | 39 | `result-track:0b4f299d465afd375b2f26330f3701d5afe56e666bd06eebad70d56ed01b178a` |
| 6 | `theorem` | [isClopen_empty](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-empty--327e951758de82ef4fbb4816.md) | 42 | `result-track:327e951758de82ef4fbb4816d2513a9ed7880edf4575257a6a3089e528a296bf` |
| 7 | `theorem` | [isClopen_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-univ--3c0f38c7f55c00d5ee1f5270.md) | 44 | `result-track:3c0f38c7f55c00d5ee1f5270cc5afed3448bb4ea3e3763f3715442d5c5e3d3a0` |
| 8 | `theorem` | [IsClopen.compl](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-compl--3b9ac8ac5e9677f11aff91e7.md) | 46 | `result-track:3b9ac8ac5e9677f11aff91e71f34b8b4df805156f72aff030647bf8803752a15` |
| 9 | `theorem` | [isClopen_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-compl-iff--ab0b5a220a52020ded7f56f9.md) | 50 | `result-track:ab0b5a220a52020ded7f56f9a195bd39f03daeacc7f554aed41626fad6a1d211` |
| 10 | `theorem` | [IsClopen.diff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-diff--f85dc05ba37f6535feab563a.md) | 53 | `result-track:f85dc05ba37f6535feab563a85ebcc82da2af7367fbb3e6d93c0c2f61d3ce440` |
| 11 | `lemma` | [IsClopen.himp](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-himp--ccf947c6b2adf72fa7995967.md) | 56 | `result-track:ccf947c6b2adf72fa799596792598161b5d024ae3ff37336c38d4cc32917acaa` |
| 12 | `theorem` | [IsClopen.prod](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-prod--c9edb8c790a2465b009a5c81.md) | 59 | `result-track:c9edb8c790a2465b009a5c8101abbd27d09bdebb01b4bebe6176c8507034b98c` |
| 13 | `theorem` | [isClopen_iUnion_of_finite](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-iunion-of-finite--d403ddfed117955db1f762dc.md) | 62 | `result-track:d403ddfed117955db1f762dcfe55bcfe81171baa6a002b614c732a292b9a73d4` |
| 14 | `theorem` | [Set.Finite.isClopen_biUnion](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/set-finite-isclopen-biunion--14c3af868654560f0ce4037a.md) | 66 | `result-track:14c3af868654560f0ce4037a1c0f746fb904ae1f5b1dfdf7d30585645fd89047` |
| 15 | `theorem` | [isClopen_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-biunion-finset--d1d695662707190fccfd03f6.md) | 70 | `result-track:d1d695662707190fccfd03f6dcbab15ed4e83c0abf0332f6565b6214f98e783d` |
| 16 | `theorem` | [isClopen_iInter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-iinter-of-finite--0ebcafc1e095cdb049f45f83.md) | 74 | `result-track:0ebcafc1e095cdb049f45f83f2bffded923d220bf309dc10029053a2f9909f9f` |
| 17 | `theorem` | [Set.Finite.isClopen_biInter](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/set-finite-isclopen-biinter--4323a485c57ff910b104acf2.md) | 78 | `result-track:4323a485c57ff910b104acf245658c53a11e130bcb1d47929195868cac2e876f` |
| 18 | `theorem` | [isClopen_biInter_finset](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-biinter-finset--3372880c12ecec4d57be5e9b.md) | 82 | `result-track:3372880c12ecec4d57be5e9bdb7001a98f7c9627fc728bb3381bf6e674107180` |
| 19 | `theorem` | [IsClopen.preimage](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-preimage--53dcb6cbcc8f69cf64878c6a.md) | 86 | `result-track:53dcb6cbcc8f69cf64878c6a10cde26631f3747fe65e7b7af0dbb890a63afc67` |
| 20 | `theorem` | [ContinuousOn.preimage_isClopen_of_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/continuouson-preimage-isclopen-of-isclopen--afda83ca6ae4d819ddbea8ef.md) | 90 | `result-track:afda83ca6ae4d819ddbea8efc72274385b688be13cc4a250e3f5ec06baccedd1` |
| 21 | `theorem` | [isClopen_inter_of_disjoint_cover_clopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-inter-of-disjoint-cover-clopen--48d457f4f30b4dd9adf00587.md) | 96 | `result-track:48d457f4f30b4dd9adf0058785a1e8da645af95cec05bccac0810e7a0a2f2266` |
| 22 | `theorem` | [isClopen_of_disjoint_cover_open](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-of-disjoint-cover-open--20881aa5dd328fcd0b5ecb28.md) | 105 | `result-track:20881aa5dd328fcd0b5ecb28f53aae876886d9a11b0443242c031359e98663ab` |
| 23 | `theorem` | [isClopen_discrete](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-discrete--f2ee3555ce7987f2a7f4bfbf.md) | 110 | `result-track:f2ee3555ce7987f2a7f4bfbf88dca9faf9efd5e3b8008ee8dd342429ec1f6f1f` |
| 24 | `theorem` | [isClopen_range_inl](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-range-inl--d1668420245fc91ee81c41b8.md) | 113 | `result-track:d1668420245fc91ee81c41b839de0d29e1bc6f519a0ce322846276fdb92e1010` |
| 25 | `theorem` | [isClopen_range_inr](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-range-inr--ecc2f328732773a6511af3c6.md) | 116 | `result-track:ecc2f328732773a6511af3c6e1ad6ad2115edaa1c5eda9bb901aed2b8222fb77` |
| 26 | `theorem` | [isClopen_range_sigmaMk](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/isclopen-range-sigmamk--4bbe610a9137885b8e19c733.md) | 119 | `result-track:4bbe610a9137885b8e19c733548cc3fd95ea2bece8f58bc8ae66207318809756` |
| 27 | `theorem` | [Topology.IsQuotientMap.isClopen_preimage](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/topology-isquotientmap-isclopen-preimage--305869f9808b20033ba075c8.md) | 123 | `result-track:305869f9808b20033ba075c812dfc597e38fc00ea8ecb235f15e36aecfecc826` |
| 28 | `theorem` | [continuous_boolIndicator_iff_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/continuous-boolindicator-iff-isclopen--c14d4dd5f36004072c7e666a.md) | 130 | `result-track:c14d4dd5f36004072c7e666ab96aab8323667eecb4bde96f45123065f5f2c182` |
| 29 | `theorem` | [continuousOn_boolIndicator_iff_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variantc252ea71dc67ff6cef4463ebeb760ff5482fae00e94b49a66d685723647fb336.lean/declarations/continuouson-boolindicator-iff-isclopen--b8549a6fdcfc7060af6d62d5.md) | 134 | `result-track:b8549a6fdcfc7060af6d62d5129e9db024709800d7ee867441afdf3ceb434e65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
