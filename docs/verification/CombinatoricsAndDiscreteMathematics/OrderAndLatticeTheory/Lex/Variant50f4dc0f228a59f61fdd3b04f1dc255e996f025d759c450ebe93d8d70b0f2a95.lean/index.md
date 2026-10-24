# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db1e339e18e85353af272942a25aaf6ced2c0166",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db1e339e18e85353af272942a25aaf6ced2c0166`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Lex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex--68b4bf478f3e0662d6227f25.md) | 32 | `declaration-track:68b4bf478f3e0662d6227f25cd1fe3e063bdca97c0ce51c694042dd2d11e6d40` |
| 2 | `theorem` | [_root_.Pi.lex_eq_finsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/root-pi-lex-eq-finsupp-lex--0b34bea012239e0ee064be0f.md) | 37 | `result-track:0b34bea012239e0ee064be0ffe77f47f3ed30670a68194a6a9774a39c48b247a` |
| 3 | `theorem` | [lex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-def--4dbab639fff5ae28d31c712f.md) | 42 | `result-track:4dbab639fff5ae28d31c712f80949f7fcefe0f8d4cd95c785dba947b3ead45c2` |
| 4 | `theorem` | [lex_eq_invImage_dfinsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-eq-invimage-dfinsupp-lex--f46460dddf0c32353886f2f2.md) | 47 | `result-track:f46460dddf0c32353886f2f25f9f0bde023c62b7a3addc84e19509b4eedc3480` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/instance--25947e4b0708950cf3435aeb.md) | 52 | `declaration-track:25947e4b0708950cf3435aeb81beba5dc1926450ee4cf4bfe7e85000e488c182` |
| 6 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-lt-of-lt-of-preorder--0dccac4fd56bbefc3702b0cb.md) | 55 | `result-track:0dccac4fd56bbefc3702b0cb87df311d84a164c0bdbc92c98710265ece44a223` |
| 7 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-lt-of-lt--3354c865048717ea34627d9c.md) | 60 | `result-track:3354c865048717ea34627d9c0396f7268b9de9f39fcf6aad93bf4038e9b8e466` |
| 8 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-isstrictorder--ad733b525e9517a0ae2a2cc0.md) | 65 | `declaration-track:ad733b525e9517a0ae2a2cc0dc763a252878d0f7ab396879b4b417a0094860b4` |
| 9 | `instance` | [Lex.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-partialorder--49404c26ff88112bf4a79fce.md) | 76 | `declaration-track:49404c26ff88112bf4a79fceececc21aaf34e656c269dc2f7dbd5cae496043fb` |
| 10 | `instance` | [Lex.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-linearorder--9ea669e7bf250fac130d6ebf.md) | 81 | `declaration-track:9ea669e7bf250fac130d6ebf352127c4e4b5b75dc921c0296dd2d8447716ad49` |
| 11 | `theorem` | [toLex_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/tolex-monotone--0481fc8505335e64a34a960c.md) | 88 | `result-track:0481fc8505335e64a34a960cedef6a7d6d524ed612e29dec6bb949d2c96ab6d0` |
| 12 | `theorem` | [lt_of_forall_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lt-of-forall-lt-of-lt--f68d50b94ed4b14feef0c377.md) | 92 | `result-track:f68d50b94ed4b14feef0c3779ae4e2c05b029ea911dd546a9a2a73f1ac4b74f7` |
| 13 | `instance` | [Lex.covariantClass_lt_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-covariantclass-lt-left--e61cc813c54607c6964b1fdc.md) | 115 | `declaration-track:e61cc813c54607c6964b1fdc5fbd6bfb511678c3d25454ddfbcdc4a02ef24b94` |
| 14 | `instance` | [Lex.covariantClass_le_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-covariantclass-le-left--3aeb3fab2a586a56023626fb.md) | 120 | `declaration-track:3aeb3fab2a586a56023626fbb75f5969076aad5d3bf86455a9b8bd8321b0070a` |
| 15 | `instance` | [Lex.covariantClass_lt_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-covariantclass-lt-right--8fb888217691d0aca267fb88.md) | 131 | `declaration-track:8fb888217691d0aca267fb882e895bcd43de2165c754aa426d80e36ad9a92f8c` |
| 16 | `instance` | [Lex.covariantClass_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-covariantclass-le-right--2bdac09a1fff16bbeecc3613.md) | 137 | `declaration-track:2bdac09a1fff16bbeecc3613fc55877edb882b5560823222440ee34046406574` |
| 17 | `instance` | [Lex.orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-orderbot--fbc3c6a68c4aab5489766f7a.md) | 150 | `declaration-track:fbc3c6a68c4aab5489766f7adbf2b8fa5221b0919d452789c9756fe4f2610529` |
| 18 | `instance` | [Lex.orderedAddCancelCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-orderedaddcancelcommmonoid--96edb951bc11c9514ef7897d.md) | 154 | `declaration-track:96edb951bc11c9514ef7897da750b321f5be5ec83e6dae8ed45dfde5c01da147` |
| 19 | `instance` | [Lex.orderedAddCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-orderedaddcommgroup--d0788086d088762a13c64958.md) | 159 | `declaration-track:d0788086d088762a13c649586f0f40726313ceb3dc812cd1f7e912e7098f53e5` |
| 20 | `instance` | [Lex.linearOrderedCancelAddCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-linearorderedcanceladdcommmonoid--3be17e3d7eb7c5b710d5dd45.md) | 163 | `declaration-track:3be17e3d7eb7c5b710d5dd45fd2baaaef04321f1ef0795c5eebd108cea86503f` |
| 21 | `instance` | [Lex.linearOrderedAddCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant50f4dc0f228a59f61fdd3b04f1dc255e996f025d759c450ebe93d8d70b0f2a95.lean/declarations/lex-linearorderedaddcommgroup--dea7390a4a1d23abcbc4e6ae.md) | 168 | `declaration-track:dea7390a4a1d23abcbc4e6ae43480a2f3269822d7b00190949339fcdfd5ae04b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
