# Verification target: GRWTSK.Algebra.Solvable.Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a60f7e03f5fde67c8376d5834ce6988cc1cd56b8",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/index.md) · [Full source](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a60f7e03f5fde67c8376d5834ce6988cc1cd56b8`.

Source path: `GRWTSK/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeriesOfIdeal](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal--0404e977a2d6d2ca34b1889e.md) | 55 | `declaration-track:0404e977a2d6d2ca34b1889e2c2f37ed8dd4733f1c2d9e60ee4be12159db3fc4` |
| 2 | `theorem` | [derivedSeriesOfIdeal_zero](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-zero--13e8cbaa567e18f110645f9a.md) | 60 | `result-track:13e8cbaa567e18f110645f9a43218a678414185d6ca9a13a94c666731b15967e` |
| 3 | `theorem` | [derivedSeriesOfIdeal_succ](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-succ--8dc7ef501f658b553c4c1d70.md) | 65 | `result-track:8dc7ef501f658b553c4c1d7064de82a6f063d25525caf5b5306ac2e4d01f9660` |
| 4 | `abbrev` | [derivedSeries](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries--1eb4d81a8fc9ef1b35750e61.md) | 72 | `declaration-track:1eb4d81a8fc9ef1b35750e6105a2db515fc1041e8fcb12d382d7f4f09b6fd542` |
| 5 | `theorem` | [derivedSeries_def](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-def--79f6fb94f140e17a8bca2916.md) | 76 | `result-track:79f6fb94f140e17a8bca2916b85f14e020b5d0716b63fae253c62a67a1a93100` |
| 6 | `theorem` | [derivedSeriesOfIdeal_add](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-add--572b6b09abfa294eb98e45dd.md) | 84 | `result-track:572b6b09abfa294eb98e45dd49e14aa192063bc45792ea9e28cca740672af56f` |
| 7 | `theorem` | [derivedSeriesOfIdeal_le](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-le--b6474dd53a006809f60422fd.md) | 91 | `result-track:b6474dd53a006809f60422fd51b0394111180bd98088c94c54e34bd57aa9ae89` |
| 8 | `theorem` | [derivedSeriesOfIdeal_succ_le](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-succ-le--164afbb18eb1c370c5d62b78.md) | 102 | `result-track:164afbb18eb1c370c5d62b782d60ca3fbf73c1efb8857ecd24ffe0dfb72727ab` |
| 9 | `theorem` | [derivedSeriesOfIdeal_le_self](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-le-self--b7c70dbb50ac51671be21053.md) | 106 | `result-track:b7c70dbb50ac51671be21053a2daece7a7b8ba3e5da9bd9dd1d7de23b4f79dc5` |
| 10 | `theorem` | [derivedSeriesOfIdeal_mono](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-mono--87b21f2db1bf89321dd68119.md) | 110 | `result-track:87b21f2db1bf89321dd68119f15a02c9e2b3dcf713450cc4e187973de833a5fe` |
| 11 | `theorem` | [derivedSeriesOfIdeal_antitone](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-antitone--ce861390a7b114e2ab7e37f4.md) | 114 | `result-track:ce861390a7b114e2ab7e37f4aca143eb0735b8bb98abe2643027621225132662` |
| 12 | `theorem` | [derivedSeriesOfIdeal_add_le_add](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseriesofideal-add-le-add--6cc2b8953f05cdb0d69034d4.md) | 118 | `result-track:6cc2b8953f05cdb0d69034d4e4fc1b85ba0758397612013ae761e2f10a52c737` |
| 13 | `theorem` | [derivedSeries_of_bot_eq_bot](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-of-bot-eq-bot--b0e230bbd13fac3f20932e4c.md) | 129 | `result-track:b0e230bbd13fac3f20932e4c0e08e40393b0b33761ef65af993e41414eacf5cc` |
| 14 | `theorem` | [abelian_iff_derived_one_eq_bot](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/abelian-iff-derived-one-eq-bot--a0b1288ee6eddf8fc4effef5.md) | 133 | `result-track:a0b1288ee6eddf8fc4effef5fdd9c35e6b73c6417ed12fa3675adcc0a42b3494` |
| 15 | `theorem` | [abelian_iff_derived_succ_eq_bot](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/abelian-iff-derived-succ-eq-bot--fe526260a0a7e90e89856a14.md) | 138 | `result-track:fe526260a0a7e90e89856a147378301abd1e701bc8b3f2df8cfa9cd8c0bf14f9` |
| 16 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_comap](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-eq-derivedseriesofideal-comap--37f192377537b6cc4c2f598d.md) | 151 | `result-track:37f192377537b6cc4c2f598d291f3eb2c34280657bd429f1d642a5de9a7fc139` |
| 17 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_map](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-eq-derivedseriesofideal-map--4c599f979ac951c1be4c023c.md) | 160 | `result-track:4c599f979ac951c1be4c023c3f44e6c88631cb2d3ab0c0576f2c30d131991a2b` |
| 18 | `theorem` | [derivedSeries_eq_bot_iff](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-eq-bot-iff--4a16c7291932119a43cfc576.md) | 166 | `result-track:4a16c7291932119a43cfc576b47851cc5a34995ade10ddf2eaa15e949c91113d` |
| 19 | `theorem` | [derivedSeries_add_eq_bot](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-add-eq-bot--9e199a32b7491b6a59b3b934.md) | 171 | `result-track:9e199a32b7491b6a59b3b934fde1dd7589a06efe6d3d81a383dde5efbcbe03e3` |
| 20 | `theorem` | [derivedSeries_map_le](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-map-le--9df9b7020b5fa11042173668.md) | 181 | `result-track:9df9b7020b5fa110421736681c9538485feb75ef3296be84d37ed51e07acaba9` |
| 21 | `theorem` | [derivedSeries_map_eq](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-map-eq--f807f5ed0d722811e5276977.md) | 188 | `result-track:f807f5ed0d722811e5276977d0aaa6ea3cda68c91aff0dde4a992d095c8d25e1` |
| 22 | `class` | [IsSolvable](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/issolvable--a4c0a0a6c137c9a3f868da41.md) | 202 | `declaration-track:a4c0a0a6c137c9a3f868da4197b1f1e5baca7f521fb148b78a198440f72dc14c` |
| 23 | `instance` | [isSolvableBot](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/issolvablebot--396de4343598ae01cb35434b.md) | 206 | `declaration-track:396de4343598ae01cb35434b15f59427973a244edaff8d7ce57bd7ef7b323e4a` |
| 24 | `instance` | [isSolvableAdd](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/issolvableadd--0f00ec7e171d9222c03b8cbc.md) | 210 | `declaration-track:0f00ec7e171d9222c03b8cbce89cff08946e1bec6a7e5aff37c79cdf52889f27` |
| 25 | `theorem` | [Injective.lieAlgebra_isSolvable](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/injective-liealgebra-issolvable--e6fc75862b454909e5c1f3ab.md) | 224 | `result-track:e6fc75862b454909e5c1f3ab8beb4d777347fdd52f20d260ce260fd1b751d8ca` |
| 26 | `theorem` | [Surjective.lieAlgebra_isSolvable](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/surjective-liealgebra-issolvable--b5ac81781bb8fb567c4a1f83.md) | 232 | `result-track:b5ac81781bb8fb567c4a1f8317ba410ab5f6e42cad880aae9f20e61874f7d51f` |
| 27 | `theorem` | [LieHom.isSolvable_range](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/liehom-issolvable-range--22f3a623d0ec650f5440c1df.md) | 242 | `result-track:22f3a623d0ec650f5440c1dfc49b8ae1ceec3447fda491863a300d737682dd88` |
| 28 | `theorem` | [solvable_iff_equiv_solvable](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/solvable-iff-equiv-solvable--480c455ce568c99ca78125ff.md) | 249 | `result-track:480c455ce568c99ca78125ff713e1d7c5b7d4b491a55d614e6aed5f61c5a716b` |
| 29 | `theorem` | [le_solvable_ideal_solvable](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/le-solvable-ideal-solvable--b9bc10923d6d63a1a0480b94.md) | 255 | `result-track:b9bc10923d6d63a1a0480b944d7b012dcbef14654b842d46aa8042299e7f0fd5` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/instance--19d66ea907e41fd91654e455.md) | 262 | `declaration-track:19d66ea907e41fd91654e45510632ff19eb739ddd510928a76e932dfc5fdc2cd` |
| 31 | `def` | [radical](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/radical--d1e618e37cb9335dee80fa31.md) | 269 | `declaration-track:d1e618e37cb9335dee80fa31da3dac88bc84111f2c14726e2836517f327691c1` |
| 32 | `instance` | [radicalIsSolvable](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/radicalissolvable--311e5f8aa5f00bdc91ed748a.md) | 274 | `declaration-track:311e5f8aa5f00bdc91ed748a2d3a50577bd842053a8a5aa94d4dc24cf6e49c4b` |
| 33 | `theorem` | [LieIdeal.solvable_iff_le_radical](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/lieideal-solvable-iff-le-radical--f13d545029c94a75a210f690.md) | 284 | `result-track:f13d545029c94a75a210f690a9b92aaa171445d61612d7a85a4d6f9ca68fd05b` |
| 34 | `theorem` | [center_le_radical](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/center-le-radical--52cedabd8cd89fd894d6aaea.md) | 289 | `result-track:52cedabd8cd89fd894d6aaeaf87c49d688a571dcfcae742fb136c28669139895` |
| 35 | `def` | [derivedLengthOfIdeal](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedlengthofideal--1562d021d72849fe9b090185.md) | 298 | `declaration-track:1562d021d72849fe9b09018559eda851eca49fa34b290223c8a887d4ea2f1169` |
| 36 | `abbrev` | [derivedLength](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedlength--d6b5f80cf79e249628065650.md) | 305 | `declaration-track:d6b5f80cf79e24962806565033410fe0138cabae543ac755c6e2aae63b3e8861` |
| 37 | `theorem` | [derivedSeries_of_derivedLength_succ](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedseries-of-derivedlength-succ--6608e9e847cbbdbf30d058ee.md) | 309 | `result-track:6608e9e847cbbdbf30d058ee5f3e69077ab83511dde0436d31766c1870956624` |
| 38 | `theorem` | [derivedLength_eq_derivedLengthOfIdeal](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedlength-eq-derivedlengthofideal--60d45235c56cbfec1c9c7bd7.md) | 323 | `result-track:60d45235c56cbfec1c9c7bd76be52d0146265f62a95c3195cea35887b9f48368` |
| 39 | `def` | [derivedAbelianOfIdeal](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedabelianofideal--075f9cf658b754e7dbd2e6f7.md) | 337 | `declaration-track:075f9cf658b754e7dbd2e6f776b21a7c031c6eeb2ff5eaaba5bcfe4945e37763` |
| 40 | `theorem` | [abelian_derivedAbelianOfIdeal](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/abelian-derivedabelianofideal--5b3cb9b21a742b107b0770a3.md) | 343 | `result-track:5b3cb9b21a742b107b0770a378b5d18406fb794a54d036a95dd90349fcc3e140` |
| 41 | `theorem` | [derivedLength_zero](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/derivedlength-zero--8b0e9896ee713704452e4727.md) | 351 | `result-track:8b0e9896ee713704452e47275a0be40529edaf7f9c82fda2b765aece55954c99` |
| 42 | `theorem` | [abelian_of_solvable_ideal_eq_bot_iff](../../../../mathematics/Algebra/Solvable/Variant98233f3cd459bfd0160cce1feb0d95ecabbe056f8bbf70ee88b770a9a8d61e37.lean/declarations/abelian-of-solvable-ideal-eq-bot-iff--1b4403fd5265dc901ba71eb3.md) | 362 | `result-track:1b4403fd5265dc901ba71eb31b474fea6d2ccf73eb712dc1337bd660c89d656f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
