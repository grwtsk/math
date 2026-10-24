# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NonemptyFinLinOrd.Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fd3ec4ae3d2656aff5362a9c1fd7738bc735971",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fd3ec4ae3d2656aff5362a9c1fd7738bc735971`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinPartOrd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.LinOrd` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonemptyFinLinOrd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/nonemptyfinlinord--d02d38aea53cf794aed27eb4.md) | 29 | `declaration-track:d02d38aea53cf794aed27eb446e80fc853e7612fe65f9b485039a86523df755e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/instance--d45ad2a4e69c167523c60f6a.md) | 37 | `declaration-track:d45ad2a4e69c167523c60f6abb4ea66b30b41af303f0c727cf591661fcbc2250` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/instance--8a3aafe9fd6f6bd844cd2fa4.md) | 40 | `declaration-track:8a3aafe9fd6f6bd844cd2fa428748de8b1c2ee5d960f7192ce89d67f70f3147a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/instance--31ac9e844ee75cb907cac512.md) | 42 | `declaration-track:31ac9e844ee75cb907cac512e55297b1e25f6ccbc57d0687836a8cff397da9c6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/instance--5df9cb8dcd3844d5a8b30a30.md) | 45 | `declaration-track:5df9cb8dcd3844d5a8b30a30abd23f4649c2ee188715cfce6daf3317a035684d` |
| 6 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/of--0654a008aab73984735c8dd0.md) | 49 | `declaration-track:0654a008aab73984735c8dd00e3a7513db0addaa9ffba38989a96bcb311d93ac` |
| 7 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/coe-of--6b0ead7e9bc55ac84c3a79a9.md) | 52 | `result-track:6b0ead7e9bc55ac84c3a79a9b18077881d535650c051e6cc908d1b50983b686d` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/ofhom--f759d97832fda115f9b74c53.md) | 56 | `declaration-track:f759d97832fda115f9b74c5333a1df07ddf7f4a21f958500d5dcd11e21193a30` |
| 9 | `lemma` | [hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/hom-id--cd52620e14a29fc49130562e.md) | 62 | `result-track:cd52620e14a29fc49130562e21e93e25541d54726c7e6cacfd9a9327d266a4c7` |
| 10 | `lemma` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/id-apply--ccebfc0d0210b06e72cf7d42.md) | 65 | `result-track:ccebfc0d0210b06e72cf7d420a86a3ef655b6db331ed85998913465697ab51b7` |
| 11 | `lemma` | [hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/hom-comp--fef1e856612abffb13cb1a37.md) | 69 | `result-track:fef1e856612abffb13cb1a378a1950484f508e275700a89cd79a83c215c30858` |
| 12 | `lemma` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/comp-apply--93a2c8c39e661e443dc18ed7.md) | 73 | `result-track:93a2c8c39e661e443dc18ed73d9415cdfe60eba99964539686eef1d1896694e3` |
| 13 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/hom-ext--48c2817be558320e4d6a944a.md) | 77 | `result-track:48c2817be558320e4d6a944a340eed195afe48fa0bd12c75fb95873c1d61b93f` |
| 14 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/hom-ofhom--bafa26651cf36e6506c6f6a1.md) | 81 | `result-track:bafa26651cf36e6506c6f6a12a7166f7fa489b1fe1b0e91ea7abb09a99cba21d` |
| 15 | `lemma` | [ofHom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/ofhom-hom--c1a6c106c85060e074286654.md) | 86 | `result-track:c1a6c106c85060e074286654314d1949b52680fc821a46adb0813abed992a151` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/instance--c49b25eeda5c011115e4c966.md) | 89 | `declaration-track:c49b25eeda5c011115e4c9662ec19deb25fcf40450ff1361f08b037941413b0d` |
| 17 | `instance` | [hasForgetToLinOrd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/hasforgettolinord--076ed3ac9b18bbbd58d4dad8.md) | 92 | `declaration-track:076ed3ac9b18bbbd58d4dad834ee2995632cfa047d33192580b72466935fe02a` |
| 18 | `instance` | [hasForgetToFinPartOrd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/hasforgettofinpartord--e287fb5e0af5728743416429.md) | 95 | `declaration-track:e287fb5e0af5728743416429c542d568ea9e04fef5cfcfa6dceecadf5b96bb63` |
| 19 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/iso-mk--92b035c9574224983df8c86f.md) | 102 | `declaration-track:92b035c9574224983df8c86f748b08c9eae877b0f94176c37f5024649f13ce90` |
| 20 | `def` | [dual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/dual--7d29afb6ce1c91caa0831ffb.md) | 108 | `declaration-track:7d29afb6ce1c91caa0831ffb0cbabcbc4472ed99d1a27dcfe4cd419a4ef8aa07` |
| 21 | `def` | [dualEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/dualequiv--236bbd5d8ba3b9dfdafd7a8c.md) | 114 | `declaration-track:236bbd5d8ba3b9dfdafd7a8c854c3ed16da455ab4e0ef60d1b02d636f81eafd7` |
| 22 | `theorem` | [mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/mono-iff-injective--c20fb1f9c9b027502dd3b64b.md) | 120 | `result-track:c20fb1f9c9b027502dd3b64b3e87f38e31aeb0d556a073325f89296a49379285` |
| 23 | `theorem` | [epi_iff_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/epi-iff-surjective--6d8fa2d23c56b0905035b59a.md) | 135 | `result-track:6d8fa2d23c56b0905035b59ad8125495560a8adab6ab78822b5d12c3c85240b7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/instance--515f331d4e7f5ff1859c1d27.md) | 175 | `declaration-track:515f331d4e7f5ff1859c1d27d0d2d1f19f5f02b4f1b576d44342f729c775db97` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/instance--9c08f1e68adec274d18f29fa.md) | 199 | `declaration-track:9c08f1e68adec274d18f29fa98de239cd673162b83c71866fa3f60b290e502b6` |
| 26 | `theorem` | [nonemptyFinLinOrd_dual_comp_forget_to_linOrd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/nonemptyfinlinord-dual-comp-forget-to-linord--82d36786950e3337ffb8d7f3.md) | 214 | `result-track:82d36786950e3337ffb8d7f35969545313a82c9cfc7b8dadf4128eb2408cd7df` |
| 27 | `def` | [nonemptyFinLinOrdDualCompForgetToFinPartOrd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/nonemptyfinlinorddualcompforgettofinpartord--59afdc7351d0a96bd0475237.md) | 220 | `declaration-track:59afdc7351d0a96bd04752370ec4fdb4a2836234a1f8bffc6bf49d954d70fe35` |
| 28 | `def` | [Fin.hom_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant31979855bd5a9a78d66539f6b940a10604e95b438d68dc6a4f9c5ba426befdf0.lean/declarations/fin-hom-succ--6364a32b4342dc657e209144.md) | 227 | `declaration-track:6364a32b4342dc657e209144fa6167d78d781958f134b9aa76d4538879c365fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
