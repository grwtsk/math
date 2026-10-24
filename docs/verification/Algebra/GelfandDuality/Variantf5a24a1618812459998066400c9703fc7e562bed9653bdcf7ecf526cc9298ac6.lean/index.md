# Verification target: GRWTSK.Algebra.GelfandDuality.Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92969945b2445b72b37717ad98f1a37dcb78ebcf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/index.md) · [Full source](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92969945b2445b72b37717ad98f1a37dcb78ebcf`.

Source path: `GRWTSK/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Units` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ideals` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.toCharacterSpace](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/ideal-tocharacterspace--c79d18e0193d8a5c4e22fd83.md) | 80 | `declaration-track:c79d18e0193d8a5c4e22fd8393e83ec11fe189ec1d5cb4a0c32ab04da52384ee` |
| 2 | `theorem` | [Ideal.toCharacterSpace_apply_eq_zero_of_mem](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/ideal-tocharacterspace-apply-eq-zero-of-mem--021f474c07846f6ac5270761.md) | 86 | `result-track:021f474c07846f6ac5270761dfae1b7021e93edd981e498519a1783bfba084da` |
| 3 | `theorem` | [WeakDual.CharacterSpace.exists_apply_eq_zero](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/weakdual-characterspace-exists-apply-eq-zero--0adb7435a58f0b82b3cda648.md) | 96 | `result-track:0adb7435a58f0b82b3cda648da0d2edd67f4e81ba08773299f6a78e26db69090` |
| 4 | `theorem` | [WeakDual.CharacterSpace.mem_spectrum_iff_exists](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/weakdual-characterspace-mem-spectrum-iff-exists--e8398de3b669e2fdf1790c55.md) | 104 | `result-track:e8398de3b669e2fdf1790c550ac31b807878fe98bb807a8094a7dae8dbfc5f94` |
| 5 | `theorem` | [spectrum.gelfandTransform_eq](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/spectrum-gelfandtransform-eq--4ca3d4caf03cc30b88a2d256.md) | 114 | `result-track:4ca3d4caf03cc30b88a2d256f2800cf87321b0159826eeccd110039dbb60733e` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/instance--77645632d37fa050ec418331.md) | 120 | `declaration-track:77645632d37fa050ec41833198a601520169b99635ead9959b95d32a95c28e2b` |
| 7 | `theorem` | [gelfandTransform_map_star](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/gelfandtransform-map-star--7ec42ed6897634a2224250dc.md) | 130 | `result-track:7ec42ed6897634a2224250dc560cfed84ccb39d45ba279ddec69af6de5b07616` |
| 8 | `theorem` | [gelfandTransform_isometry](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/gelfandtransform-isometry--ee12e2b20b1745cb5425db4f.md) | 137 | `result-track:ee12e2b20b1745cb5425db4fa24ac44c98ab2c1edb3d97c4fc50cfe05996409c` |
| 9 | `theorem` | [gelfandTransform_bijective](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/gelfandtransform-bijective--29e84c60ff4d26f5b56ff0ea.md) | 153 | `result-track:29e84c60ff4d26f5b56ff0ea8fbffbe094fc7a405cbb72533b3dd1da064585e7` |
| 10 | `def` | [gelfandStarTransform](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/gelfandstartransform--1296593c511947fa8352b86b.md) | 186 | `declaration-track:1296593c511947fa8352b86b261e1c8e6153257841d85cb7228f4e8feae451ce` |
| 11 | `def` | [compContinuousMap](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/compcontinuousmap--5f650f020f6ba4b198442b73.md) | 208 | `declaration-track:5f650f020f6ba4b198442b738246b15449f6c20c90aa27f51422a4b2e6e5cbd2` |
| 12 | `theorem` | [compContinuousMap_id](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/compcontinuousmap-id--1c5c83e9082e677222b70bea.md) | 218 | `result-track:1c5c83e9082e677222b70beadc8f2068ab5e4d6d28fd521a56ed7b88bddf775f` |
| 13 | `theorem` | [compContinuousMap_comp](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/compcontinuousmap-comp--edcc5580e9f1809a8d32210a.md) | 224 | `result-track:edcc5580e9f1809a8d32210a5676d1d5d30817ddb6776b899612f12e56ee0bc3` |
| 14 | `theorem` | [gelfandStarTransform_naturality](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/gelfandstartransform-naturality--8f4b8cabe6001e90dabb3edc.md) | 258 | `result-track:8f4b8cabe6001e90dabb3edc84b01b834b4849dbca359d1ca40fb7b3980a4538` |
| 15 | `lemma` | [WeakDual.CharacterSpace.homeoEval_naturality](../../../../mathematics/Algebra/GelfandDuality/Variantf5a24a1618812459998066400c9703fc7e562bed9653bdcf7ecf526cc9298ac6.lean/declarations/weakdual-characterspace-homeoeval-naturality--da42556b0a7a0dd427830989.md) | 287 | `result-track:da42556b0a7a0dd427830989d3eeb27ba94838a5a61d7ea2f74a03aa395fc6fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
