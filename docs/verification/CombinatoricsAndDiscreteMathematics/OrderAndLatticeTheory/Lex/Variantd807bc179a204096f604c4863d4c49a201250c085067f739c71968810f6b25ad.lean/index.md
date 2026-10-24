# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e772e3179746e9dc8c3485e903ad0bfd148982c0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e772e3179746e9dc8c3485e903ad0bfd148982c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Lex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex--afbb6bf7eb208b7b83dcb37a.md) | 38 | `declaration-track:afbb6bf7eb208b7b83dcb37ad120faa48727d1e2d4f7751cb6be2717bf6981fb` |
| 2 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.Pi.lex_eq_finsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-le--da18df1c8bee50adaec64e32.md) | 41 | `result-track:da18df1c8bee50adaec64e326cc5cbe0b32f8440b089c9cc862634e67169914b` |
| 3 | `theorem` | [lex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-def--42c131e837931dd202989196.md) | 45 | `result-track:42c131e837931dd2029891966d550466206f5fc62000c230ef04b7566c45d8e9` |
| 4 | `theorem` | [lex_eq_invImage_dfinsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-eq-invimage-dfinsupp-lex--fa52c850f22559f2c3e6f636.md) | 49 | `result-track:fa52c850f22559f2c3e6f6366925b18330fd087475566ac6d7c2b6f7a73993b2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/instance--0f4a6263ffbd440092f9d87e.md) | 53 | `declaration-track:0f4a6263ffbd440092f9d87e7126fa856193fd52c7a9b033c4f3217058ebff56` |
| 6 | `theorem` | [lex_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-lt-iff--795faf7da0285d628dcf1ad7.md) | 56 | `result-track:795faf7da0285d628dcf1ad7be20a43cdfff3b08a114bb67123f09e3820bef24` |
| 7 | `theorem` | [lex_lt_iff_of_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-lt-iff-of-unique--20eb85b5374186091feecf2a.md) | 60 | `result-track:20eb85b5374186091feecf2a5b29f44f32a4c353839fb8b886b00f17c548d5e9` |
| 8 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-lt-of-lt-of-preorder--a7068e42c015bd1f9db7993c.md) | 66 | `result-track:a7068e42c015bd1f9db7993c1987de6bca0bc628bb73a6b5a4d9eef35bd81a5d` |
| 9 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-lt-of-lt--42597c094489fdd249cd5c92.md) | 70 | `result-track:42597c094489fdd249cd5c9210895df60aaf4c9745a22e40d0dd08b5cc3c85e3` |
| 10 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-isstrictorder--9ede7d17c6d051e1fda48fea.md) | 74 | `declaration-track:9ede7d17c6d051e1fda48fea4ffe6dd0c17a66306eb88321bf8d7ed7982cd3d0` |
| 11 | `instance` | [Lex.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-partialorder--f0cdc71f434221135fb5c413.md) | 83 | `declaration-track:f0cdc71f434221135fb5c4134292aa00a10990b067fa16a39c0a2eefcc93bbe1` |
| 12 | `instance` | [Lex.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-linearorder--a0a480ab044597b624412a53.md) | 90 | `declaration-track:a0a480ab044597b624412a53a68fad3b1f1f43c29aae30290e5b9845bcb5ecef` |
| 13 | `theorem` | [Lex.single_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-single-strictanti--5a25ad94e18eb9746f2d3e7a.md) | 95 | `result-track:5a25ad94e18eb9746f2d3e7ad61525be0dc2748c676063636f4005092cbef6d4` |
| 14 | `theorem` | [Lex.single_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-single-lt-iff--be0891a94b6e099dc2fac757.md) | 105 | `result-track:be0891a94b6e099dc2fac757e6aa8b8c8c16d2cc163fd4b5bbb998f6e67d8dde` |
| 15 | `theorem` | [Lex.single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-single-le-iff--887767a7dee4a41ef1459159.md) | 108 | `result-track:887767a7dee4a41ef14591597ca3c9a69e4b89f0928132b86cb15f22e95b3ac0` |
| 16 | `theorem` | [Lex.single_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-single-antitone--fa0154d87386cb37d86c4547.md) | 111 | `result-track:fa0154d87386cb37d86c4547abf424dd90b73e48ef5feb0f5ea097564a4f74f1` |
| 17 | `theorem` | [toLex_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/tolex-monotone--e4b4343378f7dd27d1747583.md) | 116 | `result-track:e4b4343378f7dd27d1747583d6afcc3d72cc3cc6626e52bb4c5712071c61b45f` |
| 18 | `theorem` | [lt_of_forall_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lt-of-forall-lt-of-lt--48477d7a17335aa70db662a9.md) | 119 | `result-track:48477d7a17335aa70db662a9c0fada777a14f267dfceb04755382413f8561ed4` |
| 19 | `theorem` | [lex_le_iff_of_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-le-iff-of-unique--839e732bb0576f4cbb6dd562.md) | 123 | `result-track:839e732bb0576f4cbb6dd56257afaefa13c0972aca6c2c42c31ad1f457d87ea9` |
| 20 | `instance` | [Lex.addLeftStrictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-addleftstrictmono--534df0d5b77269ae5810aac1.md) | 148 | `declaration-track:534df0d5b77269ae5810aac1eaa83e5d0edd1725d26fae445ee1f045d0be7641` |
| 21 | `instance` | [Lex.addLeftMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-addleftmono--7c23a101256063ffb88ae19b.md) | 151 | `declaration-track:7c23a101256063ffb88ae19bb4c899804b93f9f1c1cd106047a39ba6f982b645` |
| 22 | `instance` | [Lex.addRightStrictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-addrightstrictmono--faf914f31206313700cce741.md) | 160 | `declaration-track:faf914f31206313700cce741403da118f97dc9d23e3ded94ec10294ec637390b` |
| 23 | `instance` | [Lex.addRightMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-addrightmono--418c779393c0fb643b913dc8.md) | 164 | `declaration-track:418c779393c0fb643b913dc80732fe378a1d9add1376cc91377b8b9025559c53` |
| 24 | `instance` | [Lex.orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-orderbot--a16b8bf9c8f4d128ed5a815b.md) | 175 | `declaration-track:a16b8bf9c8f4d128ed5a815bbc3bfdb409190ead828997a9e34dbcb810d21b44` |
| 25 | `instance` | [Lex.isOrderedCancelAddMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantd807bc179a204096f604c4863d4c49a201250c085067f739c71968810f6b25ad.lean/declarations/lex-isorderedcanceladdmonoid--d019b1082bb60a70ec993221.md) | 180 | `declaration-track:d019b1082bb60a70ec993221f6190cb8a66ea5ca9420f37b160b25051906496f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
