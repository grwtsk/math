# Verification target: GRWTSK.Topology.GeneralTopology.CechBeforeLineWrapSource.Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a467e471c3a1fe5afdcc0e2a49cbe703b0754ce7",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a467e471c3a1fe5afdcc0e2a49cbe703b0754ce7`.

Source path: `GRWTSK/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_columnSubmatrix](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/continuous-columnsubmatrix--06714e7bef074b707c50cc6f.md) | 31 | `result-track:06714e7bef074b707c50cc6fafde6403cae35c4fed651142591b2c1786b24356` |
| 2 | `theorem` | [continuous_columnMinor](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/continuous-columnminor--375818a7ed6d8d7c451254b1.md) | 38 | `result-track:375818a7ed6d8d7c451254b1e7d7044674c8b1aed6e1abebfeeb2fc451392bd3` |
| 3 | `def` | [framePivotDomain](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/framepivotdomain--f5ca2175e23a1ca3ece9d807.md) | 43 | `declaration-track:f5ca2175e23a1ca3ece9d807de52f241d12d892ef872ec56905256a4efa6981a` |
| 4 | `theorem` | [isOpen_framePivotDomain](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/isopen-framepivotdomain--ce9a4ae9eacad5ffc84a3dc3.md) | 47 | `result-track:ce9a4ae9eacad5ffc84a3dc312b84e0a89c9bf2da72d99b556523ce78d51d044` |
| 5 | `theorem` | [continuousAt_pivotNormalize](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/continuousat-pivotnormalize--0367d50adb673d8db50514fb.md) | 51 | `result-track:0367d50adb673d8db50514fb3dd5ada3088731d83d4f4c6c67d45f94de8c2f85` |
| 6 | `theorem` | [continuousAt_pivotTransition](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/continuousat-pivottransition--102a492babd27654e574ffc6.md) | 68 | `result-track:102a492babd27654e574ffc6b091d700304002034ccbb3cbe51796a85ea4e375` |
| 7 | `abbrev` | [NormalizedPivotFrame](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/normalizedpivotframe--e04e2decd2fe480017e6b1bf.md) | 79 | `declaration-track:e04e2decd2fe480017e6b1bf9d29b06ab3b13607b50628fe660f2b49402c2d51` |
| 8 | `theorem` | [normalizedPivotFrame_rank](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/normalizedpivotframe-rank--aa85f65b0f86840c559abc5c.md) | 83 | `result-track:aa85f65b0f86840c559abc5c45e6759c3c085657d41f51230f348807d98750df` |
| 9 | `def` | [normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/normalizedpivotplane--0187964068cd4666aa7f7924.md) | 90 | `declaration-track:0187964068cd4666aa7f79247449a392f93596f242a611cbb06b5e06470a7d63` |
| 10 | `def` | [intrinsicAtlasMap](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/intrinsicatlasmap--448b3ed7def7ef5d5cbff031.md) | 95 | `declaration-track:448b3ed7def7ef5d5cbff031190e3af45f045bc0b7ee60b311722c0b0fda454d` |
| 11 | `instance` | [intrinsicAtlasTopology](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/intrinsicatlastopology--f88f8e0cdb6a0ab32195e7c8.md) | 99 | `declaration-track:f88f8e0cdb6a0ab32195e7c8e2c97430e187a60f5be4187a4857b3ce80050a81` |
| 12 | `theorem` | [continuous_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/continuous-normalizedpivotplane--6e349fa872fad652d6eb4d88.md) | 103 | `result-track:6e349fa872fad652d6eb4d88826880aeae233e87f5d95105237c2c2fcfd972d5` |
| 13 | `def` | [intrinsicPivotDomain](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/intrinsicpivotdomain--bd4b2ff4ced17ccb758c98f8.md) | 112 | `declaration-track:bd4b2ff4ced17ccb758c98f8acb4a50b4cde2df7f74f787d4b7e53885b1f4279` |
| 14 | `theorem` | [representedPlane_mem_intrinsicPivotDomain_iff](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/representedplane-mem-intrinsicpivotdomain-iff--aed5ec943abf7828bf83da69.md) | 116 | `result-track:aed5ec943abf7828bf83da6974262d28e5b874ceb3c75c871022ad013bf6b02c` |
| 15 | `theorem` | [isOpen_intrinsicPivotDomain](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/isopen-intrinsicpivotdomain--c347a828b9b82acda1ac5a12.md) | 136 | `result-track:c347a828b9b82acda1ac5a12b3b361e239b8341fa7b797df089eff14b53b2ed1` |
| 16 | `theorem` | [intrinsicPivotDomain_cover](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/intrinsicpivotdomain-cover--3663a356cc99a50fb25cdf0a.md) | 149 | `result-track:3663a356cc99a50fb25cdf0a0c9bf54ff4199cd3b5a78f44501e0b6492cbed84` |
| 17 | `theorem` | [intrinsicAtlasMap_surjective](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/intrinsicatlasmap-surjective--42c71ff0741e0a36038ac9f0.md) | 158 | `result-track:42c71ff0741e0a36038ac9f010ba141ac01eec9408695abd277e0da282a4325b` |
| 18 | `abbrev` | [NormalizedPivotOverlap](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/normalizedpivotoverlap--bddd0c61c8a1a51d0587b148.md) | 164 | `declaration-track:bddd0c61c8a1a51d0587b1484b883015ad55ad496dcf6ec7450b9b98b2913bd9` |
| 19 | `def` | [normalizedOverlapChange](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/normalizedoverlapchange--235885e2fc2764770e9bfc48.md) | 168 | `declaration-track:235885e2fc2764770e9bfc48bc2744a24d45006fd525af49a30e98a04b23fc52` |
| 20 | `theorem` | [normalizedOverlapChange_inverse](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/normalizedoverlapchange-inverse--78715881e6c20438ed6e6d20.md) | 176 | `result-track:78715881e6c20438ed6e6d2037bc6ebda2d27c7d2a2142a7de09eb8644ad3f60` |
| 21 | `theorem` | [continuous_normalizedOverlapChange](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/continuous-normalizedoverlapchange--b63fbd868aa34373c8ca81d6.md) | 189 | `result-track:b63fbd868aa34373c8ca81d669e72efb8992f684eebd71138be361564dd92789` |
| 22 | `def` | [normalizedOverlapHomeomorph](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/normalizedoverlaphomeomorph--4895db4ad51283d10e3f40f5.md) | 201 | `declaration-track:4895db4ad51283d10e3f40f5c29bd721ccdefad943b7bb14ea3c98db091b69a4` |
| 23 | `abbrev` | [OpenCoverCech](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/opencovercech--ee54c7ec6ef9c53140c620c8.md) | 215 | `declaration-track:ee54c7ec6ef9c53140c620c817631adf3ada9ab725c8ff1dc9c2e03b5a3cf7b7` |
| 24 | `instance` | [openCoverCechTopology](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/opencovercechtopology--c0799bef546eafdb48e9ee49.md) | 219 | `declaration-track:c0799bef546eafdb48e9ee49699003c894695633fc97a4a8fb485b44fa3e7788` |
| 25 | `def` | [cechReindex](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/cechreindex--da012ebd8d212e4916904b9c.md) | 224 | `declaration-track:da012ebd8d212e4916904b9c0761fe7f6e8c8c773edbe438a5fcf55716740d49` |
| 26 | `theorem` | [cechReindex_id](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/cechreindex-id--d45f4152090e7be1add65012.md) | 230 | `result-track:d45f4152090e7be1add650120995363c96cfb08cfcecdb4d285cc4bb4a4b9d49` |
| 27 | `theorem` | [cechReindex_comp](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/cechreindex-comp--eca7f139b0b5b685f6e015f4.md) | 237 | `result-track:eca7f139b0b5b685f6e015f4451f98de1a2ae832ec534249890be30d6d0d4427` |
| 28 | `theorem` | [continuous_cechReindex](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/continuous-cechreindex--a66009f9eac2b1a3e6636103.md) | 243 | `result-track:a66009f9eac2b1a3e663610334a75e3339e404f977c0c6a688c31878f33face1` |
| 29 | `def` | [cechAugment](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/cechaugment--d6daa3b57b7172d8cd31fe38.md) | 256 | `declaration-track:d6daa3b57b7172d8cd31fe38db0b27b5c60b91e8df9b06e066c7811cc694c76a` |
| 30 | `theorem` | [continuous_cechAugment](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/continuous-cechaugment--0853c864e3d5dbb3a67857d9.md) | 259 | `result-track:0853c864e3d5dbb3a67857d999420f1917fca688891cee19b41181a004011d5d` |
| 31 | `theorem` | [cechAugment_surjective](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/cechaugment-surjective--e1c11372a5f8a40d667830ed.md) | 265 | `result-track:e1c11372a5f8a40d667830ed4d2a6ab791c18e185cb8fe5a05783b5a0f2a4f5b` |
| 32 | `def` | [cechOverlapFiberEquiv](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/cechoverlapfiberequiv--4f4e2f5917a2be1d7b3ccc8d.md) | 272 | `declaration-track:4f4e2f5917a2be1d7b3ccc8de4c860a8b1a4dfc24cf6f9853295870633a45a41` |
| 33 | `abbrev` | [IntrinsicPivotCech](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/intrinsicpivotcech--99a6497091f1ffbcb4a9366a.md) | 282 | `declaration-track:99a6497091f1ffbcb4a9366a1ef1b38dff8be86757b413b7f27e514fce763323` |
| 34 | `theorem` | [intrinsicPivotCech_augmentation_surjective](../../../../../mathematics/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/declarations/intrinsicpivotcech-augmentation-surjective--dc25f80eee4098f714c9dd27.md) | 286 | `result-track:dc25f80eee4098f714c9dd274a9f234b8a7eabc25833a8e7fb83904182dcb0e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
