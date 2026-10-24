# Verification target: GRWTSK.Topology.GeneralTopology.FunctionsBoundedAtInfty.Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "429a763b420240ffd7b3e2f810195a356d4aa33f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `429a763b420240ffd7b3e2f810195a356d4aa33f`.

Source path: `GRWTSK/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/atiminfty--6dba3c0f68ccf5759295f42d.md) | 35 | `declaration-track:6dba3c0f68ccf5759295f42dc12c9a4a664cfbfa4d020e750f44075fbfe9b1f8` |
| 2 | `theorem` | [atImInfty_basis](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/atiminfty-basis--65a008873e2fdb493221d2ab.md) | 38 | `result-track:65a008873e2fdb493221d2ab2f31bc39ca429cabc77751a0b2ea1bbea358edf2` |
| 3 | `theorem` | [atImInfty_mem](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/atiminfty-mem--5ee487d0b3b96fc9e5403a66.md) | 41 | `result-track:5ee487d0b3b96fc9e5403a66cb140a0a9ea48b5221760fc5ee3ed15574a9739b` |
| 4 | `def` | [IsBoundedAtImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/isboundedatiminfty--3d0a0457cff13fce1e2d9295.md) | 45 | `declaration-track:3d0a0457cff13fce1e2d9295f66e799f18e5ce43cf46e19d10ecc9617389a7f4` |
| 5 | `def` | [IsZeroAtImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/iszeroatiminfty--c826db9185b8dd83b128448b.md) | 49 | `declaration-track:c826db9185b8dd83b128448bbc9a0af816fec1b249a27a14ac901a80170fdf67` |
| 6 | `theorem` | [zero_form_isBoundedAtImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/zero-form-isboundedatiminfty--2c3878345181fcf7c683b594.md) | 52 | `result-track:2c3878345181fcf7c683b594b7956e1d2b942846d96cdcaf5ee9d991de3862c7` |
| 7 | `def` | [zeroAtImInftySubmodule](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/zeroatiminftysubmodule--5ced2c2535da213153c8fb36.md) | 57 | `declaration-track:5ced2c2535da213153c8fb36aa6f968f53851f3444476dca7d9a563395d1d68e` |
| 8 | `def` | [boundedAtImInftySubalgebra](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/boundedatiminftysubalgebra--4de558ba176786a1fcd3a89e.md) | 61 | `declaration-track:4de558ba176786a1fcd3a89e2a20c208957a4d96d10c39698e860cfc9698dc95` |
| 9 | `theorem` | [isBoundedAtImInfty_iff](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/isboundedatiminfty-iff--12791ffc7ce7869f7bde2dd5.md) | 64 | `result-track:12791ffc7ce7869f7bde2dd52b8c8ca5c7e376c1e15cb0bb369af1a60d6ac783` |
| 10 | `theorem` | [isZeroAtImInfty_iff](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/iszeroatiminfty-iff--f58080cf21897c95bf0a908d.md) | 69 | `result-track:f58080cf21897c95bf0a908da04343e9c9ac61d0229ef6b052f2cce5d332d129` |
| 11 | `theorem` | [IsZeroAtImInfty.isBoundedAtImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/iszeroatiminfty-isboundedatiminfty--9ffe22c31bc4bf2de120c2be.md) | 73 | `result-track:9ffe22c31bc4bf2de120c2be7a1d223ad20e020b94d0147bb8934b25a6be88b3` |
| 12 | `lemma` | [tendsto_comap_im_ofComplex](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/tendsto-comap-im-ofcomplex--ddee8b92e195ee2afe0dcfe7.md) | 77 | `result-track:ddee8b92e195ee2afe0dcfe73f0cb4c46ebf1532b26c4c3088f60da6f2569a52` |
| 13 | `lemma` | [tendsto_coe_atImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70.lean/declarations/tendsto-coe-atiminfty--35d1a6f4f0d25239720d4f78.md) | 84 | `result-track:35d1a6f4f0d25239720d4f78c335061e4612f5956881a5a53b926dd9d3d5735b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
