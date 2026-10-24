# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4f91aae6d1bdff91dc49c930fa388fa3d8b294e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4f91aae6d1bdff91dc49c930fa388fa3d8b294e`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer--e7e39a02670e853b5e3eb742.md) | 34 | `declaration-track:e7e39a02670e853b5e3eb7426d6a63a939cc9f2905a3c897dd8b953603d43422` |
| 2 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/mem-centralizer-iff--93e1493601a600a5fc03a2f9.md) | 42 | `result-track:93e1493601a600a5fc03a2f9a4d58c91a474e7a40b5c8e16928bb42466232a29` |
| 3 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/decidablememcentralizer--fe37481e1873fa9fdf95e97d.md) | 48 | `declaration-track:fe37481e1873fa9fdf95e97d28b1ae468d8c10d53bf76bcf1725d1b88a24aecc` |
| 4 | `theorem` | [one_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/one-mem-centralizer--2b2607b7840f7c6a92d422de.md) | 56 | `result-track:2b2607b7840f7c6a92d422deef2dc572ae9470634e4329e94e698a16740639e9` |
| 5 | `theorem` | [zero_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/zero-mem-centralizer--f7230ca11f4afb27a9a93d2f.md) | 62 | `result-track:f7230ca11f4afb27a9a93d2ffaa50a37d8ee75020588ae5cedf38bd6c90c39de` |
| 6 | `theorem` | [mul_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/mul-mem-centralizer--fed4c2575b43c3b62c3d0683.md) | 69 | `result-track:fed4c2575b43c3b62c3d068319c3af031d8099c376b1b31565d083c0f2ba0e5a` |
| 7 | `theorem` | [inv_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/inv-mem-centralizer--52a3cba5077251958db1e99c.md) | 76 | `result-track:52a3cba5077251958db1e99c12cce9be6001e572269c9334c6b1421188c55295` |
| 8 | `theorem` | [add_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/add-mem-centralizer--d7c612eaaf9d686c42a667c3.md) | 82 | `result-track:d7c612eaaf9d686c42a667c3d68ef43300339fc9df00bb3050f17d08805ba6a6` |
| 9 | `theorem` | [neg_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/neg-mem-centralizer--296e794836979ee07a963c72.md) | 87 | `result-track:296e794836979ee07a963c72cac1b6a5985fe8ed043832554b29d2f1edc61982` |
| 10 | `theorem` | [inv_mem_centralizer₀](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/inv-mem-centralizer--e2fa4c806716b575be1fcf9d.md) | 92 | `result-track:e2fa4c806716b575be1fcf9d2d85eed65aa43e11b06e4122beddf6d08473fa58` |
| 11 | `theorem` | [div_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/div-mem-centralizer--409d1749cc898784b3c091b7.md) | 102 | `result-track:409d1749cc898784b3c091b79023a19025a8f5b25a5854f9a3af6122d15f5128` |
| 12 | `theorem` | [div_mem_centralizer₀](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/div-mem-centralizer--4e298207917c5dc06f099784.md) | 110 | `result-track:4e298207917c5dc06f099784321b92b23361a235784b7ec2945293824ab39dbd` |
| 13 | `theorem` | [centralizer_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer-subset--1d33adc535adbd7c7c2c0343.md) | 117 | `result-track:1d33adc535adbd7c7c2c0343b7168eb43220b1df2ab2433197a27190778648ad` |
| 14 | `theorem` | [center_subset_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/center-subset-centralizer--4cea1bcbe832ec10b41a576d.md) | 123 | `result-track:4cea1bcbe832ec10b41a576dfa598761d4d9990f8b22bf39e3aa8c1ff97bb250` |
| 15 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer-eq-top-iff-subset--37c438c73a856c9ef1c77ab4.md) | 129 | `result-track:37c438c73a856c9ef1c77ab4f9a337a198d5e610d28921ec2155c6e1174ac056` |
| 16 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer-univ--87c344e2785ff134cf005244.md) | 138 | `result-track:87c344e2785ff134cf00524439e49edd2d897f70112cf605951b3ed3f4d99d41` |
| 17 | `theorem` | [centralizer_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer-eq-univ--d274e6d9154c5881e65aaf14.md) | 146 | `result-track:d274e6d9154c5881e65aaf14b523febde12b0c451c149e732b729fcb2a6df151` |
| 18 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer--9dd6cd9dd4d67b15848d9b53.md) | 161 | `declaration-track:9dd6cd9dd4d67b15848d9b53c5d50137ddea3146a82a4b0e0d289a2f5b73011e` |
| 19 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/coe-centralizer--0b5c571506486075c277b992.md) | 168 | `result-track:0b5c571506486075c277b992f6fa80ac386358c4ec94ecb129250a7873e9f1ba` |
| 20 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/mem-centralizer-iff--b2043cee5b31ccc25ed4a457.md) | 176 | `result-track:b2043cee5b31ccc25ed4a457775ce2045c754188cb9d2e87b3ff850073b1eb9e` |
| 21 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/decidablememcentralizer--aac934b089970c887d696970.md) | 182 | `declaration-track:aac934b089970c887d696970b76e1428ff6f1054fa0e59093a3f7d8ddce7a600` |
| 22 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/center-le-centralizer--5becdab378ac7a5e78f0779b.md) | 189 | `result-track:5becdab378ac7a5e78f0779b2b294046b0ec09cd2d99a86640f3ff4ffbdb5e2f` |
| 23 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer-le--6d0d6c47c56f786a4f2ef0f6.md) | 195 | `result-track:6d0d6c47c56f786a4f2ef0f6341a561f38267277890e74478e097a44afe59a3f` |
| 24 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer-eq-top-iff-subset--ed1ac6cd0aee862d5cd328de.md) | 201 | `result-track:ed1ac6cd0aee862d5cd328de48f9f9d88780492ace9aa56795597f1d05117e91` |
| 25 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/declarations/centralizer-univ--51c0dce83d39251cf309c84f.md) | 208 | `result-track:51c0dce83d39251cf309c84f8670f7b43cfb8976a78ed558e74204490389ae17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
