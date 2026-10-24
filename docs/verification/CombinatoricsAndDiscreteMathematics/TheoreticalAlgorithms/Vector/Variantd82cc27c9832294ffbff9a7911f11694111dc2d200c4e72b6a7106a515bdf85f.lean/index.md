# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1680bae090571eeeb4ea745a2ce23e5f37cf200",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1680bae090571eeeb4ea745a2ce23e5f37cf200`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Vector.iterM_eq_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-iterm-eq-iterfromidxm--2b0b0fe83777ddf851c367c5.md) | 43 | `result-track:2b0b0fe83777ddf851c367c5edf8470a4e1bc0574af50a5ff76a0630d129bd27` |
| 2 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterFromIdxM_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/std-iterators-vector-isplausiblestep-iterfromidxm-of-lt--019cea4aca28822d7a4c77ec.md) | 47 | `result-track:019cea4aca28822d7a4c77ecac68e6ca6e91be2ef2ec63ade755b2a61bb7d45a` |
| 3 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterFromIdxM_of_not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/std-iterators-vector-isplausiblestep-iterfromidxm-of-not-lt--6134b9788cb1e164148817fa.md) | 54 | `result-track:6134b9788cb1e164148817fa06455f1acef15f9e82c967c9a6e7faf44debdafa` |
| 4 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterM_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/std-iterators-vector-isplausiblestep-iterm-of-pos--d4cfd3c5ce851fbc517c288c.md) | 60 | `result-track:d4cfd3c5ce851fbc517c288c6dd716d4fea3b2afc4c68a959c78f383845486e1` |
| 5 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterM_of_not_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/std-iterators-vector-isplausiblestep-iterm-of-not-pos--595dc989f262b6bcc603af87.md) | 66 | `result-track:595dc989f262b6bcc603af870b95e95952bcea3dbe5768dea2abe7c15efc378c` |
| 6 | `theorem` | [Vector.iterFromIdxM_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-iterfromidxm-toarray--3f3c15d1c4af0c6069b89888.md) | 73 | `result-track:3f3c15d1c4af0c6069b89888987ffd23389b0ec3c9aa5ab91180673b625a345a` |
| 7 | `theorem` | [Vector.iterM_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-iterm-toarray--02c59d63ef8cba2d867e35c4.md) | 78 | `result-track:02c59d63ef8cba2d867e35c4e9b9ec0ec4513c4f72df89909e42382a5c2827ca` |
| 8 | `theorem` | [Vector.step_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-step-iterfromidxm--d9a10461d481bb34e475469a.md) | 82 | `result-track:d9a10461d481bb34e475469a7845a999ce145cee29056c500fd6149216cd46a4` |
| 9 | `theorem` | [Vector.step_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-step-iterm--4dcc58f554194dce5e1f82fc.md) | 92 | `result-track:4dcc58f554194dce5e1f82fca9104d44efc0b3f998ff62bf82d98bd1dc99e5e3` |
| 10 | `theorem` | [Vector.iterFromIdxM_equiv_iterM_drop_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-iterfromidxm-equiv-iterm-drop-tolist--6155ce4993db276eb2308bcb.md) | 104 | `result-track:6155ce4993db276eb2308bcb980190c04b3c174de13018a5ba0ed96151d41d28` |
| 11 | `theorem` | [Vector.iterM_equiv_iterM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-iterm-equiv-iterm-tolist--afb2c75faa82a413d4825f99.md) | 110 | `result-track:afb2c75faa82a413d4825f998997d409099646d035b1ed656adf66bcf7231caa` |
| 12 | `theorem` | [Vector.toList_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-tolist-iterfromidxm--e396ffac2eb801ec6def91ce.md) | 119 | `result-track:e396ffac2eb801ec6def91ce1675759dce8cf1764c8a65213fdec5dd8f9d9e1d` |
| 13 | `theorem` | [Vector.toList_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-tolist-iterm--5ecdf4016ee942b71ade9281.md) | 124 | `result-track:5ecdf4016ee942b71ade9281557f80735ba030971f3be8eb669c267b3603ec2e` |
| 14 | `theorem` | [Vector.toArray_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-toarray-iterfromidxm--540edefc8f0588165e000482.md) | 129 | `result-track:540edefc8f0588165e000482c132faf7681db1f42df0274c7a629248d054c6eb` |
| 15 | `theorem` | [Vector.toArray_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-toarray-iterm--4fdd2a2309447ad0b88218c1.md) | 134 | `result-track:4fdd2a2309447ad0b88218c153af3bc692f381f329d4968ce7cdbb9ad76a4ad8` |
| 16 | `theorem` | [Vector.toListRev_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-tolistrev-iterfromidxm--715a1cc58f8edface540dbd8.md) | 139 | `result-track:715a1cc58f8edface540dbd8e5088775e358e5a4165f4ae2fbdfa649e542014c` |
| 17 | `theorem` | [Vector.toListRev_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-tolistrev-iterm--c7e6320ca5be30b6557fc8ee.md) | 144 | `result-track:c7e6320ca5be30b6557fc8eea201ad5223643eff383c395419b1297109e122de` |
| 18 | `theorem` | [Vector.length_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-length-iterfromidxm--35e0b632dbe57ab231fb008c.md) | 149 | `result-track:35e0b632dbe57ab231fb008cafd26b713684f46bb66940857966be8ec1a39541` |
| 19 | `theorem` | [Vector.length_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f.lean/declarations/vector-length-iterm--fe0dbb6f8426ccaa34fa26e2.md) | 154 | `result-track:fe0dbb6f8426ccaa34fa26e2fd1d4d2a30a3006b1fb014d47eb3439490706331` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
