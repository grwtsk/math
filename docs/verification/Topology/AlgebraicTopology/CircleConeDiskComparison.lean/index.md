# Verification target: GRWTSK.Topology.AlgebraicTopology.CircleConeDiskComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81daebd6935c95c96d8d3f45fe702e009ae96b96",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/CircleConeDiskComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81daebd6935c95c96d8d3f45fe702e009ae96b96`.

Source path: `GRWTSK/Topology/AlgebraicTopology/CircleConeDiskComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/CircleConeDiskComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Sphere` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CircleCylinder](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/circlecylinder--59691bfedf35d959cc1715c1.md) | 32 | `declaration-track:59691bfedf35d959cc1715c1d72f28c76160593ade70adf0d95d9e519047c851` |
| 2 | `def` | [ApexRelated](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/apexrelated--cfad26fa66cab09679baa842.md) | 36 | `declaration-track:cfad26fa66cab09679baa84270666a475fe1d8a523a84f4d6e7090a88ae3e3c0` |
| 3 | `theorem` | [apexRelated_equivalence](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/apexrelated-equivalence--aac9bc4646a163c3ae4684f2.md) | 39 | `result-track:aac9bc4646a163c3ae4684f27c353a41f480ce1471da1d6a130b588639971ad6` |
| 4 | `def` | [apexSetoid](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/apexsetoid--80627acce686a9db4bbc08f3.md) | 54 | `declaration-track:80627acce686a9db4bbc08f37cb8584efd1be6f1c05871af8b6f864a756fcafc` |
| 5 | `def` | [CircleCone](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/circlecone--e18dd7684569d125a3117872.md) | 58 | `declaration-track:e18dd7684569d125a31178728535c57c387caec3905e26e231648be70d3fb256` |
| 6 | `def` | [coneProjection](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/coneprojection--2ad6037f2aa1ae3a75e74f4d.md) | 60 | `declaration-track:2ad6037f2aa1ae3a75e74f4d4f44083dc0f67b56c973f319b152112894a523d8` |
| 7 | `theorem` | [coneProjection_surjective](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/coneprojection-surjective--b3c277d281dcc81abe780afb.md) | 63 | `result-track:b3c277d281dcc81abe780afb510ef87ba98e4fe9fbf755fcb68b9e5b49f7adaf` |
| 8 | `theorem` | [coneProjection_continuous](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/coneprojection-continuous--f595b3f9d21afd027f50a533.md) | 69 | `result-track:f595b3f9d21afd027f50a533955ddde051fb96a2b21747627857cd675bdb301a` |
| 9 | `theorem` | [coneProjection_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/coneprojection-isquotientmap--a0f8ef3405ec4c906332400e.md) | 73 | `result-track:a0f8ef3405ec4c906332400e4c8f10fc7203a8d064b62dd8f910918fb29aa240` |
| 10 | `theorem` | [cone_apex_eq](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/cone-apex-eq--000f3add6ba008dd6f669a02.md) | 78 | `result-track:000f3add6ba008dd6f669a025e455c69448fe9f74bb94cc902b38fd219d4323e` |
| 11 | `theorem` | [cone_positive_radius_injective](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/cone-positive-radius-injective--bc2910057aebfe796be6d785.md) | 83 | `result-track:bc2910057aebfe796be6d78543fc80f5825ca7653ae7c2944602021d44d90233` |
| 12 | `def` | [HasExactApexKernel](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/hasexactapexkernel--dd4819f2d88df7acc145d83c.md) | 94 | `declaration-track:dd4819f2d88df7acc145d83cdcf1716051a1f4b66a23fd8bb1591cfe56398594` |
| 13 | `def` | [diskMapOfExactKernel](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/diskmapofexactkernel--9f1fa4280be60650d5c5cce5.md) | 99 | `declaration-track:9f1fa4280be60650d5c5cce50de0ae123bae394d22359915c45366e35fb8e7ba` |
| 14 | `theorem` | [diskMapOfExactKernel_projection](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/diskmapofexactkernel-projection--ca4218f277944822fdfb60c2.md) | 104 | `result-track:ca4218f277944822fdfb60c25231c6608b7a44863f40e24663e1c6da7ed8e8cb` |
| 15 | `theorem` | [diskMapOfExactKernel_injective](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/diskmapofexactkernel-injective--7934ffff475b0166be651020.md) | 111 | `result-track:7934ffff475b0166be651020212678478ce2599e8a146f4d021dc139247116b4` |
| 16 | `theorem` | [diskMapOfExactKernel_surjective](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/diskmapofexactkernel-surjective--da369c6e3c06d2322beee1f3.md) | 124 | `result-track:da369c6e3c06d2322beee1f3f8b6918f85a1679b40576012e34425b78ec214ae` |
| 17 | `theorem` | [diskMapOfExactKernel_continuous](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/diskmapofexactkernel-continuous--9ebb95f56da2a46db30257ea.md) | 134 | `result-track:9ebb95f56da2a46db30257ea219239ba75ca7b80886900e08ebaecf3887f9a12` |
| 18 | `theorem` | [coneCompact](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/conecompact--8560bef0b1c07db2ab57407f.md) | 145 | `result-track:8560bef0b1c07db2ab57407f040cf25ed1005b65941980e7a35da5741a270f09` |
| 19 | `def` | [coneHomeomorphDiskOfRadial](../../../../mathematics/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/declarations/conehomeomorphdiskofradial--dc19c18028bae959563b5a03.md) | 152 | `declaration-track:dc19c18028bae959563b5a030216d8aaf50d3a4f8a1af86ab9b40eac3c5fa9bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
