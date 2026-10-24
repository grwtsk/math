# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "118224acb470fe7c28b7f6460ce93f05ad6b6299",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `118224acb470fe7c28b7f6460ce93f05ad6b6299`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ciSup_eq_ciSup_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/cisup-eq-cisup-finset--e6d06f7de72953e84e69aa42.md) | 30 | `result-track:e6d06f7de72953e84e69aa4250b37ee2f869ec2215a21c8419b6dcc7f318a3b7` |
| 2 | `theorem` | [Finset.Nonempty.csSup_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/finset-nonempty-cssup-eq-max--38a61ec2a04b76b534e73e7e.md) | 43 | `result-track:38a61ec2a04b76b534e73e7e45a4de58f34d1181d0bfbee6f7c1b9603fea9d5a` |
| 3 | `theorem` | [Finset.Nonempty.csSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/finset-nonempty-cssup-mem--3ab1422bb6aa60c572b890db.md) | 47 | `result-track:3ab1422bb6aa60c572b890db9bb7520987e38487b1036f5fee2fdae367a6bf8a` |
| 4 | `theorem` | [Set.Nonempty.csSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/set-nonempty-cssup-mem--1fbafd0617848b0a7d1f6bf2.md) | 52 | `result-track:1fbafd0617848b0a7d1f6bf24062d3f287a9cc6441a21f71d0a0677e4349abbe` |
| 5 | `theorem` | [Set.Nonempty.isGreatest_csSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/set-nonempty-isgreatest-cssup--5dfb9e0b83348f428c650f8f.md) | 57 | `result-track:5dfb9e0b83348f428c650f8f960ce1837fddf2fab1d46510a67f8e6094c5b00b` |
| 6 | `theorem` | [Finite.ciSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/finite-cisup-mem--f4793d46f084fdc4de5e26ee.md) | 62 | `result-track:f4793d46f084fdc4de5e26ee3efad6ff3e3649879cc222e009b33f3cb2891292` |
| 7 | `theorem` | [Finite.isGreatest_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/finite-isgreatest-cisup--dd01aadd6ee834b943fe430e.md) | 66 | `result-track:dd01aadd6ee834b943fe430ebfe98beb6b907b075213c384629c2145f6325334` |
| 8 | `theorem` | [Set.Finite.csSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/set-finite-cssup-lt-iff--41e9cdbb925439117670414c.md) | 71 | `result-track:41e9cdbb925439117670414c04ae5e192269d43ef56c1cacbe716cb6e1e058d8` |
| 9 | `theorem` | [Set.Finite.map_sSup_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/set-finite-map-ssup-of-monotone--b2a1132a3c264f68d660117e.md) | 79 | `result-track:b2a1132a3c264f68d660117e5e2c05180bfd7b25e23e1398108755becc564b97` |
| 10 | `theorem` | [Finset.ciSup_eq_max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/finset-cisup-eq-max-image--f8ca603ca22c6cbe0c40a9bf.md) | 90 | `result-track:f8ca603ca22c6cbe0c40a9bf3bf432e080dea79296d7a268fe944af67d86020c` |
| 11 | `theorem` | [Finset.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/finset-cisup-mem-image--2c503de65c71566158043d95.md) | 109 | `result-track:2c503de65c71566158043d9556b8430c5a39a3a4414f9bd58e67775d667235ce` |
| 12 | `theorem` | [Set.Finite.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/set-finite-cisup-mem-image--9fde2f2c47c307b2700c7ea0.md) | 115 | `result-track:9fde2f2c47c307b2700c7ea04a070492fbbdfb8e40d70e2817d4311ef2c1d863` |
| 13 | `theorem` | [Set.Finite.ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/set-finite-cisup-lt-iff--bfd06f149ca4fdd92785196b.md) | 122 | `result-track:bfd06f149ca4fdd92785196bbc45bd074a5bbb5df9dadb5b80c5f131a3d273f3` |
| 14 | `lemma` | [List.iSup_mem_map_of_exists_sSup_empty_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/list-isup-mem-map-of-exists-ssup-empty-le--bacfdd50de7e8341335f82b7.md) | 143 | `result-track:bacfdd50de7e8341335f82b770aca182ae5aead8189d0c05cfb6fc3e9aa9b024` |
| 15 | `lemma` | [Multiset.iSup_mem_map_of_exists_sSup_empty_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/multiset-isup-mem-map-of-exists-ssup-empty-le--8bde31c621d31c360cb3ebdb.md) | 150 | `result-track:8bde31c621d31c360cb3ebdbcd00133d3cefe46b60e7bbe2b7d1dbc2362e497b` |
| 16 | `theorem` | [exists_eq_ciSup_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/exists-eq-cisup-of-finite--e1760d2d876b880fdb557793.md) | 157 | `result-track:e1760d2d876b880fdb557793620e8fcd3abc2861ca65740af9bc0cb0b216cf72` |
| 17 | `theorem` | [sSup_ne_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/ssup-ne-of-notmem--45cad9ba95d3b3ffc8812819.md) | 169 | `result-track:45cad9ba95d3b3ffc881281960f54d2083bb1e22dde4c8ad4f4864565ce831e1` |
| 18 | `theorem` | [sSup_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/ssup-ne-top--1b631404871dd7310b40c644.md) | 176 | `result-track:1b631404871dd7310b40c644b77727fb766db37c144fe14f7a6d4702577ffeb8` |
| 19 | `theorem` | [iSup_ne_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/isup-ne-of-notmem--75863a40f84e3994709e021c.md) | 180 | `result-track:75863a40f84e3994709e021ca583f2f2b8f928773c0091f55c490846b2467650` |
| 20 | `theorem` | [iSup_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/isup-ne-top--04b2f639c582c4dcd6d2538e.md) | 185 | `result-track:04b2f639c582c4dcd6d2538e3fb4bef599a1672e0cd7f9003de3c5c2728b7687` |
| 21 | `theorem` | [sup'_eq_csSup_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/sup-eq-cssup-image--43593ca416c8be8b529d90da.md) | 203 | `result-track:43593ca416c8be8b529d90da7e5d0e72a6095fa89e2a8335d9d8419dfbad0534` |
| 22 | `theorem` | [sup'_id_eq_csSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/sup-id-eq-cssup--f4facff2513858f144355854.md) | 209 | `result-track:f4facff2513858f144355854e2e7d2805956440531a9910b8ce0e1269b7fe7bc` |
| 23 | `lemma` | [sup'_univ_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/sup-univ-eq-cisup--aa7f338e4d034401e2ac784d.md) | 215 | `result-track:aa7f338e4d034401e2ac784dba88c1bd3e23174df664a031592181780dba1f83` |
| 24 | `theorem` | [sup_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/sup-eq-cisup--9be130ffc2ba0db0ce357f14.md) | 223 | `result-track:9be130ffc2ba0db0ce357f1446ee1f333fd71181106f4154a4bfccbb6dd0e89a` |
| 25 | `lemma` | [sup_univ_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/sup-univ-eq-cisup--c1b4e0c20387e4ff61e52576.md) | 228 | `result-track:c1b4e0c20387e4ff61e525761b92596fec9562a8ff296089d5eef5c9ae0e1344` |
| 26 | `theorem` | [ciSup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/cisup-union--2278f8683e7a2ac3dedbda4d.md) | 231 | `result-track:2278f8683e7a2ac3dedbda4d1452ecfa84429606b2ff6846d9b4b200870f49c6` |
| 27 | `theorem` | [Finset.Nonempty.ciSup_eq_max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/finset-nonempty-cisup-eq-max-image--e7b8593fa9c80b3ac6a084e4.md) | 243 | `result-track:e7b8593fa9c80b3ac6a084e43f0d2bbeba10758898dc2004aa52f5b3dbce2a2f` |
| 28 | `theorem` | [Finset.Nonempty.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/finset-nonempty-cisup-mem-image--52775b409e32461b6831c5e9.md) | 248 | `result-track:52775b409e32461b6831c5e91e68e7ae1f671c31012532e479cd65214464d039` |
| 29 | `theorem` | [Set.Nonempty.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/set-nonempty-cisup-mem-image--2958c45365523583e927c52d.md) | 252 | `result-track:2958c45365523583e927c52d5f605705a5b61df15cb3f7bac3f2beb32ec51a3f` |
| 30 | `theorem` | [Set.Nonempty.ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/set-nonempty-cisup-lt-iff--0919e543efcf7e622c7fc990.md) | 256 | `result-track:0919e543efcf7e622c7fc9904cea3f5e138176b7184cc8ffea247b3278ebd47b` |
| 31 | `lemma` | [List.iSup_mem_map_of_ne_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/list-isup-mem-map-of-ne-nil--4f947cff3dd5b8489310b39a.md) | 262 | `result-track:4f947cff3dd5b8489310b39a12b2bbc722d4b598eaa170350e1191b8fbc6c4ec` |
| 32 | `lemma` | [Multiset.iSup_mem_map_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/declarations/multiset-isup-mem-map-of-ne-zero--56f1123ed82a751761736266.md) | 266 | `result-track:56f1123ed82a75176173626662dcf20e8f4e1dfa45ac558fcc440e10b57c5104` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
