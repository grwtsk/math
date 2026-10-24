# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sampleable.Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9739b451fc159f5866b552fd4a4d34fa030ef756",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9739b451fc159f5866b552fd4a4d34fa030ef756`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Testing.SlimCheck.Gen` — import line 11; external provider; requires a separately pinned dependency.
- `Qq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/shrinkable--0f05838b1d1156f8e91d90a2.md) | 104 | `declaration-track:0f05838b1d1156f8e91d90a2ac75955d203b4129306daa1da8e75b042db23126` |
| 2 | `class` | [SampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/sampleableext--24e91796f385ccc2d5556211.md) | 119 | `declaration-track:24e91796f385ccc2d55562113549073d162f4ca8f03e162c04f2bc0e94d125ed` |
| 3 | `def` | [mkSelfContained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/mkselfcontained--309296f2e58cfd8d9b35e974.md) | 133 | `declaration-track:309296f2e58cfd8d9b35e97447722644b460484617c5168e2d4774ee842d8b82` |
| 4 | `def` | [interpSample](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/interpsample--1e784621433c175d27149abf.md) | 142 | `declaration-track:1e784621433c175d27149abfaf4c4f1c03406789cd9966094a18037daa254c78` |
| 5 | `def` | [Nat.shrink](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/nat-shrink--79c98c8c0fcc26206098391c.md) | 151 | `declaration-track:79c98c8c0fcc26206098391c5bd99a40f1f91a7a71282caf0eaa3d04068f95ff` |
| 6 | `instance` | [Nat.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/nat-shrinkable--7a33974e072c20848a008a5b.md) | 161 | `declaration-track:7a33974e072c20848a008a5b20d4c83114b69d36b8c23584a0af4b4d97d6f106` |
| 7 | `instance` | [Fin.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/fin-shrinkable--c552a941a6a90871583a55d5.md) | 164 | `declaration-track:c552a941a6a90871583a55d5f71fbe3d609821a1a1de4dd82d6d6e176bf8aec6` |
| 8 | `instance` | [Int.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/int-shrinkable--59572de202bd533776cbaa50.md) | 168 | `declaration-track:59572de202bd533776cbaa5081da52482a92b94484c531d6b79b0a3dcd740d93` |
| 9 | `instance` | [Bool.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/bool-shrinkable--c1a65fc08d19d84f24196734.md) | 171 | `declaration-track:c1a65fc08d19d84f24196734ce1f87c0e23e0ef92f1ac2de57c4a1ee55c77d0d` |
| 10 | `instance` | [Char.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/char-shrinkable--8f5343b9d91d44b45e975a6d.md) | 172 | `declaration-track:8f5343b9d91d44b45e975a6d6554ce6cf8208b3cd1a293c80c9f5d9c5c35e7a5` |
| 11 | `instance` | [Prod.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/prod-shrinkable--93ba45a3be27c20059bd2e55.md) | 174 | `declaration-track:93ba45a3be27c20059bd2e554cf00f610c87597d534dd8c3c4022a6ab0fb8f9a` |
| 12 | `instance` | [Sigma.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/sigma-shrinkable--046372e3b0054b1ff12115cf.md) | 181 | `declaration-track:046372e3b0054b1ff12115cf4e6736f36117bfb1f0d18e01db801310a41b7668` |
| 13 | `instance` | [List.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/list-shrinkable--3844ce14036c0b97ad68725c.md) | 191 | `declaration-track:3844ce14036c0b97ad68725cd009239e9b7642abcbd0b2de748f88459d1df75a` |
| 14 | `instance` | [Nat.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/nat-sampleableext--a7f89a73c1fc7493e7c253f0.md) | 202 | `declaration-track:a7f89a73c1fc7493e7c253f010f2cf8ccfadcdc6788491dc3168a80115b5c43b` |
| 15 | `instance` | [Fin.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/fin-sampleableext--311e8624743cd7b1f387cc7f.md) | 205 | `declaration-track:311e8624743cd7b1f387cc7f322a037222594c1b44b5e7e4227ee827ff5b7513` |
| 16 | `instance` | [Int.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/int-sampleableext--023b7c3fe2c046c1b4d115de.md) | 211 | `declaration-track:023b7c3fe2c046c1b4d115de2feea4a220d5d8cb8e49d073c0fc878a3bc8b923` |
| 17 | `instance` | [Bool.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/bool-sampleableext--ed174588eafd91622f442c7b.md) | 216 | `declaration-track:ed174588eafd91622f442c7b12f5d68571533f170335f9599ddec752404615db` |
| 18 | `def` | [Char.sampleable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/char-sampleable--c922dfe779f3f6638ffd6fae.md) | 222 | `declaration-track:c922dfe779f3f6638ffd6fae1e99bb3b26607e70654c06a489ddc517ad18fc23` |
| 19 | `instance` | [Char.sampleableDefault](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/char-sampleabledefault--af0bace64d9b3b8853d59092.md) | 232 | `declaration-track:af0bace64d9b3b8853d59092baf557b7302a208872f0b743ccf70c77e95e7559` |
| 20 | `instance` | [Prod.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/prod-sampleableext--c915ada677c635ef196e62d8.md) | 235 | `declaration-track:c915ada677c635ef196e62d85a171647c76d7e9752e3977c7c46433da4947407` |
| 21 | `instance` | [Prop.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/prop-sampleableext--774a142c62be43661e1e0e71.md) | 243 | `declaration-track:774a142c62be43661e1e0e718ac2ae82419e24e9606b4fee894544456aac244c` |
| 22 | `instance` | [List.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/list-sampleableext--2b2bb88af953804ea12841ab.md) | 250 | `declaration-track:2b2bb88af953804ea12841abc082f943d2180e56321f00753c8d8ebeb650dd17` |
| 23 | `def` | [NoShrink](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/noshrink--e8752c6fd827d842d051b5ff.md) | 258 | `declaration-track:e8752c6fd827d842d051b5ff794bc3702d72695d71243622747a32c271828953` |
| 24 | `def` | [mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/mk--91d4ca1a14af3e65090b5e65.md) | 262 | `declaration-track:91d4ca1a14af3e65090b5e65cfd069ff37a62d24fafac68fdca716cb358b6974` |
| 25 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/get--8cfd24735113572eec6092c7.md) | 263 | `declaration-track:8cfd24735113572eec6092c7b997e86234838e95403f1eaf2d602549c29b3e64` |
| 26 | `instance` | [inhabited](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/inhabited--12b6c95dca0ddfd8ecad363a.md) | 265 | `declaration-track:12b6c95dca0ddfd8ecad363a2d989ed6cb2ef5521cd27951734b259fcee5e53a` |
| 27 | `instance` | [repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/repr--6adba07a1de9053848f8d63e.md) | 266 | `declaration-track:6adba07a1de9053848f8d63ec067149680afd3c924b97bf20bca558db6ac8def` |
| 28 | `instance` | [shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/shrinkable--7f70355fc12cd7e8f532e389.md) | 268 | `declaration-track:7f70355fc12cd7e8f532e38984915ea8993df4b6d7cc454f7a45ba97de4b965a` |
| 29 | `instance` | [sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/sampleableext--104d78014820f75dc67a8b7c.md) | 271 | `declaration-track:104d78014820f75dc67a8b7c9b62ebade6941f5a76e21f35601dceef9e901cac` |
| 30 | `def` | [printSamples](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/printsamples--067c9b4d414a48655deffdcc.md) | 282 | `declaration-track:067c9b4d414a48655deffdcc745e6b9b2ee36e50a7994167ae29d2d925f4763e` |
| 31 | `def` | [mkGenerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/mkgenerator--8341d92c181ad13e13817df5.md) | 289 | `declaration-track:8341d92c181ad13e13817df51f5a8a3e64037f30aa185f65b4fff9d22c6443a9` |
| 32 | `elab` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variantd298f9bf740843de7fa4c76430b93ed8fe251cd6ebc4a2ab64101d5f72918082.lean/declarations/elab--5bfda53342c59bce8eb21a36.md) | 337 | `declaration-track:5bfda53342c59bce8eb21a36f4affcff3f493479954595e1965e6e3fef618649` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
