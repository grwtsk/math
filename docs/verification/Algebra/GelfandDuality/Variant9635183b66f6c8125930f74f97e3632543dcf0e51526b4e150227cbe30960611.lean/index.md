# Verification target: GRWTSK.Algebra.GelfandDuality.Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c2ed642b157d050016e64ba454c4f7c86a2e468",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/index.md) · [Full source](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c2ed642b157d050016e64ba454c4f7c86a2e468`.

Source path: `GRWTSK/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Spectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Units` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ideals` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.toCharacterSpace](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/ideal-tocharacterspace--fe8d732042861cc3377503b8.md) | 88 | `declaration-track:fe8d732042861cc3377503b8b757e1d63d14ee388f76c26151cf1fcee9ce40dc` |
| 2 | `theorem` | [Ideal.toCharacterSpace_apply_eq_zero_of_mem](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/ideal-tocharacterspace-apply-eq-zero-of-mem--b53d553f3876d54f208fa4f3.md) | 94 | `result-track:b53d553f3876d54f208fa4f36f87a4626ac274da082262fa380dd7e2e8d00c1a` |
| 3 | `theorem` | [WeakDual.CharacterSpace.exists_apply_eq_zero](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/weakdual-characterspace-exists-apply-eq-zero--4d8f7047f28fc6db2f2516d1.md) | 104 | `result-track:4d8f7047f28fc6db2f2516d1d261baa3303f64e6cc035a67200d3b9251fd6ab6` |
| 4 | `theorem` | [WeakDual.CharacterSpace.mem_spectrum_iff_exists](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/weakdual-characterspace-mem-spectrum-iff-exists--06c1a71c0d1c7925e95fbe91.md) | 112 | `result-track:06c1a71c0d1c7925e95fbe911900fff4ab24cf9bb096917ca7f15cd490c40261` |
| 5 | `theorem` | [spectrum.gelfandTransform_eq](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/spectrum-gelfandtransform-eq--b34db775ec54b9b1b7e72b6e.md) | 122 | `result-track:b34db775ec54b9b1b7e72b6ef27679cc5b721e619e6c1dcf653ee72046b4bfcf` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/instance--6f4615c47173ad1a0b5c8a76.md) | 128 | `declaration-track:6f4615c47173ad1a0b5c8a7626a94b8aebfa281ff7cb74c7c810fcc62ac19b5e` |
| 7 | `theorem` | [gelfandTransform_map_star](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/gelfandtransform-map-star--c240b9b911e03f71923f6157.md) | 138 | `result-track:c240b9b911e03f71923f61579487037533ec4c08ec1ad3a5fb542e9082701160` |
| 8 | `theorem` | [gelfandTransform_isometry](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/gelfandtransform-isometry--1a93cf819a46300f058d9e8f.md) | 145 | `result-track:1a93cf819a46300f058d9e8f325e362ae3e622374cc5612daaea124b92d8a243` |
| 9 | `theorem` | [gelfandTransform_bijective](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/gelfandtransform-bijective--39d266188fb7db44c33870e3.md) | 161 | `result-track:39d266188fb7db44c33870e301b7e0e20081b925b413b0e21a6b92e23312f1fe` |
| 10 | `def` | [gelfandStarTransform](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/gelfandstartransform--3addb44836d64fbd9c7aab34.md) | 194 | `declaration-track:3addb44836d64fbd9c7aab34ef7d8aa4463e841505a58576e428853b3fe8825c` |
| 11 | `def` | [compContinuousMap](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/compcontinuousmap--23f5c32edbeeb99dd8132cab.md) | 216 | `declaration-track:23f5c32edbeeb99dd8132cabb7c16ee1d24f829416ff5ef220937da6e441be14` |
| 12 | `theorem` | [compContinuousMap_id](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/compcontinuousmap-id--6e0de371e969bd6cbae85da5.md) | 226 | `result-track:6e0de371e969bd6cbae85da56eed35665e31576d069f7cc820039ba58143b4bd` |
| 13 | `theorem` | [compContinuousMap_comp](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/compcontinuousmap-comp--bd582315c4cd9162be47c5f6.md) | 232 | `result-track:bd582315c4cd9162be47c5f602d4cf4decc064a157f4e8055f02ab35ccf78582` |
| 14 | `theorem` | [gelfandStarTransform_naturality](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/gelfandstartransform-naturality--85a004d5fc74fd60632046be.md) | 266 | `result-track:85a004d5fc74fd60632046be29630be22f2df1b825641f569dba3d64ba7ad797` |
| 15 | `lemma` | [WeakDual.CharacterSpace.homeoEval_naturality](../../../../mathematics/Algebra/GelfandDuality/Variant9635183b66f6c8125930f74f97e3632543dcf0e51526b4e150227cbe30960611.lean/declarations/weakdual-characterspace-homeoeval-naturality--befcdd65ca7cec7cc294401f.md) | 295 | `result-track:befcdd65ca7cec7cc294401f091d764ded1464f9e1f015de3dd066941c13483e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
