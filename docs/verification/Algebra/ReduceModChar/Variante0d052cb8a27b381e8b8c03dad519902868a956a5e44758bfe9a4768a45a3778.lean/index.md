# Verification target: GRWTSK.Algebra.ReduceModChar.Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d911ea9c7296b68e0df97da2473dd9d52652a89",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d911ea9c7296b68e0df97da2473dd9d52652a89`.

Source path: `GRWTSK/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.DivMod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.PowMod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ReduceModChar.Ext` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CharP.isInt_of_mod](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/charp-isint-of-mod--a57527c528a49bc72ada5cf3.md) | 56 | `result-track:a57527c528a49bc72ada5cf3d16660d81d7200b7a21e280449b81ff53af595ca` |
| 2 | `lemma` | [CharP.isNat_pow](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/charp-isnat-pow--9bed3b2703faa4feb755e8e5.md) | 60 | `result-track:9bed3b2703faa4feb755e8e5ac5c8c64ec5789664f4448790f0b73c23f58aba9` |
| 3 | `def` | [normBareNumeral](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/normbarenumeral--076b2d1d1e72a90ff4c2ac4b.md) | 69 | `declaration-track:076b2d1d1e72a90ff4c2ac4bbb7d1a6138598227ce50cca04e3502be808c90b2` |
| 4 | `def` | [normPow](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/normpow--eef1ba6541fea42fa2f252cd.md) | 81 | `declaration-track:eef1ba6541fea42fa2f252cd27bd4cf5a48f8396d0a44da550c5aeafcad0b358` |
| 5 | `def` | [normIntNumeral'](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/normintnumeral--a6198e22c27c8962f639f60b.md) | 95 | `declaration-track:a6198e22c27c8962f639f60b7198403bc5d2d5b7c2a0278442419f29efc93b43` |
| 6 | `lemma` | [CharP.intCast_eq_mod](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/charp-intcast-eq-mod--a4df2f1a25c1cc40499e4a36.md) | 101 | `result-track:a4df2f1a25c1cc40499e4a36bdd084d9c1537bc0d66f3b5f55534ff10c30258d` |
| 7 | `def` | [normIntNumeral](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/normintnumeral--c56874f437109278d24ce257.md) | 109 | `declaration-track:c56874f437109278d24ce2578faf2be22b90877fdd08d1c318f33d703b7cb376` |
| 8 | `lemma` | [CharP.neg_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/charp-neg-eq-sub-one-mul--323805f92fcace1712312ab1.md) | 114 | `result-track:323805f92fcace1712312ab1d1ca8b37a956dbc9af46872f15648a5df1cdf545` |
| 9 | `def` | [normNeg](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/normneg--7ef6a6a54c256470a68d19aa.md) | 127 | `declaration-track:7ef6a6a54c256470a68d19aa37e92d80b54f917e038af1d35cfb554091ccd787` |
| 10 | `lemma` | [CharP.neg_mul_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/charp-neg-mul-eq-sub-one-mul--1a07efd80300d0de306c3299.md) | 143 | `result-track:1a07efd80300d0de306c3299fc3604fab8f3a0504a2e5241444a7df821d2e62a` |
| 11 | `def` | [normNegCoeffMul](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/normnegcoeffmul--5156652510280585c956fa6b.md) | 152 | `declaration-track:5156652510280585c956fa6be0bd590ce8bdea296b6498a40eaf9b8a2207f551` |
| 12 | `inductive` | [TypeToCharPResult](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/typetocharpresult--cee59047f4287729b9e50333.md) | 172 | `declaration-track:cee59047f4287729b9e503336e8c226849b5c95c705a91dd5197c07483f2cd81` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/instance--88b37ae98b553970da1cfc29.md) | 176 | `declaration-track:88b37ae98b553970da1cfc29aa5ed03e9988f4618a8fb6523f552e1b00ebc2ba` |
| 14 | `def` | [typeToCharP](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/typetocharp--c0292b5bef0a891487166c1d.md) | 183 | `declaration-track:c0292b5bef0a891487166c1d4fdd8a448c4eb2bc350f3fff95ca206bf70b055c` |
| 15 | `def` | [matchAndNorm](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/matchandnorm--844f71ae375d7b3017afd171.md) | 216 | `declaration-track:844f71ae375d7b3017afd171ed912736acc2a2c6d7cc79a2773de1d1baa8d8fe` |
| 16 | `def` | [derive](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/derive--4482992c803962fa67914cc5.md) | 246 | `declaration-track:4482992c803962fa67914cc5517267d750f1dee97d86d8de4f85adcbbc9a130e` |
| 17 | `def` | [reduceModCharTarget](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/reducemodchartarget--ae15b7777debbc1aec98addb.md) | 275 | `declaration-track:ae15b7777debbc1aec98addb69702571a2e1162e4ad19ce6dde432ef720ac0c8` |
| 18 | `def` | [reduceModCharHyp](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/reducemodcharhyp--fda0437bc644d616e23e8bfd.md) | 288 | `declaration-track:fda0437bc644d616e23e8bfdca52689cacc19c551efa71b76d623bee0c2effe1` |
| 19 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/syntax--5afcdfc5ebf0ca38b99461e3.md) | 315 | `declaration-track:5afcdfc5ebf0ca38b99461e381030ff697abcc15e406c7a949eb2b0516d51028` |
| 20 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/syntax--ec5c761ceec9b7ca77ae22aa.md) | 317 | `declaration-track:ec5c761ceec9b7ca77ae22aa71af126bb064898da0b0897cc80c637b860aa5b1` |
| 21 | `elab_rules` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean/declarations/elab-rules--a5104e5922d5d9b48c60a71e.md) | 319 | `declaration-track:a5104e5922d5d9b48c60a71e24332dc962a4fef5860241d67367dc6d19de5891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
