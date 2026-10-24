# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lex.Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679ad27dcaf5f1d376bae266563995eeb5dce2ea",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679ad27dcaf5f1d376bae266563995eeb5dce2ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelClasses` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/lex--260992001c714d2458e2f297.md) | 43 | `declaration-track:260992001c714d2458e2f29736436cf25dc201c3069693c6b7e755987a007f01` |
| 2 | `theorem` | [cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/cons-iff--4da23db0f0ab6f59a3d5cb33.md) | 54 | `result-track:4da23db0f0ab6f59a3d5cb33a94e29e60b00038bd901505385aa3e69aaa08b8d` |
| 3 | `theorem` | [not_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/not-nil-right--d2e7c7948b6435ffa3cfe87b.md) | 60 | `result-track:d2e7c7948b6435ffa3cfe87bbce6d2728e4aba9a9c2a314c5eb812b4a39c3810` |
| 4 | `theorem` | [nil_left_or_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/nil-left-or-eq-nil--e073a95e3b5104e3eab89ae5.md) | 64 | `result-track:e073a95e3b5104e3eab89ae5db1bf4eda74d79eaf0a0903bb77724d490982466` |
| 5 | `theorem` | [singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/singleton-iff--857629ad8db7208fabbac0f2.md) | 70 | `result-track:857629ad8db7208fabbac0f2276da09c71505c74567feb0cbc5b9f8d32f6e384` |
| 6 | `instance` | [isOrderConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/isorderconnected--bcfeed66aa30aeb4c4dd9c2e.md) | 73 | `declaration-track:bcfeed66aa30aeb4c4dd9c2ef919ab3cfc3c1eb00c4ead958a02e9a174365952` |
| 7 | `instance` | [isTrichotomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/istrichotomous--ec673e191e489c8efc77cc04.md) | 92 | `declaration-track:ec673e191e489c8efc77cc04dcb2d26a2966f2306b6d0f105c28adb7e6679aa9` |
| 8 | `instance` | [isAsymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/isasymm--873e9a185e71820fed8126f2.md) | 109 | `declaration-track:873e9a185e71820fed8126f26ec8c119906d1713b561590afa6e3a728092a30c` |
| 9 | `instance` | [isStrictTotalOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/isstricttotalorder--4718a9a2b399d253cb529860.md) | 121 | `declaration-track:4718a9a2b399d253cb529860c0f11cf12371905bbf768f7942be0f911c09e332` |
| 10 | `instance` | [decidableRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/decidablerel--d8d21ee3f41c6231edcad202.md) | 126 | `declaration-track:d8d21ee3f41c6231edcad2025f91384b47fb4451194745b7963270a8fd67c826` |
| 11 | `theorem` | [append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/append-right--c45d487515031d8072c603a9.md) | 140 | `result-track:c45d487515031d8072c603a98125d8f589d5edc1db7d7efd6a28611a35e342af` |
| 12 | `theorem` | [append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/append-left--5f12cc2dabb5e2722b8c8b99.md) | 146 | `result-track:5f12cc2dabb5e2722b8c8b994d9666ca6d4d61189cb0a6240e5ce812b955e695` |
| 13 | `theorem` | [imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/imp--4f048c322aa82dc2ce01a0dd.md) | 151 | `result-track:4f048c322aa82dc2ce01a0ddc2163b5537e8929ac1760749ad417243017dc3a0` |
| 14 | `theorem` | [to_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/to-ne--9bb54d92ef4c03410c05ca4a.md) | 157 | `result-track:9bb54d92ef4c03410c05ca4afca86dbfd7f2eb5d5fb90ce7004ffdab5f32d8dc` |
| 15 | `theorem` | [_root_.Decidable.List.Lex.ne_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/root-decidable-list-lex-ne-iff--5a0793ce5cec5c537c319b3a.md) | 162 | `result-track:5a0793ce5cec5c537c319b3a28f59b9dc7827c4cf4757d0e5b2855a75b534824` |
| 16 | `theorem` | [ne_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/ne-iff--9557458ce9026aa4516439f9.md) | 176 | `result-track:9557458ce9026aa4516439f9cb705287e69abe29da782e355f469b00a230708a` |
| 17 | `instance` | [LT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/lt--ff10a351b577b0068914308a.md) | 184 | `declaration-track:ff10a351b577b0068914308a8b77483be32ef403a762e5e987b115d0b19e0fd6` |
| 18 | `theorem` | [nil_lt_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/nil-lt-cons--8fc1d0b6a48637931be79359.md) | 188 | `result-track:8fc1d0b6a48637931be793597bbc5a92648d866f8bb5b0bd4ee18d3cbc3511f8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/instance--7d127e1e9cabfbb710119836.md) | 192 | `declaration-track:7d127e1e9cabfbb71011983639afbe0ff769cf50e26173e49f19b9478a9b3344` |
| 20 | `instance` | [LE'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/le--64f089abbac5c9a78bd1b517.md) | 196 | `declaration-track:64f089abbac5c9a78bd1b517a379105067a4bf91a3a8bd599f8dfc4115955f7c` |
| 21 | `theorem` | [lt_iff_lex_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.lean/declarations/lt-iff-lex-lt--8b97d2cdc308a8317bab3ece.md) | 200 | `result-track:8b97d2cdc308a8317bab3ecebe8c5dc113d20358b15094305f28a644c200d0d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
