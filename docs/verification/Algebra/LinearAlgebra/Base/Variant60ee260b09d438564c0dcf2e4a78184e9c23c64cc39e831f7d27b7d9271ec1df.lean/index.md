# Verification target: GRWTSK.Algebra.LinearAlgebra.Base.Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97912283e44039cc02270c1f667fb87fc2b9d50b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97912283e44039cc02270c1f667fb87fc2b9d50b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.IsValuedIn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Base](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/base--e7c8e19cc16a3c4d07304868.md) | 54 | `declaration-track:e7c8e19cc16a3c4d07304868daf10e759b14041ebeace56045b14dcf069acd3c` |
| 2 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/flip--50caf380923f41f430a7027e.md) | 71 | `declaration-track:50caf380923f41f430a7027ef39adb657588bc87b67526d85395d1eb3157da72` |
| 3 | `lemma` | [root_ne_neg_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/root-ne-neg-of-ne--71e7b985a3569226c202bfe3.md) | 80 | `result-track:71e7b985a3569226c202bfe35eab251d9317aaefab970971515155fa88441eee` |
| 4 | `lemma` | [root_mem_span_int](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/root-mem-span-int--a1709a1d24e6e5ba29dad8b3.md) | 89 | `result-track:a1709a1d24e6e5ba29dad8b3a847b9ebd677395876ae6f39bd1fe5855c73e108` |
| 5 | `lemma` | [coroot_mem_span_int](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/coroot-mem-span-int--3d8477bb660f73e2d8467ce3.md) | 99 | `result-track:3d8477bb660f73e2d8467ce33f7262f076be684da53b431dc5baffcaf81b95b9` |
| 6 | `lemma` | [span_int_root_support](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/span-int-root-support--93f467ffc6981eb8ae54b6b9.md) | 104 | `result-track:93f467ffc6981eb8ae54b6b9ad75215c47348ee949e5cb7a1a1e6a4494c05ee1` |
| 7 | `lemma` | [span_int_coroot_support](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/span-int-coroot-support--dcdcd42e4989a0f81bc56a09.md) | 111 | `result-track:dcdcd42e4989a0f81bc56a09d2d0c3bc91088be02fe13f04b93e55d7223163bb` |
| 8 | `lemma` | [span_root_support](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/span-root-support--a9186b778219445f2195f28d.md) | 116 | `result-track:a9186b778219445f2195f28de8cd48e48a97045ed7ef50afecca4d4fa75d1ab3` |
| 9 | `lemma` | [span_coroot_support](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/span-coroot-support--0078ebb2803f1cf42791c64e.md) | 121 | `result-track:0078ebb2803f1cf42791c64e6370c1ce9926d9bd62b266d010f7138d3a131428` |
| 10 | `lemma` | [eq_one_or_neg_one_of_mem_support_of_smul_mem_aux](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/eq-one-or-neg-one-of-mem-support-of-smul-mem-aux--4526018ef93504a3e990b9a7.md) | 126 | `result-track:4526018ef93504a3e990b9a780603b88c40ab1fd20f1d54edf7dbf09eb34d5fc` |
| 11 | `lemma` | [eq_one_or_neg_one_of_mem_support_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/eq-one-or-neg-one-of-mem-support-of-smul-mem--03f411b78329335fdbac79d6.md) | 151 | `result-track:03f411b78329335fdbac79d6d216350c9af28470bcdc6df2f5d7578b8ebaece9` |
| 12 | `lemma` | [pos_or_neg_of_sum_smul_root_mem](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/pos-or-neg-of-sum-smul-root-mem--bab10d9f56cb4e3a5a23188c.md) | 171 | `result-track:bab10d9f56cb4e3a5a23188c4edf657ef7169be5c6224e13412cf7a67bd379e3` |
| 13 | `lemma` | [sub_notMem_range_root](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/sub-notmem-range-root--abfeefb961227915ee8bf05e.md) | 199 | `result-track:abfeefb961227915ee8bf05e4330e6553031a19031599aa56a04bdcfc265c77f` |
| 14 | `lemma` | [sub_notMem_range_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/sub-notmem-range-coroot--743b1788cf5b97c4c99f4b01.md) | 218 | `result-track:743b1788cf5b97c4c99f4b01b16600c1f39a2317c076ff4faab82a13e968c6ec` |
| 15 | `def` | [toWeightBasis](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/toweightbasis--eb3d7abe6c3ab06335eb2a58.md) | 232 | `declaration-track:eb3d7abe6c3ab06335eb2a5807394e9f19141be3be95f1a666b225a15263aac9` |
| 16 | `lemma` | [toWeightBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/toweightbasis-apply--110d285d0d9f14bd492c0628.md) | 239 | `result-track:110d285d0d9f14bd492c06284d7a2d989975070f4ff686747d180bc3aac96998` |
| 17 | `def` | [toCoweightBasis](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/tocoweightbasis--a66bcc9bdb7ab1f5ed5105a2.md) | 244 | `declaration-track:a66bcc9bdb7ab1f5ed5105a2cb0618b7f3e52bf9c543fc06e28bbf384bae05b0` |
| 18 | `lemma` | [toCoweightBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/tocoweightbasis-apply--2c693e2faeb6587651e1a31d.md) | 248 | `result-track:2c693e2faeb6587651e1a31d167285b41b877f262ef2f336dbebab666ad63e87` |
| 19 | `lemma` | [exists_root_eq_sum_nat_or_neg](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/exists-root-eq-sum-nat-or-neg--054662b252dbdc97bf4fe766.md) | 255 | `result-track:054662b252dbdc97bf4fe766e78648e494485a105d9ed67a097bae2dd69001ca` |
| 20 | `lemma` | [exists_root_eq_sum_int](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/exists-root-eq-sum-int--910cd322c242513945d4d576.md) | 272 | `result-track:910cd322c242513945d4d57675bd88be130582a16c9283d666d10bde565279f2` |
| 21 | `lemma` | [exists_coroot_eq_sum_int](../../../../../mathematics/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/declarations/exists-coroot-eq-sum-int--e112392daa964b03541afa4d.md) | 278 | `result-track:e112392daa964b03541afa4d88ae3273caa23e92c96bb9168fa94a0029368d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
