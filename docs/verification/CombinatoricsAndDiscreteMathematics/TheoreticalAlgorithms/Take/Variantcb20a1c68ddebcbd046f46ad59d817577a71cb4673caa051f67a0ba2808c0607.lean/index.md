# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Take.Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bcc8446a20c904cd29804398f9dd605529d9ad9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bcc8446a20c904cd29804398f9dd605529d9ad9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take--05b8ec38bf5d4b1cbfba11de.md) | 34 | `declaration-track:05b8ec38bf5d4b1cbfba11de1f6fd10a2d84aa8cbb5467c472eeedec0abc86bb` |
| 2 | `theorem` | [take_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-apply--c8def2ee870098be6f6c7949.md) | 38 | `result-track:c8def2ee870098be6f6c7949636ed7b5edbf5ee0c388985d5c3c3b7b5d94f14e` |
| 3 | `theorem` | [take_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-zero--18a86fc405af3703b5802c08.md) | 42 | `result-track:18a86fc405af3703b5802c081ff412ffcd97c5dc6bab80a1e63353d9cdd947c1` |
| 4 | `theorem` | [take_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-one--932e3d503e6f61551549f3fd.md) | 46 | `result-track:932e3d503e6f61551549f3fdb4c925f4382d2bf6469a27aa0760b910f91d43b8` |
| 5 | `theorem` | [take_eq_init](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-eq-init--edaecdf97fd652f58bd4f59f.md) | 52 | `result-track:edaecdf97fd652f58bd4f59ff2bbc0c90279f83dde027fc5cb774d8a0217a63c` |
| 6 | `theorem` | [take_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-eq-self--48f890d28cff16e7af58fbfa.md) | 59 | `result-track:48f890d28cff16e7af58fbfa81dee26d6da536636de5c4a899baaeddf8f5b30a` |
| 7 | `theorem` | [take_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-take--b86a180ed5d53a60f5ca6805.md) | 64 | `result-track:b86a180ed5d53a60f5ca68056ee5d266d3d99d6769c5c5d7b5689206d34d05e8` |
| 8 | `theorem` | [take_init](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-init--cc24cf94f5541cb078a11a2f.md) | 71 | `result-track:cc24cf94f5541cb078a11a2fd49496b9992eff1de9756ea420e019815757a99a` |
| 9 | `theorem` | [take_repeat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-repeat--2b14168e990b4cb44f8d84fc.md) | 77 | `result-track:2b14168e990b4cb44f8d84fcd0fd14faa0176cda36198e4305fb51ec914dfcd1` |
| 10 | `theorem` | [take_succ_eq_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-succ-eq-snoc--d9a75f29579f7a24ca8311ac.md) | 83 | `result-track:d9a75f29579f7a24ca8311ac0df3b3b49ce0517b0206cbc7c1b23cf3a886b4b6` |
| 11 | `theorem` | [take_update_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-update-of-lt--6412ac4b58395ede3ac12579.md) | 98 | `result-track:6412ac4b58395ede3ac1257924b092c54dd9951f9e546060eab6d778bb2c2c71` |
| 12 | `theorem` | [take_update_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-update-of-ge--dbb660f7560031b321d740fa.md) | 109 | `result-track:dbb660f7560031b321d740fa062ac71c0a0b215a30ecfb6bda36f7602a449864` |
| 13 | `theorem` | [take_addCases_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-addcases-left--b37d8cf16ca738567c4f2d5f.md) | 120 | `result-track:b37d8cf16ca738567c4f2d5fac847ee89ba9bedcf116ffbc65a4884a036a9550` |
| 14 | `theorem` | [take_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-append-left--6a1e1d57921d5ae330be7c5d.md) | 129 | `result-track:6a1e1d57921d5ae330be7c5dd57264bd524fc8f9dcd2a97e96aa44bd5577ec9a` |
| 15 | `theorem` | [take_addCases_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-addcases-right--a190d640740589a20efdf596.md) | 135 | `result-track:a190d640740589a20efdf5961698f4e02e27753afb27e2d228976ed8c2a08bb5` |
| 16 | `theorem` | [take_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/take-append-right--c2ee538860a26872b797a4d4.md) | 146 | `result-track:c2ee538860a26872b797a4d40dc05fddfc0d36bb44c851887ad8831f5f6175d7` |
| 17 | `theorem` | [ofFn_take_eq_take_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/offn-take-eq-take-offn--5f761399f7417d4de887e6c8.md) | 152 | `result-track:5f761399f7417d4de887e6c825f72a11692ddc05ac5358cd6406f8c08f6215cd` |
| 18 | `theorem` | [ofFn_take_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/offn-take-get--2d1db5b8c01265ec2b069128.md) | 157 | `result-track:2d1db5b8c01265ec2b06912848fcde9580bc1e86785f7f9f625519baaddeb234` |
| 19 | `theorem` | [get_take_eq_take_get_comp_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/get-take-eq-take-get-comp-cast--d812aba2778219c8e2b033c8.md) | 162 | `result-track:d812aba2778219c8e2b033c895f2c2d582541868045bd3bd80ad35108bd130c6` |
| 20 | `theorem` | [get_take_ofFn_eq_take_comp_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantcb20a1c68ddebcbd046f46ad59d817577a71cb4673caa051f67a0ba2808c0607.lean/declarations/get-take-offn-eq-take-comp-cast--a3c25020105df99de32ac888.md) | 168 | `result-track:a3c25020105df99de32ac8880b047aefbf70cdc756db6470d5f11f559436ea5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
