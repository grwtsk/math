# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Preimmersion.Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f09ce48e6f7dbfaf58e0531aaee8c95541c04e5c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f09ce48e6f7dbfaf58e0531aaee8c95541c04e5c`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.SurjectiveOnStalks` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/ispreimmersion--0a0dc0c31d1447094c94562a.md) | 37 | `declaration-track:0a0dc0c31d1447094c94562a2cbabddb60874c06d684f419ce13b7bb2657a830` |
| 2 | `lemma` | [Scheme.Hom.isEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/scheme-hom-isembedding--7df3f0e798a966244b56e451.md) | 40 | `result-track:7df3f0e798a966244b56e451b23952803dfe269431ea2e0d24cc4a522bf8ffaa` |
| 3 | `lemma` | [isPreimmersion_eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/ispreimmersion-eq-inf--bd323c026b9589fda13f0dfc.md) | 46 | `result-track:bd323c026b9589fda13f0dfc13b220442935c104b8fd21a646082f4cd11f1aba` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/instance--36ed8db97e9b5bdbc532decc.md) | 54 | `declaration-track:36ed8db97e9b5bdbc532decc3b1feef46acbead581e0febd274089571d1ca016` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/instance--6f728c12e3c5c52c7e04ea86.md) | 57 | `declaration-track:6f728c12e3c5c52c7e04ea868faecb0fc5a3b6eca6c7492840663c207db8c1f1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/instance--1ad8a47c3666bbe23bfd57a0.md) | 61 | `declaration-track:1ad8a47c3666bbe23bfd57a09f6e7cf3047b159468fbf0f8d1e158923fb6192c` |
| 7 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/comp--f6461f148c27b8dda9a46674.md) | 65 | `declaration-track:f6461f148c27b8dda9a46674ee9f7ace1c98314acae0779fbac3455acffeb422` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/instance--14a1a567fed0145b464bc914.md) | 69 | `declaration-track:14a1a567fed0145b464bc91439e23ad72e3d6e163252f8b7e88164d4c2a8679a` |
| 9 | `theorem` | [of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/of-comp--71dc10a57a03777f48562fb5.md) | 72 | `result-track:71dc10a57a03777f48562fb54f1ae0190e93cd44891bf7d152fb7ccb7f39627a` |
| 10 | `theorem` | [comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/comp-iff--e068c4d383a6ff3ff63b09a9.md) | 82 | `result-track:e068c4d383a6ff3ff63b09a9a439ee4b401c1af1cbaee289b1195bcda05e56f3` |
| 11 | `lemma` | [Spec_map_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/spec-map-iff--ee016c1e27803b844a37b5cf.md) | 86 | `result-track:ee016c1e27803b844a37b5cf3d9a350855f9a718af3aee76550830793e6647e2` |
| 12 | `lemma` | [mk_Spec_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/mk-spec-map--d6b3b14a803197972cdc500f.md) | 95 | `result-track:d6b3b14a803197972cdc500ffc02138d7843bb9241ab6293b93dfcbe757b0f2a` |
| 13 | `lemma` | [of_isLocalization](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/of-islocalization--c5ca25a73174d2c5cdc8b90d.md) | 100 | `result-track:c5ca25a73174d2c5cdc8b90dc4cf9b5de3a688f480cb2f3bdd306a61d18fcfbc` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/declarations/instance--f0a6c92993b7255ac51b32df.md) | 108 | `declaration-track:f0a6c92993b7255ac51b32df25f35211eb7cbe06362b39d1e388bbbb17a6f7ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
