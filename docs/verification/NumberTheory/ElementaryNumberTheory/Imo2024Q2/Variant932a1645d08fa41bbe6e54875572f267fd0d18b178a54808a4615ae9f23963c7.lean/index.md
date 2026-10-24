# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Imo2024Q2.Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bfc8bc8bb4855742912237d94097398a6cfd0ab",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bfc8bc8bb4855742912237d94097398a6cfd0ab`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condition](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/condition--3a3c541d8e63d895cc724590.md) | 27 | `declaration-track:3a3c541d8e63d895cc7245903fe5709908c7082064af25472d9b483b48319edc` |
| 2 | `lemma` | [dvd_pow_iff_of_dvd_sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/dvd-pow-iff-of-dvd-sub--15ab65e221db4ddb57770712.md) | 30 | `result-track:15ab65e221db4ddb57770712fc40b82b8fb24da335985cb260d5c66ae0e394d1` |
| 3 | `lemma` | [a_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/a-pos--ce345ca4590559ddb4285f2e.md) | 53 | `result-track:ce345ca4590559ddb4285f2e4f563fd600f10f1a7b3611bbd02403bd9c75debc` |
| 4 | `lemma` | [b_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/b-pos--d759b770ae22f70ff63cba7a.md) | 55 | `result-track:d759b770ae22f70ff63cba7a55a2541d70bfbe523baefcd861bf488608468670` |
| 5 | `def` | [g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/g--f48fad73b8b2b08fe801fc8f.md) | 58 | `declaration-track:f48fad73b8b2b08fe801fc8f10d9b7c1810dc846695813b5fed73ba6033c127d` |
| 6 | `lemma` | [g_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/g-spec--bb211a819dd41d6610197f50.md) | 60 | `result-track:bb211a819dd41d6610197f5036e716a2ce0987398f6f2a091904b4cf05be244a` |
| 7 | `def` | [N](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/n--238b98e0152d5bdfef13d5f3.md) | 64 | `declaration-track:238b98e0152d5bdfef13d5f3a54a4ff027629e984f8994793c05c8abe8aacf3e` |
| 8 | `lemma` | [N_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/n-spec--8699bbc6603734196cb47310.md) | 66 | `result-track:8699bbc6603734196cb47310181bfd8a83c5ea0a7340a73adffd25bad214c2ea` |
| 9 | `lemma` | [g_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/g-pos--f96a91169228826ec69a7f96.md) | 69 | `result-track:f96a91169228826ec69a7f96bd8153cc1c61d281f839fee4758771454087b0ef` |
| 10 | `lemma` | [N_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/n-pos--f82290f8d402e39d4396b14a.md) | 71 | `result-track:f82290f8d402e39d4396b14a58ebce32096edbe9227618b88653b021760aa249` |
| 11 | `lemma` | [gcd_eq_g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/gcd-eq-g--35757c72b4eb1a616c751d89.md) | 73 | `result-track:35757c72b4eb1a616c751d89219c16213fa897ca6cc4654f4be5086d08871d04` |
| 12 | `lemma` | [symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/symm--1f8fb587832da6ef2a9792ea.md) | 75 | `result-track:1f8fb587832da6ef2a9792ea4dc3a00f3f730b27b04992aea29bb6f11fbbb443` |
| 13 | `lemma` | [dvd_g_of_le_N_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/dvd-g-of-le-n-of-dvd--deb31b73981a6159141bb2da.md) | 80 | `result-track:deb31b73981a6159141bb2da158e9b47724b96dc33e90617432f73f6a93950bb` |
| 14 | `lemma` | [a_coprime_ab_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/a-coprime-ab-add-one--a8896b9de4176cfd7de9670b.md) | 87 | `result-track:a8896b9de4176cfd7de9670be94870257c43548bf25c2fdb9f4985a7b1b8f2c4` |
| 15 | `def` | [large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/large-n--57ccb8fa41595568b1c773f6.md) | 91 | `declaration-track:57ccb8fa41595568b1c773f619bfe789dbf3f6490c97c56950a54deeb6d680e8` |
| 16 | `lemma` | [symm_large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/symm-large-n--aec0186fe654c27b358a1dd3.md) | 93 | `result-track:aec0186fe654c27b358a1dd32577c51dfe8d8b08f4899d4dbf0ca79fecbba0a2` |
| 17 | `lemma` | [N_le_large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/n-le-large-n--362e00c8412c74e432036771.md) | 99 | `result-track:362e00c8412c74e432036771981e6e7568d2864ca46c260248b0ee85fc6cb9bb` |
| 18 | `lemma` | [dvd_large_n_sub_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/dvd-large-n-sub-neg-one--f3d3dba15ec137ca6eda6058.md) | 108 | `result-track:f3d3dba15ec137ca6eda60588ea65618dbcea0207c8eacfdb59d14597f4580ed` |
| 19 | `def` | [large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/large-n-0--26879dddbec18666fcc57526.md) | 112 | `declaration-track:26879dddbec18666fcc57526069ee6c86641444ce4283c1377b6a10f4026be9f` |
| 20 | `lemma` | [symm_large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/symm-large-n-0--d2d25d89e73a448007829fe8.md) | 114 | `result-track:d2d25d89e73a448007829fe8e611530763c48b6faafd4bdf8341c7ba4151f664` |
| 21 | `lemma` | [N_le_large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/n-le-large-n-0--bd9d74e44c49d89412f6f5e9.md) | 120 | `result-track:bd9d74e44c49d89412f6f5e9b74e132f761ddbb4846581ab9ec71554e23bf63e` |
| 22 | `lemma` | [dvd_large_n_0_sub_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/dvd-large-n-0-sub-zero--62a07d16a6fe692f55cc1b4a.md) | 129 | `result-track:62a07d16a6fe692f55cc1b4a44c0e94d9a40cd6ae97129dae4c2c593c17031aa` |
| 23 | `lemma` | [ab_add_one_dvd_a_pow_large_n_add_b](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/ab-add-one-dvd-a-pow-large-n-add-b--c345a0bdfd69d5baf4529d79.md) | 132 | `result-track:c345a0bdfd69d5baf4529d7970ce4a836417b20947469086dabb61f9735f2709` |
| 24 | `lemma` | [ab_add_one_dvd_b_pow_large_n_add_a](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/ab-add-one-dvd-b-pow-large-n-add-a--63e7214a5cc200bce636a02d.md) | 145 | `result-track:63e7214a5cc200bce636a02d3aba9f40c104884d2b7bbc340ed7d9209c447e39` |
| 25 | `lemma` | [ab_add_one_dvd_g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/ab-add-one-dvd-g--449c28c4e667466ba195b957.md) | 150 | `result-track:449c28c4e667466ba195b9570dbf47779bb3df239bf3eee3a07616dcbba92a64` |
| 26 | `lemma` | [ab_add_one_dvd_a_pow_large_n_0_add_b](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/ab-add-one-dvd-a-pow-large-n-0-add-b--38299be99bc6ea9b95403c8a.md) | 154 | `result-track:38299be99bc6ea9b95403c8aa6f29620c25afa4f7ae479b550cae40bb963d5bd` |
| 27 | `lemma` | [ab_add_one_dvd_b_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/ab-add-one-dvd-b-add-one--be5e978b842a28d0d1d5cf71.md) | 161 | `result-track:be5e978b842a28d0d1d5cf717fe0883b55e292c708287fa7c49aab63dd07f411` |
| 28 | `lemma` | [a_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/a-eq-one--70d45a92631c99713f7dcfdf.md) | 170 | `result-track:70d45a92631c99713f7dcfdf8b7edd053725bf56e9fcab4bd801d8c5c3a3de4a` |
| 29 | `lemma` | [b_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/b-eq-one--dfd8ec848fc336acaeec9c01.md) | 180 | `result-track:dfd8ec848fc336acaeec9c0115005552cba24a811f4325e14a0a7b40c242a55a` |
| 30 | `def` | [solutionSet](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/solutionset--b33f6806a9dfd877a9967cdf.md) | 185 | `declaration-track:b33f6806a9dfd877a9967cdf4bbc691c8f0b95633bb37e78d2ac82d8448cac69` |
| 31 | `theorem` | [result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/declarations/result--0c3f445a83c8c1250fa28ea3.md) | 187 | `result-track:0c3f445a83c8c1250fa28ea345dd9aa04f2743ea79fc6f8b87dded97f5007480` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
