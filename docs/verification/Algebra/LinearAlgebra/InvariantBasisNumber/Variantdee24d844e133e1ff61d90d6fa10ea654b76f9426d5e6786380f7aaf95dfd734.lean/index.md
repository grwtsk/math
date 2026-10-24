# Verification target: GRWTSK.Algebra.LinearAlgebra.InvariantBasisNumber.Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3464e0e1accf49b2e8f2c12c14dc7b0ee8a88a7f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3464e0e1accf49b2e8f2c12c14dc7b0ee8a88a7f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Orzech` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OrzechProperty` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Pi` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrongRankCondition](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/strongrankcondition--258ddaf1aaea58120ca3e3b8.md) | 117 | `declaration-track:258ddaf1aaea58120ca3e3b867f8e8a3e917728f3c5c23e9af5bdfdf4460893c` |
| 2 | `theorem` | [le_of_fin_injective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/le-of-fin-injective--279f75fa2257c7c8f66ab122.md) | 121 | `result-track:279f75fa2257c7c8f66ab12285de744fa00b0c4f5210d3bb42f814012c9a02ac` |
| 3 | `theorem` | [strongRankCondition_iff_succ](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/strongrankcondition-iff-succ--1b2046360a19efb89db6edcd.md) | 127 | `result-track:1b2046360a19efb89db6edcd47e0b20089df6cb6417bea6c35a4d108a90feffd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/instance--90f55ff7802797b52e42f416.md) | 139 | `declaration-track:90f55ff7802797b52e42f416ebd35ab5121796c5a8ff1c82492031dfa696ed5d` |
| 5 | `theorem` | [card_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/card-le-of-injective--2e473cc76ea9b92563287a1a.md) | 154 | `result-track:2e473cc76ea9b92563287a1af7f30b048072ebd85c2ea2830c3475afae0a1af1` |
| 6 | `theorem` | [card_le_of_injective'](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/card-le-of-injective--1a63187693f08893b56f874f.md) | 162 | `result-track:1a63187693f08893b56f874faba9fcc1dde1070fdcbf54798fb44f528fc2e8e3` |
| 7 | `class` | [RankCondition](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/rankcondition--929ba6c686b1c6190b67ec4c.md) | 172 | `declaration-track:929ba6c686b1c6190b67ec4ce973decacfe9ca28578f9af61620cefa5ce12158` |
| 8 | `theorem` | [le_of_fin_surjective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/le-of-fin-surjective--961b31dbdccd0aea190ad718.md) | 176 | `result-track:961b31dbdccd0aea190ad718a9eaeeb5b0e37b0e3c277c9f0181d4c8fa119841` |
| 9 | `theorem` | [card_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/card-le-of-surjective--0165ad328e7daa7dfb157764.md) | 180 | `result-track:0165ad328e7daa7dfb157764db02a09a1d3dff9d9540fce2339229bc08908f2a` |
| 10 | `theorem` | [card_le_of_surjective'](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/card-le-of-surjective--b240c2c8789a6798f049eba0.md) | 188 | `result-track:b240c2c8789a6798f049eba0f4cfc0c2f13c042d4104e3db347c8a1a67e4ef64` |
| 11 | `theorem` | [Module.Finite.exists_nat_not_surjective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/module-finite-exists-nat-not-surjective--b8117351ac12ce2347c8b01a.md) | 196 | `result-track:b8117351ac12ce2347c8b01a8bb58ad41397107461f5984d4ffd08f9a70fe64a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/instance--5d555aa0002dc9398fe9b108.md) | 205 | `declaration-track:5d555aa0002dc9398fe9b108c542499db1cf631079f46ba628613f45d632df10` |
| 13 | `class` | [InvariantBasisNumber](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/invariantbasisnumber--a3ecc1f6b51f90ffed486729.md) | 213 | `declaration-track:a3ecc1f6b51f90ffed4867292868ab6818d2c879a45e34002321cf02fbbdf813` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/instance--01eaedd3c2cf5ee0e1daf6dd.md) | 217 | `declaration-track:01eaedd3c2cf5ee0e1daf6ddbfa4b2ce47df1117698bf27bed634cee5160873e` |
| 15 | `theorem` | [eq_of_fin_equiv](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/eq-of-fin-equiv--8705342025bdfe93e7453d74.md) | 228 | `result-track:8705342025bdfe93e7453d74b3c932956d4df87c4d802347ac842c4c81c99ccf` |
| 16 | `theorem` | [card_eq_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/card-eq-of-linearequiv--a43b693d1b2c010a48e3aecf.md) | 231 | `result-track:a43b693d1b2c010a48e3aecfa34f579df8d47e2ba8ba5892afcf5cb346b2cb95` |
| 17 | `theorem` | [nontrivial_of_invariantBasisNumber](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/nontrivial-of-invariantbasisnumber--d69f1f96b6eed8212638a82e.md) | 237 | `result-track:d69f1f96b6eed8212638a82e4478fab3ad0b9821ad500681c113fcb9a73c0348` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/instance--1b189816038862f3ac017185.md) | 259 | `declaration-track:1b189816038862f3ac017185ebad2ac668964ba49c9eab0465d4bee8a89f68dc` |
| 19 | `def` | [induced_map](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/induced-map--1a53cd32759b3feeee068df2.md) | 284 | `declaration-track:1a53cd32759b3feeee068df20874392d92333ae1552e7b4d9f880b962301d167` |
| 20 | `def` | [inducedEquiv](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/inducedequiv--3c2e6dd82c3a7f0f2f6e8aa7.md) | 295 | `declaration-track:3c2e6dd82c3a7f0f2f6e8aa7b12faa9b8b0f45d8c59d3109040063d0f1efb37a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/declarations/instance--d6597ad4221d75fcf3641b82.md) | 319 | `declaration-track:d6597ad4221d75fcf3641b828701057fcd6acec60af7229f088c68072eaec5b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
