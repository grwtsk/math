# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65ee0aeb3432502ae97f48fc702e0b1ff2cd895c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65ee0aeb3432502ae97f48fc702e0b1ff2cd895c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean.json)

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
| 1 | `class` | [Free](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/free--19abfbfc5f77cbfc002e32ab.md) | 51 | `declaration-track:19abfbfc5f77cbfc002e32abddb3ecd75145a6b9107e7031707a40a8b09441ad` |
| 2 | `lemma` | [Free.exists_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/free-exists-set--16c1434f25dd8d3fd4e8dfba.md) | 54 | `result-track:16c1434f25dd8d3fd4e8dfbabe36a37991de51539aba00e5b4bba97779100360` |
| 3 | `theorem` | [free_iff_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/free-iff-set--c880905b72075d676218df86.md) | 57 | `result-track:c880905b72075d676218df860598516c1fa70bb9cc810adb9ba94ae9d1b78703` |
| 4 | `theorem` | [free_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/free-def--ee1ca63905c08a780d7ae5a3.md) | 65 | `result-track:ee1ca63905c08a780d7ae5a38fcde7b5fb5660cad4b9d8b6c1a7bd4050152d6d` |
| 5 | `theorem` | [Free.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/free-of-basis--a5ddb8bf90db5b332aab8250.md) | 73 | `result-track:a5ddb8bf90db5b332aab8250e972012e38ccc1110b5f80be02ec98a91443a4cf` |
| 6 | `def` | [ChooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/choosebasisindex--7a1471c686fa10e6db94a1a8.md) | 87 | `declaration-track:7a1471c686fa10e6db94a1a8ae5b47c82a23a2fd679911c22fbc3d026b0be3d9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/instance--e1ac5f3024b3fc5251565058.md) | 92 | `declaration-track:e1ac5f3024b3fc5251565058da1bb5c25f75fe6b54915d3129ed19c5fa1d6b67` |
| 8 | `def` | [chooseBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/choosebasis--7fa249b4068b9810015e0f27.md) | 96 | `declaration-track:7fa249b4068b9810015e0f27895ade88fb52b18692c82b614d89d85a831d8166` |
| 9 | `def` | [constr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/constr--8542384d7ddbd41be25956f8.md) | 107 | `declaration-track:8542384d7ddbd41be25956f8a619de7b674a459ece9b478a0c48316aef6da6c2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/instance--b3834b5cb0f1d176a4c1f142.md) | 111 | `declaration-track:b3834b5cb0f1d176a4c1f14296f332fdfbaef301fd8899d3c4cee104290082af` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/instance--a96e5900b2ff0a37c87e1842.md) | 115 | `declaration-track:a96e5900b2ff0a37c87e1842b46aa36030bc65c5be5be915906a9e216ba1d831` |
| 12 | `theorem` | [infinite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/infinite--750d9e337f2e3dbaf09d869f.md) | 118 | `result-track:750d9e337f2e3dbaf09d869f6fe73e946a769f8e39bcad4091e599d05e1e9485` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/instance--9668235c099b74ebcc6b75b4.md) | 121 | `declaration-track:9668235c099b74ebcc6b75b46365572dc743e5f71ea233e0bbd7d1e9bffb8d5b` |
| 14 | `lemma` | [of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/of-equiv--d13dfc54ae7aee236eba519b.md) | 126 | `result-track:d13dfc54ae7aee236eba519b7b37619a815dd25235629b77c807fd618c38d24a` |
| 15 | `theorem` | [of_equiv'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/of-equiv--7b8de3128b128f69d0ad8922.md) | 143 | `result-track:7b8de3128b128f69d0ad89220ec5c4e48af26eb67fbc69bbebc40bf2bc018603` |
| 16 | `lemma` | [iff_of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/iff-of-equiv--e27fb533b8485e3eb99b26ac.md) | 147 | `result-track:e27fb533b8485e3eb99b26ac9a723b721a5e57e168ec1635a40c6351e8d71efd` |
| 17 | `instance` | [shrink](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/shrink--cf10731e7a4e156b03dd5c65.md) | 154 | `declaration-track:cf10731e7a4e156b03dd5c65d460abbd265f079da16416b92b39a9fcc8c40564` |
| 18 | `instance` | [self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/self--219d48e9f95c2b4ee4139b2c.md) | 163 | `declaration-track:219d48e9f95c2b4ee4139b2c5111e2749f846701deea10ea21455f07f0440796` |
| 19 | `instance` | [ulift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/ulift--0d37a0d8e95a892247284a77.md) | 166 | `declaration-track:0d37a0d8e95a892247284a7716230ac01daa3b70d5e8989c5c0994163604a375` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/instance--2c862086273810b744cd11c3.md) | 168 | `declaration-track:2c862086273810b744cd11c33a02bc40e07c846dfed4425316606a9e75b882ec` |
| 21 | `lemma` | [of_subsingleton'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/of-subsingleton--f36e948a79857d51ac3aecf2.md) | 173 | `result-track:f36e948a79857d51ac3aecf2ab29d89c5b49f18611b88733bea2a2a35432e563` |
| 22 | `theorem` | [repr_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/repr-algebramap--8bddb8870f42660eceb5fb1a.md) | 188 | `result-track:8bddb8870f42660eceb5fb1a8df3734184aadd4a271b1a97c23d501d97f8ec12` |
| 23 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/mem-center-iff--f3e2aecbd53cd25f8046b80e.md) | 197 | `result-track:f3e2aecbd53cd25f8046b80e48c82d368623cea73d8797f93407067451aa6050` |
| 24 | `theorem` | [mem_submonoidCenter_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/mem-submonoidcenter-iff--b19d9f3526cda722cb597ded.md) | 208 | `result-track:b19d9f3526cda722cb597dedbf83c5146d42bf810960cdee1ea205a352d6a2a7` |
| 25 | `theorem` | [mem_subsemigroupCenter_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64f84b409b7acc4d83af77b7875e2badcf8df2a4ab5fb9e9413c68974daf6a50.lean/declarations/mem-subsemigroupcenter-iff--d4ea8ef2f4f57fc7125dd4dc.md) | 212 | `result-track:d4ea8ef2f4f57fc7125dd4dc09ae4b79e1b357a77efe8c3b93cfc33fa80b024a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
