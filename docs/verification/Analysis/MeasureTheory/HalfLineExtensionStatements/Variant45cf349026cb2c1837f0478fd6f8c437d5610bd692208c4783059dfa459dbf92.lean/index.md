# Verification target: GRWTSK.Analysis.MeasureTheory.HalfLineExtensionStatements.Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cfaab97ffbde650fd23bb5dc69739e5ba1b2f05",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cfaab97ffbde650fd23bb5dc69739e5ba1b2f05`.

Source path: `GRWTSK/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/fullh--96bec99ce2d30acad71fdcb7.md) | 16 | `declaration-track:96bec99ce2d30acad71fdcb758429e1656c5d6d7b0aa3d527003246e10ff33e8` |
| 2 | `def` | [zeroExtensionFunction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextensionfunction--9fefdfeb8ae4f0b5a1aa8568.md) | 18 | `declaration-track:9fefdfeb8ae4f0b5a1aa8568f9a0dec32b445897367c2a9d3ec49cba4b7e7904` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextensionfunction-memlp--b69ce33ecf0ef5e10c23c126.md) | 20 | `result-track:b69ce33ecf0ef5e10c23c12643903c12908726954a3ea7d274da60692de4dccf` |
| 4 | `def` | [zeroExtensionVector](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextensionvector--987ff37186079afa649535b2.md) | 24 | `declaration-track:987ff37186079afa649535b24f60ad7f924711cd6c733f4a8f94cefa0293010b` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextensionvector-ae--2acee33b03e014c3bc850b93.md) | 27 | `result-track:2acee33b03e014c3bc850b93905ca130ffd1e0aef08e3eb1125a09f30e73d9ce` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextensionvector-norm--7c20cc7f31db71997eff40c0.md) | 31 | `result-track:7c20cc7f31db71997eff40c07b71cfb98ac9e5d5e830ed05167f1fc895d6fa5d` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextensionvector-add--b0cd0100982c0a775139ba7a.md) | 36 | `result-track:b0cd0100982c0a775139ba7a6dd5a0ca4627c70eb895d725321d18db9d58ab88` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextensionvector-smul--692320314fd8b99e3a693ad6.md) | 48 | `result-track:692320314fd8b99e3a693ad6bc129ceff5cf1f728955746c1d9c8a2c99a8c944` |
| 9 | `def` | [zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextension--9a579756225ce38dccd4f7f1.md) | 61 | `declaration-track:9a579756225ce38dccd4f7f1679462ebd857054011650e4e6d3dd0c4fb8aa9da` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextension-ae--218d9c621d45e78ba1308646.md) | 67 | `result-track:218d9c621d45e78ba13086467912e3439b7aef2a519ef89f498485f5a46bae90` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextension-norm--677983996f63a8258d4f9ddd.md) | 71 | `result-track:677983996f63a8258d4f9dddd8e93656d7faee64972e2a8ee582d17398b425ec` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextension-ae-halfline--b5e79ced3a23721c6ee72be2.md) | 74 | `result-track:b5e79ced3a23721c6ee72be2fb0c06210abf1d712a6273b624fa5c439c8efa14` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/zeroextension-ae-nonpositive--2b7f5024ae147ea06d66afb4.md) | 80 | `result-track:2b7f5024ae147ea06d66afb4db6b072e3d5a4cede058517836145422f036e5e5` |
| 14 | `def` | [restriction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/restriction--5635164d3f4ad04da6d0249c.md) | 89 | `declaration-track:5635164d3f4ad04da6d0249cc2336f7487ecc46af502edefcc34bb4eb8594637` |
| 15 | `theorem` | [restriction_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/restriction-ae--a37cda37b34800fa6bf678de.md) | 91 | `result-track:a37cda37b34800fa6bf678de29fcf79ad718df7587333a6d4460909e7db02436` |
| 16 | `theorem` | [restriction_norm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/restriction-norm-le--dba6141ef615c7b96a9213f1.md) | 94 | `result-track:dba6141ef615c7b96a9213f1bf9477693fc3dd722fb5b9d22656155551e94dec` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/restriction-opnorm-le--46a22babd17cf53b628aef7b.md) | 97 | `result-track:46a22babd17cf53b628aef7b4218a626d821d49752cba2baa50f4bb2dbc19a3a` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/restriction-zeroextension--6179741df627c76b42fdee51.md) | 102 | `result-track:6179741df627c76b42fdee51d7636c4e50f44f853b97fb4ad4eef1d142f39f70` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/restriction-comp-zeroextension--c0e61865c5f5595fe1ddd747.md) | 105 | `result-track:c0e61865c5f5595fe1ddd747f631508337281dbeffba41acf159d998932c36bc` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--0d4df02956d558b652f65dc2.md) | 118 | `declaration-track:0d4df02956d558b652f65dc25d6d7924d82ee1837e45a95540eed7596faa29e9` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--caff3234bf70bc00cd39ba44.md) | 119 | `declaration-track:caff3234bf70bc00cd39ba44591341429e66b9382ac03044df9025440c139c40` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--840f53071b1d402ea6d9f56e.md) | 120 | `declaration-track:840f53071b1d402ea6d9f56e6858cf24a3f96bbe027b80b2aad7d6eba8622394` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--95da5b1010979c4a5418988f.md) | 122 | `declaration-track:95da5b1010979c4a5418988f749c4ef3fbe1e5e7340fd2e3bdcdd4942abe763d` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--841e1cb32ef8de40a83f0d2a.md) | 124 | `declaration-track:841e1cb32ef8de40a83f0d2a0d16bcf88e513680acf08a8b8aa4b8537877b557` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--02253d8e88959914eab6fa5d.md) | 126 | `declaration-track:02253d8e88959914eab6fa5d8b39f3950504e9e54c08a9a824d862f9947acb66` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--82a4ee422a62e65e6e95c29e.md) | 127 | `declaration-track:82a4ee422a62e65e6e95c29e6dddc56b3a6070daff4f4c1af93bd41c1d045d41` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--705cb18e89cd906231d1d683.md) | 129 | `declaration-track:705cb18e89cd906231d1d683c2d068d80a7272286316758a23347dd3a079d1fa` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--acf8b239f026f9fb0ac76281.md) | 131 | `declaration-track:acf8b239f026f9fb0ac76281b613558d8ecf93a610f2b46ec3b14f2b16775c1b` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--07534de904b9da0b4286e0b0.md) | 132 | `declaration-track:07534de904b9da0b4286e0b0d046df81204e7ad181754201a92531f4a73f3d57` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--94f253977c5ac34047404ba1.md) | 133 | `declaration-track:94f253977c5ac34047404ba1d4cba1632f86d4d1abfbdd380ccf3ce475e6eca2` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--1908e3c22185065940a399b3.md) | 135 | `declaration-track:1908e3c22185065940a399b396af1db7d59171e5d9e6de89b5c986cb4e74aee2` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--3afd49d87c3e686856986651.md) | 136 | `declaration-track:3afd49d87c3e6868569866515c0dbd95d1318758677a9d139d8ea6d750509e51` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--af211cc4f117b847540a78e8.md) | 138 | `declaration-track:af211cc4f117b847540a78e87e9f900fa29cdbd206c9d0bf4b4171056a935dd3` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--6d23dc6009253b0b4ce1548a.md) | 140 | `declaration-track:6d23dc6009253b0b4ce1548aaf4bde8444cca01a1c736aa9f9aa457881d5e806` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--db2dc89188a5bebb93020ea8.md) | 141 | `declaration-track:db2dc89188a5bebb93020ea8cc1b0eb177187ebd6234b7bd85f868d6f7946d39` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--4fdf41390fa8b9fcd8b5c4ae.md) | 143 | `declaration-track:4fdf41390fa8b9fcd8b5c4ae4f39a116a429a701d6eb7cad8585c711ab1ee761` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--b694876e07abab2f84596b1c.md) | 144 | `declaration-track:b694876e07abab2f84596b1c6a199458f80e543a00669ff3c67c5be04ee18681` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--1b9ce3703be8349af4292840.md) | 145 | `declaration-track:1b9ce3703be8349af42928402f26164744d33e26ae983207741d028af87dfed0` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionStatements/Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92.lean/declarations/example--519dd13d8ccd1b5352b0434f.md) | 146 | `declaration-track:519dd13d8ccd1b5352b0434fe2c3efa306a404d32dc9521f02e66704e7250758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
