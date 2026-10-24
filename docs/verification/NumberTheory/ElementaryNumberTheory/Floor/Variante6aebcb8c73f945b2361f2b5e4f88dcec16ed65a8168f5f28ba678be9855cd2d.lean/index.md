# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Floor.Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9ed8e515441704b61324a64306195be30957c04",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9ed8e515441704b61324a64306195be30957c04`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Instances` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [floor_def'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/floor-def--7154054d53a9e336252daefd.md) | 41 | `result-track:7154054d53a9e336252daefd5215f885775e285d03c625008f8be7fed6f1b0c9` |
| 2 | `theorem` | [le_floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/le-floor--82c3c6fed252547b1630cc98.md) | 47 | `result-track:82c3c6fed252547b1630cc9811d6fac26a1663386a4325e26c3a02fada40fda9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/instance--14ca9ac18cec674a5bcfa490.md) | 58 | `declaration-track:14ca9ac18cec674a5bcfa4908865e29ec87e858771842a78d2848cfae9c9fc66` |
| 4 | `theorem` | [floor_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/floor-def--47c95923c226df971f3e587c.md) | 61 | `result-track:47c95923c226df971f3e587c9640f658adf9481a12ea4006b68a74404771f59c` |
| 5 | `theorem` | [floor_int_div_nat_eq_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/floor-int-div-nat-eq-div--fb74482b085805fabd804e24.md) | 64 | `result-track:fb74482b085805fabd804e24adbcc8f30181493dbec8227cabb6cd95cdf08b89` |
| 6 | `theorem` | [floor_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/floor-cast--827e493382bf42fecdba3f29.md) | 78 | `result-track:827e493382bf42fecdba3f292bda7b222973adbe5ffaa8c1b387ac9604b253e3` |
| 7 | `theorem` | [ceil_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/ceil-cast--426bcde4a163b7af9ba2c7e0.md) | 83 | `result-track:426bcde4a163b7af9ba2c7e006b415ed3a37179b2b9a90196e1ba3b1b92a9a69` |
| 8 | `theorem` | [round_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/round-cast--5342650ffd0bbda53e3903f8.md) | 88 | `result-track:5342650ffd0bbda53e3903f8d468137502c44c0fcab825f846d5574fc5ceff80` |
| 9 | `theorem` | [cast_fract](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/cast-fract--cc1c0bc608aa535a764c3a81.md) | 96 | `result-track:cc1c0bc608aa535a764c3a8112fd26dba10194fdaba59f8542fe41a1367acdbd` |
| 10 | `theorem` | [Int.mod_nat_eq_sub_mul_floor_rat_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/int-mod-nat-eq-sub-mul-floor-rat-div--fd803812f2e94c6c90a81858.md) | 102 | `result-track:fd803812f2e94c6c90a818581742ec4aba8714d5e20f3dd98c117cce86c308a4` |
| 11 | `theorem` | [Nat.coprime_sub_mul_floor_rat_div_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/nat-coprime-sub-mul-floor-rat-div-of-coprime--26510c5a93266c3d12ee115f.md) | 106 | `result-track:26510c5a93266c3d12ee115f44529aef3683952b63fb20c462ac0c2bb17d0695` |
| 12 | `theorem` | [num_lt_succ_floor_mul_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/num-lt-succ-floor-mul-den--da97851e16255fdf7350c373.md) | 116 | `result-track:da97851e16255fdf7350c373470c4335bc40d7f4886f96b985509c91f939d399` |
| 13 | `theorem` | [fract_inv_num_lt_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/declarations/fract-inv-num-lt-num-of-pos--b1c9a7c80d7b36dd983b1f49.md) | 139 | `result-track:b1c9a7c80d7b36dd983b1f49f19ef77f757cd24a8873f4935c74bb78e9fdc022` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
