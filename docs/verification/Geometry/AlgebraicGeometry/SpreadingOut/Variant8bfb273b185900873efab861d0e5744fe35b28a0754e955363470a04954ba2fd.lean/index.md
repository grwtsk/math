# Verification target: GRWTSK.Geometry.AlgebraicGeometry.SpreadingOut.Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef13b5ad96266265cbfea56ba0f7d68252c237ff",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef13b5ad96266265cbfea56ba0f7d68252c237ff`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.FiniteType` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Noetherian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Stalk` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Properties` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Scheme.IsGermInjectiveAt](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/scheme-isgerminjectiveat--bc57c54f6e0d0ee75d50f95e.md) | 64 | `declaration-track:bc57c54f6e0d0ee75d50f95edfbf4706ceb4a497e8dfc245dbf35afb99b98e3a` |
| 2 | `lemma` | [injective_germ_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/injective-germ-basicopen--1f0f7ee7154613635f792d24.md) | 67 | `result-track:1f0f7ee7154613635f792d24709912b7455139a2bea533594c02bc2685fab7bc` |
| 3 | `lemma` | [Scheme.exists_germ_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/scheme-exists-germ-injective--cda056708be94fe9c721e73d.md) | 81 | `result-track:cda056708be94fe9c721e73db9c394542a063e3383bba21d6a0029e82ef23889` |
| 4 | `lemma` | [Scheme.exists_le_and_germ_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/scheme-exists-le-and-germ-injective--a19ffae0a2caf1086bc1026f.md) | 86 | `result-track:a19ffae0a2caf1086bc1026f93aaeb88c8cc9fe8327c507cc0f8c4b334f3627d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/instance--d34253fb867f1d812d6edf28.md) | 94 | `declaration-track:d34253fb867f1d812d6edf28b69950bb6776027e6971318ce1b91e58770634ae` |
| 6 | `lemma` | [isGermInjectiveAt_iff_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/isgerminjectiveat-iff-of-isopenimmersion--96ad0cee8392913b3a96cd43.md) | 105 | `result-track:96ad0cee8392913b3a96cd43f6db7fa12739e82535b0d169b24cc45558ffe8e6` |
| 7 | `abbrev` | [Scheme.IsGermInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/scheme-isgerminjective--8b396da4369e18229b20da08.md) | 127 | `declaration-track:8b396da4369e18229b20da08928890a9d3790eb5546e07277cdf841f8a753d5e` |
| 8 | `lemma` | [Scheme.IsGermInjective.of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/scheme-isgerminjective-of-opencover--9480a1005151ffad238f1a38.md) | 129 | `result-track:9480a1005151ffad238f1a38427e5a43d1db02f23f7ab3e1f0317de8b99fff4d` |
| 9 | `lemma` | [Scheme.IsGermInjective.Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/scheme-isgerminjective-spec--705b19a620ee5e8ce9c508f6.md) | 136 | `result-track:705b19a620ee5e8ce9c508f6946191a5f27c3660f75ba3965c8cf708c812f4a4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/instance--4c60a1e121ed75cbc5ac22a3.md) | 161 | `declaration-track:4c60a1e121ed75cbc5ac22a394facc1a02bc91b7c0c102594d186406cc564f6c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/instance--01653de0e610b4ab84a6eef6.md) | 170 | `declaration-track:01653de0e610b4ab84a6eef6eb0d99219c61369ca4080614deb3b275f5ca17a2` |
| 12 | `lemma` | [spread_out_unique_of_isGermInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/spread-out-unique-of-isgerminjective--c80246af4e529f839a8be80a.md) | 201 | `result-track:c80246af4e529f839a8be80a4ed002e7e370950d46a70b87078130dffddb9baf` |
| 13 | `lemma` | [spread_out_unique_of_isGermInjective'](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/spread-out-unique-of-isgerminjective--5756d8f66858847728b677ab.md) | 233 | `result-track:5756d8f66858847728b677abe7b90f92115039371aaa6ba40e263dd8d0cd444a` |
| 14 | `lemma` | [exists_lift_of_germInjective_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/exists-lift-of-germinjective-aux--cfc042efc0e5306f9ad67854.md) | 243 | `result-track:cfc042efc0e5306f9ad67854830605cf1b1adeb29b71ebac9164cd073d5a73cb` |
| 15 | `lemma` | [exists_lift_of_germInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/exists-lift-of-germinjective--de0005c5a58e778bca091a3d.md) | 280 | `result-track:de0005c5a58e778bca091a3d1d8ef0a9ed93d4f02f592482063b92d98162c95d` |
| 16 | `lemma` | [spread_out_of_isGermInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/spread-out-of-isgerminjective--6f90f52690d1b653f41165fc.md) | 332 | `result-track:6f90f52690d1b653f41165fcf4ef07f5521aa087971c851e10a44fec70a3fa2e` |
| 17 | `lemma` | [spread_out_of_isGermInjective'](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/declarations/spread-out-of-isgerminjective--a3a3715f1e079adb4ecfed32.md) | 370 | `result-track:a3a3715f1e079adb4ecfed32b051909084bbaf947f774ad4c36489ad77719638` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
