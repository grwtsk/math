# Verification target: GRWTSK.Algebra.LinearAlgebra.SimpleModule.Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6168c37b7cde5485f3350fa35ddef8ff4416fe27",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6168c37b7cde5485f3350fa35ddef8ff4416fe27`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Isomorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.JordanHolder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsSimpleModule](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/issimplemodule--469cc58327cd2928c6adcac3.md) | 35 | `declaration-track:469cc58327cd2928c6adcac34e4dee58c71be516b757beb39207901aea45e8e3` |
| 2 | `abbrev` | [IsSemisimpleModule](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/issemisimplemodule--7a021fb4ab98e2b6cd42a316.md) | 41 | `declaration-track:7a021fb4ab98e2b6cd42a3165093e4e749cf8daa579a0d2afcd07f269ef54ac3` |
| 3 | `theorem` | [IsSimpleModule.nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/issimplemodule-nontrivial--709b9edbd0c512f9318609e1.md) | 46 | `result-track:709b9edbd0c512f9318609e18a8bd3c1ea738833669d6e478c36ceed0ec48463` |
| 4 | `theorem` | [IsSimpleModule.congr](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/issimplemodule-congr--67ada66b5397bce98d7094ea.md) | 57 | `result-track:67ada66b5397bce98d7094ea76b7a9a4ed595541e844fd86cae214269b2f9ac2` |
| 5 | `theorem` | [isSimpleModule_iff_isAtom](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/issimplemodule-iff-isatom--2ddf95c13efa9080d1f40c04.md) | 61 | `result-track:2ddf95c13efa9080d1f40c0420ed1878ba247e1994ef96e258f860af6ca83a94` |
| 6 | `theorem` | [isSimpleModule_iff_isCoatom](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/issimplemodule-iff-iscoatom--137058cd4b60c80dddb90b2a.md) | 67 | `result-track:137058cd4b60c80dddb90b2a09c6a5b91183d1c9723c87612e8ecad7daf8bca9` |
| 7 | `theorem` | [covby_iff_quot_is_simple](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/covby-iff-quot-is-simple--549bd280b85f91405d2466ba.md) | 73 | `result-track:549bd280b85f91405d2466baa94fbab6fd3e14e9a946f35bd9f23ecd891550b1` |
| 8 | `theorem` | [isAtom](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/isatom--783f971994ad3f1a40a5b286.md) | 86 | `result-track:783f971994ad3f1a40a5b286d181df585afc30744cd6cabb6ef7e117c7e7118f` |
| 9 | `theorem` | [is_semisimple_of_sSup_simples_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/is-semisimple-of-ssup-simples-eq-top--d8176ad644ccce363ea03fa3.md) | 92 | `result-track:d8176ad644ccce363ea03fa32c271d65a92d149e40c9d768ef0f07f734a01127` |
| 10 | `theorem` | [sSup_simples_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/ssup-simples-eq-top--7ed4a0278039efb6d8984738.md) | 101 | `result-track:7ed4a0278039efb6d8984738aa8ab2fa1306423ae5d5798b89f3b9b9218033ff` |
| 11 | `instance` | [is_semisimple_submodule](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/is-semisimple-submodule--d50c23f53fb4f2bce46cb40f.md) | 106 | `declaration-track:d50c23f53fb4f2bce46cb40f433c4cbe3224b8788aafe5ad4427988b9f804d63` |
| 12 | `theorem` | [is_semisimple_iff_top_eq_sSup_simples](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/is-semisimple-iff-top-eq-ssup-simples--87b971cdabe12bbabbe32b46.md) | 113 | `result-track:87b971cdabe12bbabbe32b469ab70abd7759dabd935f2253e8a2deb9625c685d` |
| 13 | `theorem` | [injective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/injective-or-eq-zero--aa9e5e5f627f8bd3febd85e2.md) | 122 | `result-track:aa9e5e5f627f8bd3febd85e2749bae69fa718e749b430c7f4b861fea0ce96f35` |
| 14 | `theorem` | [injective_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/injective-of-ne-zero--17fabd79467cc94e368b15a1.md) | 128 | `result-track:17fabd79467cc94e368b15a1b7e4306183cf49ac10e7c5d494ef1abba0400694` |
| 15 | `theorem` | [surjective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/surjective-or-eq-zero--1cad61437627e115a3581a53.md) | 133 | `result-track:1cad61437627e115a3581a534aacbaf4831c1b5286c95c973224b9c71d1cd7a8` |
| 16 | `theorem` | [surjective_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/surjective-of-ne-zero--19198087ab80c9e09a7c37ae.md) | 139 | `result-track:19198087ab80c9e09a7c37ae04088c96c0f4aa603a3a16eeb69037bd7e2f6cca` |
| 17 | `theorem` | [bijective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/bijective-or-eq-zero--edc82953b9ac5865d868c049.md) | 145 | `result-track:edc82953b9ac5865d868c0493f7cca2f8547344b58e2c2bdc305de156de5f658` |
| 18 | `theorem` | [bijective_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/bijective-of-ne-zero--bfb53c64a109e828ac791ad3.md) | 153 | `result-track:bfb53c64a109e828ac791ad3c42cbd4cded2b937995b249d9b8ff842986ee1f1` |
| 19 | `theorem` | [isCoatom_ker_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/iscoatom-ker-of-surjective--0be415036e09bd180a836866.md) | 158 | `result-track:0be415036e09bd180a836866d2b7a8ef7ad3ad8099c7cb11c28974a21e773a66` |
| 20 | `instance` | [_root_.Module.End.divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/root-module-end-divisionring--482872458af6a8e5326e5196.md) | 165 | `declaration-track:482872458af6a8e5326e519603eb3a7fdde250834a31b8b1de6bc9c8192a19e3` |
| 21 | `def` | [Iso](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/iso--3b14bcd22d4f8cc1f3d82509.md) | 204 | `declaration-track:3b14bcd22d4f8cc1f3d825095d3d3c97a9505c957914200bd7c3999160373659` |
| 22 | `theorem` | [iso_symm](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/iso-symm--bbc64cdfcd32e222dc393e9d.md) | 207 | `result-track:bbc64cdfcd32e222dc393e9d1fca1961200a3ca711638b82c11a2c9b84e8373a` |
| 23 | `theorem` | [iso_trans](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/iso-trans--07027b813aa7acf5b1848f37.md) | 210 | `result-track:07027b813aa7acf5b1848f37ba63ef32732596df7ca66d4e1c33289d8af8e7ca` |
| 24 | `theorem` | [second_iso](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/second-iso--10fe6865485c9bba7b8df5fa.md) | 214 | `result-track:10fe6865485c9bba7b8df5facb8412e2ce6c1351def00d4d90dd3f927f7a895d` |
| 25 | `instance` | [instJordanHolderLattice](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/declarations/instjordanholderlattice--93df4a9a803b0d46bbe58740.md) | 221 | `declaration-track:93df4a9a803b0d46bbe5874036f476cf7d88c6ae02b7a21ada722839b42c3c3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
