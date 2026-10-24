# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Flat.Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49bcf455c9e0c6e6fcddfcf5bc909228bf3ca0dd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49bcf455c9e0c6e6fcddfcf5bc909228bf3ca0dd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Bicones` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RepresentablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/representablyflat--b97b4d71a0ac2b721b9e5ba0.md) | 72 | `declaration-track:b97b4d71a0ac2b721b9e5ba0af6d1c48bc5dd737967343f93c37a2633024f0f7` |
| 2 | `instance` | [RepresentablyFlat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/representablyflat-id--30707ce767169ee4594f43cb.md) | 80 | `declaration-track:30707ce767169ee4594f43cb0c8769fce26915b29330c3440ecd72d6839efe72` |
| 3 | `instance` | [RepresentablyFlat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/representablyflat-comp--e4248438ef5f40cbc6203c78.md) | 98 | `declaration-track:e4248438ef5f40cbc6203c782911dfab718bcfa9be49b8d174056e36827a1a70` |
| 4 | `theorem` | [cofiltered_of_hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/cofiltered-of-hasfinitelimits--e0e3d5dfb15e60d81cced4f6.md) | 150 | `result-track:e0e3d5dfb15e60d81cced4f60ac7200082b472f09b6ad202856ffbdbd6026ca7` |
| 5 | `theorem` | [flat_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/flat-of-preservesfinitelimits--d657fc8ca7ef782f2ad7a66a.md) | 156 | `result-track:d657fc8ca7ef782f2ad7a66a3a91858527d910ef1b73e223bb504c33daca9ee9` |
| 6 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/lift--5dad1295f5dedd18dbe252c0.md) | 180 | `declaration-track:5dad1295f5dedd18dbe252c06bcedabd06d9f8940f1840378f3cebb364325bad` |
| 7 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/fac--3c4b41a7dd6995b297871e0e.md) | 191 | `result-track:3c4b41a7dd6995b297871e0eeb86056880920b0ba2d3bae9516e1cef8c36f112` |
| 8 | `theorem` | [uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/uniq--7329fb4871ec29a6ad2ee8aa.md) | 197 | `result-track:7329fb4871ec29a6ad2ee8aaf56d62610201342461f150158555c6e4347ef7c3` |
| 9 | `def` | [preservesFiniteLimitsOfFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/preservesfinitelimitsofflat--e056ff729ef43f43f3a8f9c3.md) | 283 | `declaration-track:e056ff729ef43f43f3a8f9c3feddf1c6a679b85693b609f2fd45129548df3257` |
| 10 | `def` | [preservesFiniteLimitsIffFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/preservesfinitelimitsiffflat--f31f06885f6b798badcd2711.md) | 301 | `declaration-track:f31f06885f6b798badcd2711c41070161ab382074b4a4862bcb658b06fb275e2` |
| 11 | `def` | [lanEvaluationIsoColim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/lanevaluationisocolim--d4dfddffd6c48003f6a60f33.md) | 326 | `declaration-track:d4dfddffd6c48003f6a60f33785b8c9c70f0470a66503f1de2d74d4ae9e2f06c` |
| 12 | `instance` | [lanPreservesFiniteLimitsOfFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/lanpreservesfinitelimitsofflat--8ad54c5266eb31b7b3a76beb.md) | 363 | `declaration-track:8ad54c5266eb31b7b3a76bebb940eb283c2d926ce9d9ae32bd59b7d4a87a241e` |
| 13 | `instance` | [lan_flat_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/lan-flat-of-flat--3c5ed6f29e985707566aec20.md) | 375 | `declaration-track:3c5ed6f29e985707566aec202f65a3977d611a8b0159ca37f8e4756344b79c76` |
| 14 | `instance` | [lanPreservesFiniteLimitsOfPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/lanpreservesfinitelimitsofpreservesfinitelimits--e8e43f826fa7b198f27a72fb.md) | 383 | `declaration-track:e8e43f826fa7b198f27a72fb7eac7896cf2721185f793a834e21604c833fc73c` |
| 15 | `theorem` | [flat_iff_lan_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/flat-iff-lan-flat--478dcb5a173591954c56247e.md) | 390 | `result-track:478dcb5a173591954c56247ef0458665ed508ee6cde0e071e16ef7da0d4cf6ea` |
| 16 | `def` | [preservesFiniteLimitsIffLanPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/declarations/preservesfinitelimitsifflanpreservesfinitelimits--151f40617da42a80fe17f16b.md) | 405 | `declaration-track:151f40617da42a80fe17f16b1062928d0090b1bf16e6ed1899b97e53f0d3c176` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
