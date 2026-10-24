# Verification target: GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af2cb1ccd844abb5105b1d043439c6988eebfe7c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af2cb1ccd844abb5105b1d043439c6988eebfe7c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars--50574f5a1f98363035b42931.md) | 43 | `declaration-track:50574f5a1f98363035b42931b441dc6fde12c73945b2aa84cce8b67a0d08bf89` |
| 2 | `theorem` | [coe_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/coe-restrictscalars--d86a3589c8e2837fc1e590da.md) | 50 | `result-track:d86a3589c8e2837fc1e590da91aa586ce61cd52f1a3c282a643dc3578916fdd0` |
| 3 | `theorem` | [toAddSubmonoid_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/toaddsubmonoid-restrictscalars--392943bf1bac27b7b4281422.md) | 54 | `result-track:392943bf1bac27b7b4281422c1f00b066370f2b4b13c76723e3fa0d31a362e23` |
| 4 | `theorem` | [restrictScalars_mem](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-mem--6764ca794710b0fb705b6740.md) | 59 | `result-track:6764ca794710b0fb705b6740e4d317953565b754a3adbdb06a21c0300c7df6d9` |
| 5 | `theorem` | [restrictScalars_self](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-self--9e107fd4d00381f5c710fa17.md) | 63 | `result-track:9e107fd4d00381f5c710fa17e4ccfbf5c54854960501f220559a54f94f4e58f7` |
| 6 | `theorem` | [restrictScalars_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-restrictscalars--dc1922f07688a989d7003a15.md) | 66 | `result-track:dc1922f07688a989d7003a15a9be99e9e38993f39da20699d1e8fbffa3e92061` |
| 7 | `theorem` | [restrictScalars_injective](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-injective--a768a5c85fb2d99c16a607b2.md) | 75 | `result-track:a768a5c85fb2d99c16a607b2a0724701b7e2ea7000717760282fbb5406866791` |
| 8 | `theorem` | [restrictScalars_inj](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-inj--e38eb36aa23d94fbd132b40a.md) | 80 | `result-track:e38eb36aa23d94fbd132b40a20abfe9d20b196d1c766c6704ea83407eceb7839` |
| 9 | `instance` | [restrictScalars.origModule](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-origmodule--39377dd8e9b14c6e28e74f71.md) | 85 | `declaration-track:39377dd8e9b14c6e28e74f71b24544074c1cb8336b1670b3bafe57c038834b12` |
| 10 | `instance` | [restrictScalars.isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-isscalartower--bcaa5c3a7e228015013904fd.md) | 88 | `declaration-track:bcaa5c3a7e228015013904fdeb901302a0f92d15f6931cfc6bf1e12586d80812` |
| 11 | `lemma` | [restrictScalars_le](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-le--3a417be6da6e16d4ceac9e22.md) | 93 | `result-track:3a417be6da6e16d4ceac9e228421fe24793121b903af48020dfc8ab07fe677bb` |
| 12 | `lemma` | [restrictScalars_lt](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-lt--83b0817ac11a4de57fdf5d21.md) | 98 | `result-track:83b0817ac11a4de57fdf5d21d64d2b0fb0896a4758f963f9beea6f56180e9e0a` |
| 13 | `def` | [restrictScalarsEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalarsembedding--a3b103791ca29b4727d97b46.md) | 105 | `declaration-track:a3b103791ca29b4727d97b46f94a1f9eb97ea36f77c57a804927b0865f6fa6c0` |
| 14 | `lemma` | [restrictScalars_monotone](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-monotone--da12d7c8fd5fb7bd75b3e588.md) | 111 | `result-track:da12d7c8fd5fb7bd75b3e5887efac7e6b38ee6b4f0a18779eb7fcea8bc9ae40a` |
| 15 | `lemma` | [restrictScalars_mono](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-mono--c13237b9e9a5fe5936ba982d.md) | 115 | `result-track:c13237b9e9a5fe5936ba982d4e4c7b877c99eb7e08c648606e8e8b577949a4c9` |
| 16 | `def` | [restrictScalarsEquiv](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalarsequiv--2d564731bc80c3befbceb472.md) | 121 | `declaration-track:2d564731bc80c3befbceb472a0cf71871ecdf97ca257b1e46df8f15a515b00e2` |
| 17 | `theorem` | [restrictScalars_bot](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-bot--b12f73bd7db0aaebd8523d7a.md) | 126 | `result-track:b12f73bd7db0aaebd8523d7a127b041aca4bf6c417740cf61f9fd86c9cc8bdd9` |
| 18 | `theorem` | [restrictScalars_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-eq-bot-iff--188a9b3fb788ff3d6c31436a.md) | 130 | `result-track:188a9b3fb788ff3d6c31436a00920e6b6b80cc16ff3da6006542d02327206b7e` |
| 19 | `theorem` | [restrictScalars_top](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-top--d87f04af0b4682cd29422fb8.md) | 134 | `result-track:d87f04af0b4682cd29422fb84f63892f0907659dbac6667f88db0eafa37fbdab` |
| 20 | `theorem` | [restrictScalars_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-eq-top-iff--3e462a8fa38ba8a40ecff549.md) | 138 | `result-track:3e462a8fa38ba8a40ecff549ad91bc2b2e10d0070ede2d667c956a329f6a0548` |
| 21 | `lemma` | [restrictScalars_sInf](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-sinf--b1f925efcabc78454347637c.md) | 144 | `result-track:b1f925efcabc78454347637c13ac943d1bc8d35f5606c1e7ddd06d1886859b63` |
| 22 | `lemma` | [restrictScalars_sSup](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-ssup--3b0ea5ff4d15f67298dd901d.md) | 150 | `result-track:3b0ea5ff4d15f67298dd901d4c2aa67762926b85819da1558b0f3238d1231294` |
| 23 | `def` | [restrictScalarsLatticeHom](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalarslatticehom--0b527b9e10b62d8ba6d7ccc4.md) | 157 | `declaration-track:0b527b9e10b62d8ba6d7ccc4a8c233dc9a0a06def58eb25b124986176c37971f` |
| 24 | `lemma` | [restrictScalars_iInf](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-iinf--6713be69780bb0787d62148c.md) | 163 | `result-track:6713be69780bb0787d62148c3cb7e0d906b28d8e9b94d5f170f1210f8e8b67fc` |
| 25 | `lemma` | [restrictScalars_iSup](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-isup--bd6350e9ce375b64eaf5018e.md) | 168 | `result-track:bd6350e9ce375b64eaf5018e9cf301b8cdba5579a4d8f827bd175f8f66b480d9` |
| 26 | `lemma` | [restrictScalars_inf](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-inf--39c2f94f8b97e6af913c7e23.md) | 173 | `result-track:39c2f94f8b97e6af913c7e23f212900f23f813defb285851965fe7c3acddcd0a` |
| 27 | `lemma` | [restrictScalars_sup](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/restrictscalars-sup--5775b610ed24d2fc0d83a9f5.md) | 178 | `result-track:5775b610ed24d2fc0d83a9f591582fe8cf8b62291fac1e1605eb397e84ef62e5` |
| 28 | `lemma` | [toIntSubmodule_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/tointsubmodule-toaddsubgroup--b0ee1d2d30e397bdc6ceb200.md) | 183 | `result-track:b0ee1d2d30e397bdc6ceb20005ee823dc0c31969da1460788f7d8460ff3930cd` |
| 29 | `theorem` | [codisjoint_restrictScalars_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/codisjoint-restrictscalars-iff--0ba6e70ac5c6ec1e207c5e3f.md) | 188 | `result-track:0ba6e70ac5c6ec1e207c5e3f5906427b55698a53ec1283d056ba106274301f62` |
| 30 | `theorem` | [disjoint_restrictScalars_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/disjoint-restrictscalars-iff--7b5f85bf0f75c3c24af026a3.md) | 193 | `result-track:7b5f85bf0f75c3c24af026a3401d59fb30cc535fda9ba85047b12de1f31633bc` |
| 31 | `theorem` | [isCompl_restrictScalars_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant880bd48f8f594f55c3b076b59d70b89083a082a23f4014bcf69f2aa0d358f0de.lean/declarations/iscompl-restrictscalars-iff--39073e725d0be24f442647ac.md) | 198 | `result-track:39073e725d0be24f442647ac3f7f37e95e1896deb9cd92c52db6aee16bda3cba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
