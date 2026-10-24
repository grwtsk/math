# Verification target: GRWTSK.Algebra.LinearAlgebra.ElementaryRowOperations.Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "360b29754737210feeab7b2c067ed733c0d58722",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `360b29754737210feeab7b2c067ed733c0d58722`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean.json)

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
| 1 | `def` | [rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowscale--772f3e7fadb91ee987e9dac6.md) | 33 | `declaration-track:772f3e7fadb91ee987e9dac6b09d1f8ce304cbaaa2d02ca7126d873f8f1d555b` |
| 2 | `lemma` | [rowScale_one](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowscale-one--b133fc6d585f392087aa8376.md) | 37 | `result-track:b133fc6d585f392087aa83768f594364d5118e66bf8355f0a63543a5764bb12c` |
| 3 | `lemma` | [rowScale_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowscale-apply-same--860a4fd222ed182ee2fad44f.md) | 42 | `result-track:860a4fd222ed182ee2fad44f669868b54a4ae07c6de0c3eff7b549277b9b3ebe` |
| 4 | `lemma` | [rowScale_apply_diag_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowscale-apply-diag-of-ne--40c43213ac6c3d448569ed2f.md) | 47 | `result-track:40c43213ac6c3d448569ed2fe2fa7b38eb6935b442ac39e17916fd884a9fcc49` |
| 5 | `lemma` | [rowScale_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowscale-apply-ne--daf286f91b74a052886fdb92.md) | 52 | `result-track:daf286f91b74a052886fdb92b51355365bd1cb6e11547cf77eade25ac4d37b97` |
| 6 | `lemma` | [rowScale_mul](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowscale-mul--3f875534139ffb364128d424.md) | 60 | `result-track:3f875534139ffb364128d424914e7c5e32f316bdc7ee68ddf73b06877aa05dbb` |
| 7 | `lemma` | [mul_rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/mul-rowscale--eeb6e28699e555514713a746.md) | 64 | `result-track:eeb6e28699e555514713a7467e807436a1cbc8dad8825ac77a6f604c84626f0a` |
| 8 | `lemma` | [rowScale_mul_rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowscale-mul-rowscale--e4c5a2203ac105930e90ecd4.md) | 69 | `result-track:e4c5a2203ac105930e90ecd4adf2ed5597c48fe057d67e2c4d46555b912f61c9` |
| 9 | `def` | [rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowscale--e56b19e9e04a1a6d922c4d0e.md) | 80 | `declaration-track:e56b19e9e04a1a6d922c4d0e6c63b478718878e093d8b8c3e3cb922d812e84b6` |
| 10 | `lemma` | [map_rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/map-rowscale--05f765527599a83c187c42f5.md) | 87 | `result-track:05f765527599a83c187c42f5b753086f4ae16f0ae0b41de65ac1af88dd10cdbb` |
| 11 | `def` | [transvection](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/transvection--5d6c4befafbdf2863cbe90d5.md) | 98 | `declaration-track:5d6c4befafbdf2863cbe90d5631bd5b9dc07733f9e06073659fb93f10b1eefae` |
| 12 | `abbrev` | [RowEquivalent](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowequivalent--5017f95d9498f84cbc0772b9.md) | 111 | `declaration-track:5017f95d9498f84cbc0772b9e094bcfeff44e0e00038af7c6e29f8bb70e53b80` |
| 13 | `lemma` | [rowEquivalent_iff_associated_op_op](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowequivalent-iff-associated-op-op--b385276afc523e6eef48fdef.md) | 114 | `result-track:b385276afc523e6eef48fdefcc3078ded1136d6d28ae6fea2eb3807e14b31c3b` |
| 14 | `lemma` | [RowEquivalent.refl](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowequivalent-refl--4bb08e70d31f82d2aeb01af7.md) | 123 | `result-track:4bb08e70d31f82d2aeb01af73bcd69de751cd9ea8c9b5008e57c104ef6650fef` |
| 15 | `lemma` | [RowEquivalent.symm](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowequivalent-symm--58f3938e066c1cb62ecd44cd.md) | 126 | `result-track:58f3938e066c1cb62ecd44cda6752c26e76b63ee99e800cda0ff51727c6b5692` |
| 16 | `lemma` | [RowEquivalent.trans](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowequivalent-trans--e226cb3ee3042139b1f36c36.md) | 129 | `result-track:e226cb3ee3042139b1f36c3643c8b0e9173daac29fc0ffcea0d90e3b73eb7976` |
| 17 | `instance` | [setoid](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/setoid--446cdf68fbf05635c59a2cd2.md) | 136 | `declaration-track:446cdf68fbf05635c59a2cd21c5035e4d7d8264590eb417d03c32090cf15d279` |
| 18 | `lemma` | [rowEquivalent_swap](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowequivalent-swap--9fea612201331e8a4f3859b6.md) | 142 | `result-track:9fea612201331e8a4f3859b6b452b603b39bdf6068d250f51f698077e9f30500` |
| 19 | `lemma` | [rowEquivalent_rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowequivalent-rowscale--114ff8007d14711ed0c2995b.md) | 146 | `result-track:114ff8007d14711ed0c2995b228935564a384af550d57ecbf69844493c69c0d7` |
| 20 | `lemma` | [rowEquivalent_transvection](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/declarations/rowequivalent-transvection--8d389e23acef4337dedf1018.md) | 150 | `result-track:8d389e23acef4337dedf1018e79ea96d39d23028194f1e415bbaff3e2207f462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
