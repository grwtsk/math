# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c2c4f0c1592c418dafa3faf8fcdddb5f5350c70",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c2c4f0c1592c418dafa3faf8fcdddb5f5350c70`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalarsEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/restrictscalarsequiv--9e9637a8a92bb601f09ceacd.md) | 48 | `declaration-track:9e9637a8a92bb601f09ceacd4d0b94ecdfd142664856205ac58a3e661d2b86b0` |
| 2 | `theorem` | [restrictScalarsEquiv_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/restrictscalarsequiv-mk--5b76e358b239c575698451d2.md) | 55 | `result-track:5b76e358b239c575698451d243772a6c0542506eaef310fc0baf250f510da590` |
| 3 | `theorem` | [restrictScalarsEquiv_symm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/restrictscalarsequiv-symm-mk--c066fd981ddeedfb20979b94.md) | 61 | `result-track:c066fd981ddeedfb20979b94d91d5bfc5f911fefc10cca4630f3842696ffed18` |
| 4 | `theorem` | [nontrivial_of_lt_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/nontrivial-of-lt-top--4a74a2a55ca0043d216d4ba0.md) | 68 | `result-track:4a74a2a55ca0043d216d4ba060aeb30b794767e151aa0724aceb02ef0c5d670a` |
| 5 | `instance` | [QuotientBot.infinite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotientbot-infinite--afa347a07594465fb55b07fd.md) | 75 | `declaration-track:afa347a07594465fb55b07fd9482c7541b45be481563e49181d75fcb65ccf738` |
| 6 | `instance` | [QuotientTop.unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotienttop-unique--f317814d41e8e215040b01f1.md) | 79 | `declaration-track:f317814d41e8e215040b01f1730b66765bfac3598135640d791cca5b2f9b9c8a` |
| 7 | `instance` | [QuotientTop.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotienttop-fintype--9c983317ae15a5de05d3b774.md) | 84 | `declaration-track:9c983317ae15a5de05d3b77472be63ad357d30e4458ba24db0a819f618f13d98` |
| 8 | `theorem` | [subsingleton_quotient_iff_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/subsingleton-quotient-iff-eq-top--3181c90ee67f68791195dc29.md) | 89 | `result-track:3181c90ee67f68791195dc291cfcd5fe897a820593fe451b5c6d1ae3a1d39300` |
| 9 | `theorem` | [unique_quotient_iff_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/unique-quotient-iff-eq-top--af3fd7870c3182cea9bf5717.md) | 98 | `result-track:af3fd7870c3182cea9bf5717a057afca59c8333304bf312df69bd4f375a88ded` |
| 10 | `instance` | [Quotient.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotient-fintype--44e6ccce94c79738996b33dc.md) | 104 | `declaration-track:44e6ccce94c79738996b33dc85c9536229694464018d316f73f088f0b5cfdfc0` |
| 11 | `theorem` | [card_eq_card_quotient_mul_card](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/card-eq-card-quotient-mul-card--775f30e45a4be2603077de31.md) | 107 | `result-track:775f30e45a4be2603077de31ab0392ce2b512253051efbd11c9157dcd8ae2e2c` |
| 12 | `theorem` | [strictMono_comap_prod_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/strictmono-comap-prod-map--3e57b61179922407a6385d95.md) | 116 | `result-track:3e57b61179922407a6385d95bc5212381266b94cb4e723284cb311ee0d05d1e7` |
| 13 | `def` | [liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/liftq--69f07f892b7e9cf2f597c59e.md) | 127 | `declaration-track:69f07f892b7e9cf2f597c59ef67d09ccc275861585cc2feda7f45fbf6183f9da` |
| 14 | `theorem` | [liftQ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/liftq-apply--37eb99034fc1a1dd6d4cdb0f.md) | 132 | `result-track:37eb99034fc1a1dd6d4cdb0fa1343b41a6906cf56f0c69ba27f43cc22799a602` |
| 15 | `theorem` | [liftQ_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/liftq-mkq--380d7d82e54c5bfca170dbac.md) | 136 | `result-track:380d7d82e54c5bfca170dbac01faf4b75b9a15ea97dd19cd707527912855bc84` |
| 16 | `theorem` | [pi_liftQ_eq_liftQ_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/pi-liftq-eq-liftq-pi--efdb47c167bdecef33beff27.md) | 138 | `result-track:efdb47c167bdecef33beff2790af91434dd9e29d3cd1d816bd832efdcff8734b` |
| 17 | `def` | [liftQSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/liftqspansingleton--be561c37b7b04829d699db08.md) | 148 | `declaration-track:be561c37b7b04829d699db080cf79e9d335010c7e53fcec14aa888fd43c127a1` |
| 18 | `theorem` | [liftQSpanSingleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/liftqspansingleton-apply--b14df1dc15b7d183b8fb35ac.md) | 152 | `result-track:b14df1dc15b7d183b8fb35ac7bf6c87430105fa950cdea4195b9d726d1519de4` |
| 19 | `theorem` | [range_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/range-mkq--c517f82573c7c7a95e452844.md) | 157 | `result-track:c517f82573c7c7a95e4528444b550a104f59e91500bcc9a1d7e7d590b11ec3ec` |
| 20 | `theorem` | [ker_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/ker-mkq--108860bb572887679d307c5f.md) | 161 | `result-track:108860bb572887679d307c5f200cc28cf1649af8e92593e6764453cbbb80d565` |
| 21 | `theorem` | [le_comap_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/le-comap-mkq--fd5f3f02e94fe9c3fc464f46.md) | 163 | `result-track:fd5f3f02e94fe9c3fc464f46662a1f074ed4c94561d51d4343f9deeaeb6ddef9` |
| 22 | `theorem` | [mkQ_map_self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mkq-map-self--de668b13fb58ed964097bdfe.md) | 167 | `result-track:de668b13fb58ed964097bdfe1b1ca9926ce5ffa11a83e27ecd369b526ccd06af` |
| 23 | `theorem` | [comap_map_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/comap-map-mkq--2d69d4ae9576ba5ef27ce514.md) | 171 | `result-track:2d69d4ae9576ba5ef27ce514d79d55decaa054ead6a4f859f86c53b2e187e116` |
| 24 | `theorem` | [map_mkQ_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/map-mkq-eq-top--c5c1d92d3d560726339b0bf6.md) | 174 | `result-track:c5c1d92d3d560726339b0bf6ed0a3cd71f742cb4bfa61b021b9eccfb12af0315` |
| 25 | `def` | [mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mapq--359e7acd0cc3b0840b758d7f.md) | 181 | `declaration-track:359e7acd0cc3b0840b758d7f378693fb58387500681b61a1016efc18ceb6be98` |
| 26 | `theorem` | [mapQ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mapq-apply--cb4567aa96b0efb8b3831033.md) | 185 | `result-track:cb4567aa96b0efb8b38310334a7dfb0dde0b63d8df18274d6028d0ee67788e13` |
| 27 | `theorem` | [mapQ_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mapq-mkq--d0a7511f16f2e48f74321ab7.md) | 189 | `result-track:d0a7511f16f2e48f74321ab79a186358bd64f059113c403657f2936172cac8ea` |
| 28 | `theorem` | [mapQ_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mapq-zero--99eba11f2060d4dea0a090f5.md) | 193 | `result-track:99eba11f2060d4dea0a090f5b39a608aad157a7f4ba70bc6e945118a31d73401` |
| 29 | `theorem` | [mapQ_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mapq-comp--b9c4a810f9d6e79807545049.md) | 201 | `result-track:b9c4a810f9d6e798075450497d8c10cdbfb06d3043cc993dfbeeeb6b2f55c19c` |
| 30 | `theorem` | [mapQ_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mapq-id--df96683a2139a1e0347fb330.md) | 210 | `result-track:df96683a2139a1e0347fb33037d7eb5ccfb37f078b3594cd7e0712d0ef5c24ac` |
| 31 | `theorem` | [mapQ_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mapq-pow--ee9745b847b7bc24c2a4e824.md) | 215 | `result-track:ee9745b847b7bc24c2a4e8249477ddbb9af55e05ffdee841ee92ff521689389f` |
| 32 | `theorem` | [comap_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/comap-liftq--9e6bc3322aafacdd26b64075.md) | 224 | `result-track:9e6bc3322aafacdd26b6407589198cc27875c594b52d49773ba1a452041962a6` |
| 33 | `theorem` | [map_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/map-liftq--4495e74624717688c488fb12.md) | 228 | `result-track:4495e74624717688c488fb129db47dd9de88438cdb23f20d18e31ca0caa1dc90` |
| 34 | `theorem` | [ker_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/ker-liftq--a1099b94455df45c7c1d670d.md) | 233 | `result-track:a1099b94455df45c7c1d670daa968e2a3e35ee8c202132b22558ababe6e5d739` |
| 35 | `theorem` | [range_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/range-liftq--138b9752f28c746338533dce.md) | 236 | `result-track:138b9752f28c746338533dcec31e1bfbeeb33a313cb2694b85a3bc46719eadce` |
| 36 | `theorem` | [ker_liftQ_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/ker-liftq-eq-bot--df289e05b74ba43b21a2e53c.md) | 239 | `result-track:df289e05b74ba43b21a2e53ca2a0e3f4f3a29b6b5291bcebd081c8c1105cd042` |
| 37 | `theorem` | [ker_liftQ_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/ker-liftq-eq-bot--3be0945405c1b332108166cc.md) | 242 | `result-track:3be0945405c1b332108166cc4462d9a75a850e941266e2ea83438348a4219b7d` |
| 38 | `abbrev` | [factor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/factor--54afc9a65faa795df45002b9.md) | 256 | `declaration-track:54afc9a65faa795df45002b924627829be2a90b85ce9498961fa5e0f24fac575` |
| 39 | `theorem` | [factor_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/factor-mk--fcb09684b9c8b87d45674028.md) | 260 | `result-track:fcb09684b9c8b87d45674028b48dee115c5d5d35bec59719b1d62eb8c7535d48` |
| 40 | `theorem` | [factor_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/factor-comp-mk--7420aa0667b37806077a1b6d.md) | 264 | `result-track:7420aa0667b37806077a1b6d2cbfe7c2cc7cf949a580ec719c20a8d479a143fa` |
| 41 | `theorem` | [factor_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/factor-comp--f6b9b1ef0f2b613dcdaa19cf.md) | 269 | `result-track:f6b9b1ef0f2b613dcdaa19cf26f81586089d65d7d798551b8d81d990d8457d53` |
| 42 | `theorem` | [factor_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/factor-comp-apply--2ef16457013f0735fe37e962.md) | 275 | `result-track:2ef16457013f0735fe37e9623b2cb1059f82796e7f15405f5fe54f573c044d27` |
| 43 | `lemma` | [factor_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/factor-surjective--0971f67c536a33d9dba3d55e.md) | 280 | `result-track:0971f67c536a33d9dba3d55e75f5fa1edf549650148c1db36343e9bedb43d989` |
| 44 | `def` | [comapMkQRelIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/comapmkqreliso--799674025b21448ba1b88651.md) | 289 | `declaration-track:799674025b21448ba1b886515d725c366d3374213db7a2868685eae6e75635fc` |
| 45 | `def` | [comapMkQOrderEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/comapmkqorderembedding--b57e21ea8f1037baecba43ff.md) | 298 | `declaration-track:b57e21ea8f1037baecba43ff0303085426d189de626fe35ae0fd1706a7e90598` |
| 46 | `theorem` | [comapMkQOrderEmbedding_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/comapmkqorderembedding-eq--fd2db0b079702e994eb5a8ec.md) | 302 | `result-track:fd2db0b079702e994eb5a8ecbbcc86c69a20a8b0fcc90de4f05fc0b03bfbbf9d` |
| 47 | `theorem` | [span_preimage_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/span-preimage-eq--76019909cf4124be5326f4a0.md) | 306 | `result-track:76019909cf4124be5326f4a06dbcacdf483502cae3ac2ee69e3c6035c8a48d3b` |
| 48 | `def` | [Quotient.equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotient-equiv--897a4cdd52c5bfa7f871e2c5.md) | 324 | `declaration-track:897a4cdd52c5bfa7f871e2c5dadff6bac2317794c2fcb09deb7428af58419444` |
| 49 | `theorem` | [Quotient.equiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotient-equiv-symm--153e77d5eefdcf7dd3b6e1e2.md) | 337 | `result-track:153e77d5eefdcf7dd3b6e1e250d90181394716780b400478b3209952f184849d` |
| 50 | `theorem` | [Quotient.equiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotient-equiv-trans--cbfae19733e91962d1a60737.md) | 345 | `result-track:cbfae19733e91962d1a607378bad8e11608518ef2690f0eb75e099b35df003bc` |
| 51 | `theorem` | [range_mkQ_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/range-mkq-comp--c00064db778250272b8d45a3.md) | 371 | `result-track:c00064db778250272b8d45a3c45c9688b8de8f4a7c1a9447ce62ffb0398d6b6c` |
| 52 | `theorem` | [ker_le_range_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/ker-le-range-iff--ff8bfb7347c129a6bb0f7a42.md) | 374 | `result-track:ff8bfb7347c129a6bb0f7a42f60f0b752eb64b0ccd53350b0e4bb3cf34198c08` |
| 53 | `theorem` | [range_eq_top_of_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/range-eq-top-of-cancel--bfeca3b17c872074de1228dd.md) | 379 | `result-track:bfeca3b17c872074de1228dd73f186ca411bd62bb053e73abbd54d916a7cf2c3` |
| 54 | `def` | [quotEquivOfEqBot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotequivofeqbot--05b86950d40341023f789291.md) | 397 | `declaration-track:05b86950d40341023f789291ecefa42807c9e0969318916e254598c1d238711c` |
| 55 | `theorem` | [quotEquivOfEqBot_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotequivofeqbot-apply-mk--f4bbe389e846ac34aefe4495.md) | 402 | `result-track:f4bbe389e846ac34aefe4495612b8e13db20dc1024bc5bf5ff49722e383d1934` |
| 56 | `theorem` | [quotEquivOfEqBot_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotequivofeqbot-symm-apply--deceecc7098b3360b1f7628e.md) | 407 | `result-track:deceecc7098b3360b1f7628e38f9971b98ebc70443647c6aae53b0996734afba` |
| 57 | `theorem` | [coe_quotEquivOfEqBot_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/coe-quotequivofeqbot-symm--ff60b8c7ad3c47b7566ac3db.md) | 412 | `result-track:ff60b8c7ad3c47b7566ac3db121f42c5b7e9054d6d5657ddf66369fefbb2ab1d` |
| 58 | `theorem` | [Quotient.equiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/quotient-equiv-refl--2524807de02177e014a269d0.md) | 417 | `result-track:2524807de02177e014a269d07bb87cab472d21fd328fdf943aa3ae9615087229` |
| 59 | `def` | [mapQLinear](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/declarations/mapqlinear--45e0cbeebd1afc563870de4e.md) | 435 | `declaration-track:45e0cbeebd1afc563870de4eaf5052ee022e002face7d23c7792f58494231adf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
