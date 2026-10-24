# Verification target: GRWTSK.Topology.EffectiveEpi.Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86f20839e370cdf3b4a37f81c64d509a160c4e6a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/index.md) · [Full source](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86f20839e370cdf3b4a37f81c64d509a160c4e6a`.

Source path: `GRWTSK/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.ReflectsPreregular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.EffectiveEpi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_tfae](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/effectiveepi-tfae--ed5c52800b1a1980a317c3fb.md) | 38 | `result-track:ed5c52800b1a1980a317c3fba484654ed551b315929211b0fa4e7cc30bc99b2e` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/instance--72db2d6d8c6e2ec8ee3b9c1c.md) | 50 | `declaration-track:72db2d6d8c6e2ec8ee3b9c1c630b4e0dd4dc012db02bc0a6f192f78ddbc59e14` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/instance--02bd300592c6e1e607d5b4c9.md) | 55 | `declaration-track:02bd300592c6e1e607d5b4c98e9d9953f58196cfaf5c8203b1b014fc518aa55f` |
| 4 | `def` | [stoneanToCompHausEffectivePresentation](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/stoneantocomphauseffectivepresentation--f8e12d0bcec2518f4d7a4a8f.md) | 63 | `declaration-track:f8e12d0bcec2518f4d7a4a8fceb392f6cf9e3270c8a1ef6dca855dadb6d89783` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/instance--74d341faee54ba7d01da6039.md) | 69 | `declaration-track:74d341faee54ba7d01da6039fe4342b8d24f2bf91941387e13bfff705e3b8e85` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/instance--cff1ea0f9062db52b8164b95.md) | 72 | `declaration-track:cff1ea0f9062db52b8164b956d2c9a8205d00ab0d9bc75f3f645974e77755fe5` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/example--e254bbc9bcddfd03b47285aa.md) | 74 | `declaration-track:e254bbc9bcddfd03b47285aa690f4bd375177406fc4a479ae60db1087409a035` |
| 8 | `theorem` | [effectiveEpiFamily_tfae](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/effectiveepifamily-tfae--e53a829cd4863dff142bba52.md) | 78 | `result-track:e53a829cd4863dff142bba52f138e31dca1c1e4709d5c56c25ba90dd4cf30954` |
| 9 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../mathematics/Topology/EffectiveEpi/Variantdaf7dfbbb220a95bbee9ad09be0a7ef30d82e329864e9d8ecbad30cfae6b7c1a.lean/declarations/effectiveepifamily-of-jointly-surjective--3be98e9320adcf269d161c7a.md) | 97 | `result-track:3be98e9320adcf269d161c7a8a09d95fa998c2b8a1d36bfedfb3ddf4a3ba847c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
