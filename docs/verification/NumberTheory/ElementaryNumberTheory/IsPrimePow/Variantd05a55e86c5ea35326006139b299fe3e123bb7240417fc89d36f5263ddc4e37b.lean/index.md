# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.IsPrimePow.Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e162b8d8eefd075b8489c980afac512b3f2ca553",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e162b8d8eefd075b8489c980afac512b3f2ca553`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow--9f11e607fd52984e077cfbed.md) | 22 | `declaration-track:9f11e607fd52984e077cfbedd5d3278066feeb59d77573992841b89c8c494459` |
| 2 | `theorem` | [isPrimePow_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-def--25e75da816446205ce66775c.md) | 26 | `result-track:25e75da816446205ce66775c80fedfa63669326941b9d3cd00628432bc0886f3` |
| 3 | `theorem` | [isPrimePow_iff_pow_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-iff-pow-succ--fed13787e50041c00d30478a.md) | 32 | `result-track:fed13787e50041c00d30478a36dd6686f4f481883fb2c05f79117214729de898` |
| 4 | `theorem` | [not_isPrimePow_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/not-isprimepow-zero--094bcf6ff850259299c58cc5.md) | 38 | `result-track:094bcf6ff850259299c58cc5d14892d8e2db15d4ab22d750fe7c0c7b971d2398` |
| 5 | `theorem` | [IsPrimePow.not_unit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-not-unit--fdd223c9f8287b661e628ae4.md) | 45 | `result-track:fdd223c9f8287b661e628ae4059b337b13666aac648ae9b2384ec925c9277ab6` |
| 6 | `theorem` | [IsUnit.not_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isunit-not-isprimepow--bcc1329184af67622ff3a124.md) | 50 | `result-track:bcc1329184af67622ff3a124b91e243ce245af6d23ebd256af1b5426a393f538` |
| 7 | `theorem` | [not_isPrimePow_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/not-isprimepow-one--de9032fbb6f2b00776b9c184.md) | 53 | `result-track:de9032fbb6f2b00776b9c18407a3512f82d749e9d9ee21f209c37859e9115da5` |
| 8 | `theorem` | [Prime.isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/prime-isprimepow--ea4840412e3e186153fb21b4.md) | 57 | `result-track:ea4840412e3e186153fb21b41a5c68cfa24409df5aaf0b3d77dcf28f12689d54` |
| 9 | `theorem` | [IsPrimePow.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-pow--6b47bccd47cbacf2cf26abd4.md) | 61 | `result-track:6b47bccd47cbacf2cf26abd44b979d1816ee6d7d85a1b21544ae6935c343e39f` |
| 10 | `theorem` | [IsPrimePow.ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-ne-zero--e587f9b6436329f78bc5001f.md) | 66 | `result-track:e587f9b6436329f78bc5001fae4909a50e1c5996ab249675345e45c38b30ce93` |
| 11 | `theorem` | [IsPrimePow.ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-ne-one--e1a1cc90191badf5e5f092fe.md) | 70 | `result-track:e1a1cc90191badf5e5f092fe98af1b23b260f3524807c2db25dbd59d41ff769a` |
| 12 | `theorem` | [isPrimePow_nat_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-nat-iff--60deea30c23a392ac79e2c36.md) | 76 | `result-track:60deea30c23a392ac79e2c36024e62a0f6356375eb43b10d66249b862b077c48` |
| 13 | `theorem` | [Nat.Prime.isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/nat-prime-isprimepow--b3077b4340ae7304cbeb5237.md) | 80 | `result-track:b3077b4340ae7304cbeb52378f71380dd880874c16a22d7742882f8292450e90` |
| 14 | `theorem` | [isPrimePow_nat_iff_bounded](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-nat-iff-bounded--82f0398bfe4ce2a61f83d61c.md) | 84 | `result-track:82f0398bfe4ce2a61f83d61c68cafd3603d725c82b73060573da610b5ba820cb` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/instance--fefbbae9a9f41ed6dbaeebe1.md) | 94 | `declaration-track:fefbbae9a9f41ed6dbaeebe10233b8ee4b5469b47200218c6b481e492a437e7d` |
| 16 | `theorem` | [IsPrimePow.dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-dvd--ba0606f56ade630eaf88959f.md) | 97 | `result-track:ba0606f56ade630eaf88959fd80a2354a893bb1ab18cb3b6d568978cb0310c4a` |
| 17 | `theorem` | [Nat.disjoint_divisors_filter_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/nat-disjoint-divisors-filter-isprimepow--ca642bafd2d6391878f7682a.md) | 107 | `result-track:ca642bafd2d6391878f7682a59bbd4ed8857bb4c31f5463a390b24265bfeb44b` |
| 18 | `theorem` | [IsPrimePow.two_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-two-le--a57a35710ebf33af044ec6cb.md) | 114 | `result-track:a57a35710ebf33af044ec6cb55866211e833280ef559418b1f4f7b5a665d41e6` |
| 19 | `theorem` | [IsPrimePow.pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-pos--ba731af97a91639cac6ed422.md) | 120 | `result-track:ba731af97a91639cac6ed42253ffb0885500c70382aa3cc317a8cb63a3eea28f` |
| 20 | `theorem` | [IsPrimePow.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantd05a55e86c5ea35326006139b299fe3e123bb7240417fc89d36f5263ddc4e37b.lean/declarations/isprimepow-one-lt--58c1941be97ab3fda09f4a14.md) | 124 | `result-track:58c1941be97ab3fda09f4a142256799469f79fa62246d8455d791749292ce4c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
