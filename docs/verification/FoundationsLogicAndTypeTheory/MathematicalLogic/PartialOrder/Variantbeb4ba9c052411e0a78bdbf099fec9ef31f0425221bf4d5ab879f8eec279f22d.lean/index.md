# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PartialOrder.Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "969ea976163bcc6a2e76cc2a31963f91f5746e5d",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `969ea976163bcc6a2e76cc2a31963f91f5746e5d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Trans` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtendDoc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Preorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/preorder--6749142abc3831e30bd601f9.md) | 47 | `declaration-track:6749142abc3831e30bd601f9e90e88428b5f083c58b94eaf896d0638abc9c0d0` |
| 2 | `lemma` | [le_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-refl--3e81824c2d39fecd4ae645ff.md) | 56 | `result-track:3e81824c2d39fecd4ae645ff87193692099be3cbd70bc5ef9238b8646f03c6a6` |
| 3 | `lemma` | [le_rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-rfl--0605ca5fada08adcfd33dd43.md) | 59 | `result-track:0605ca5fada08adcfd33dd43a995c0beda185c97a5e557a5b5e8c9b3b936be09` |
| 4 | `lemma` | [le_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-trans--599f88aefd22bdf03937529d.md) | 62 | `result-track:599f88aefd22bdf03937529d8b788c33adda68f70ef74914f7821c45912261b1` |
| 5 | `lemma` | [lt_iff_le_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-iff-le-not-le--d055f0ebf968ca891277efd4.md) | 64 | `result-track:d055f0ebf968ca891277efd4925abb8ff2bf082a39c4abe4720d315ecf6a991a` |
| 6 | `lemma` | [lt_of_le_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-of-le-not-le--547f3ea3b1e7b8ad70dd25c2.md) | 66 | `result-track:547f3ea3b1e7b8ad70dd25c26a8429fadab31825283a27c8139f4918085ffda0` |
| 7 | `lemma` | [le_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-of-eq--325370ba391f83d797af21ac.md) | 68 | `result-track:325370ba391f83d797af21aceacb072989379d362b922db786c295121236eba6` |
| 8 | `lemma` | [le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-of-lt--3a349344b1a651e1e33d5d70.md) | 69 | `result-track:3a349344b1a651e1e33d5d70f77ed8c8c935be86a0ec6bd8e90229c21e216306` |
| 9 | `lemma` | [not_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/not-le-of-lt--4587789f1ac59ac0d0983a2e.md) | 70 | `result-track:4587789f1ac59ac0d0983a2ed2f60866025ba5cddd7f40e93542bb42b477b124` |
| 10 | `lemma` | [not_le_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/not-le-of-gt--88b046f0c06b5bac466fec53.md) | 71 | `result-track:88b046f0c06b5bac466fec53b1a4422875abfaf62f27c941fd4a2036867d2663` |
| 11 | `lemma` | [not_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/not-lt-of-le--30af88798f224f5d625dce56.md) | 72 | `result-track:30af88798f224f5d625dce56e663a96b9a24c52bcc6734f03474a92fac2b88e8` |
| 12 | `lemma` | [not_lt_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/not-lt-of-ge--6ce5ccd155f53f12640d1a25.md) | 73 | `result-track:6ce5ccd155f53f12640d1a2579d04cd498246a82b0acec2ea334f202058c4b3a` |
| 13 | `lemma` | [ge_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/ge-trans--32d5bf032d32533a55594359.md) | 78 | `result-track:32d5bf032d32533a55594359cf0c1f041f2927f2520ef778389ac2a3be40514f` |
| 14 | `lemma` | [lt_irrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-irrefl--dbee0dedfbe2dcbcb705c768.md) | 80 | `result-track:dbee0dedfbe2dcbcb705c7686e9b3dfc4426bf337991806265ab145d4e9fcb6e` |
| 15 | `lemma` | [gt_irrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/gt-irrefl--0237a2fae1d598e166ea22dc.md) | 81 | `result-track:0237a2fae1d598e166ea22dcbcb295b853194218864987adcd37e12129a6110e` |
| 16 | `lemma` | [lt_of_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-of-lt-of-le--8a0246bc9ed5d17f5afaacab.md) | 83 | `result-track:8a0246bc9ed5d17f5afaacab7a6d542f20f010331333f065c1fcef92a48a20e3` |
| 17 | `lemma` | [lt_of_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-of-le-of-lt--25bc16fb24dac2e9b71b8c73.md) | 86 | `result-track:25bc16fb24dac2e9b71b8c739a166dd8c4c2e13b72e81107ee50c9f84708b79d` |
| 18 | `lemma` | [gt_of_gt_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/gt-of-gt-of-ge--9d3ace6e66fe56377977253b.md) | 89 | `result-track:9d3ace6e66fe56377977253bb063cb200c0ad7d2fd198895fbe4498762f8f769` |
| 19 | `lemma` | [gt_of_ge_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/gt-of-ge-of-gt--970d7985dc439562e2101ece.md) | 90 | `result-track:970d7985dc439562e2101ece44a59e95004aac0804a479d0316dfc3482209b2e` |
| 20 | `lemma` | [lt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-trans--c0f0474307e3c350ca428d4d.md) | 92 | `result-track:c0f0474307e3c350ca428d4dccc7a88546b8bb4ba04595574bf2d99bfcb56ac8` |
| 21 | `lemma` | [gt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/gt-trans--d71a959ab56802c36aa0ad5c.md) | 93 | `result-track:d71a959ab56802c36aa0ad5c3da32cea37340c4b4f4dcf926284cda9af83bb3f` |
| 22 | `lemma` | [ne_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/ne-of-lt--57c73b8bad80ebdea1328a2c.md) | 95 | `result-track:57c73b8bad80ebdea1328a2cc1f97f148cabf42800ab3fcb8dff9c1913accd85` |
| 23 | `lemma` | [ne_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/ne-of-gt--619e842037c69680e62e890f.md) | 96 | `result-track:619e842037c69680e62e890fc3eb1fd17edbd916c2662c19f3ceb384c0889b9f` |
| 24 | `lemma` | [lt_asymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-asymm--0197f730cb52c0b9f443c3b7.md) | 97 | `result-track:0197f730cb52c0b9f443c3b777b60e9c84de27ba850df359f83799c187bad163` |
| 25 | `lemma` | [le_of_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-of-lt-or-eq--190b4daa3254d7705d85ff3f.md) | 102 | `result-track:190b4daa3254d7705d85ff3f5fa0c221d869719f019f372d16fe785c86a7c4ac` |
| 26 | `lemma` | [le_of_eq_or_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-of-eq-or-lt--c49db7ffa88f49fe08a61259.md) | 103 | `result-track:c49db7ffa88f49fe08a61259eab92bad848db85e2db810f5e72fb5fc2d4e0670` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/instance--d221c6d699ae89dbc9d0dacf.md) | 105 | `declaration-track:d221c6d699ae89dbc9d0dacf1f99d177bdad82bde3f0465ed74e561d684a14d9` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/instance--7f355aaaae5cbf9788f281e1.md) | 106 | `declaration-track:7f355aaaae5cbf9788f281e1930ebc394de2fa4e93dded63aae6dbe1d57c6632` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/instance--b5a4f3796ef2165adfb79d4f.md) | 107 | `declaration-track:b5a4f3796ef2165adfb79d4f502d8c556a0f69f97473d406503ec47533322439` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/instance--1a5a601409dd9f353901dbb5.md) | 108 | `declaration-track:1a5a601409dd9f353901dbb5ec48ed85423be505c79315453476182672322e49` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/instance--6701d2e10bf9cbf4533c1475.md) | 109 | `declaration-track:6701d2e10bf9cbf4533c14753a85a9f9d5d488441e370b495587a0eb6f7acdc1` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/instance--171fba2d7fa2468613cdf760.md) | 110 | `declaration-track:171fba2d7fa2468613cdf760ae405ae2b7725e569998de2be700e9e5f6e58f05` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/instance--ba121c62218ec68f2d723ff9.md) | 111 | `declaration-track:ba121c62218ec68f2d723ff9fa4e141f0d5a93af9529334023281605ca6e19a2` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/instance--5336b444661e2fc0a082315c.md) | 112 | `declaration-track:5336b444661e2fc0a082315c680bda29c02ea1897325c1fe5ee6cd89a7122a6a` |
| 35 | `def` | [decidableLTOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/decidableltofdecidablele--81d161c0585c1b0df370c287.md) | 115 | `declaration-track:81d161c0585c1b0df370c28706687c86129de58b545230c07790fcd9d2e9d0ce` |
| 36 | `def` | [WCovBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/wcovby--5b5100aa8d2abb633b804034.md) | 125 | `declaration-track:5b5100aa8d2abb633b80403437258234ee713270a1ac57663dc494833743d8ec` |
| 37 | `def` | [CovBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/covby--50b40f379b5773ab2c3180f1.md) | 132 | `declaration-track:50b40f379b5773ab2c3180f141fb171f3c63b02227948b4022e8088ae944c5a9` |
| 38 | `class` | [PartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/partialorder--03b6df147455b68675041949.md) | 147 | `declaration-track:03b6df147455b68675041949923fce0acba7b5e9ba7e303c7d1d7c6fe146756d` |
| 39 | `lemma` | [le_antisymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-antisymm--65e5eebf853fd7ddf88a2533.md) | 152 | `result-track:65e5eebf853fd7ddf88a253358fc77a53aeaf5aa915185496bb5dbf4983a48c1` |
| 40 | `lemma` | [le_antisymm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-antisymm-iff--a32bb4543ac7842322958193.md) | 156 | `result-track:a32bb4543ac78423229581937295c1bb683f13d9c00377da4114f3ec7abc6f42` |
| 41 | `lemma` | [lt_of_le_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-of-le-of-ne--8e20afb56d9e5c2d9ba0a455.md) | 159 | `result-track:8e20afb56d9e5c2d9ba0a455f8593692b37473da19fa419f15a7fcbbe50aa59d` |
| 42 | `def` | [decidableEqOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/decidableeqofdecidablele--e8c4bdd46ff7a06750f23e22.md) | 163 | `declaration-track:e8c4bdd46ff7a06750f23e22889c66bb7b6435b3b02347798f9467a9bc76ec8f` |
| 43 | `lemma` | [lt_or_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-or-eq-of-le--7fc84244b4df5997f5624444.md) | 173 | `result-track:7fc84244b4df5997f5624444b50e8b7905512580fbd12e225ec8c1e5e03008cd` |
| 44 | `lemma` | [eq_or_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/eq-or-lt-of-le--1c52e1107a5e5862dba282e7.md) | 176 | `result-track:1c52e1107a5e5862dba282e7243dfac4cff4f619cb0ea4bda773490ae68b09fa` |
| 45 | `lemma` | [le_iff_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-iff-lt-or-eq--e95f3ef80a28e5fbfaf07b21.md) | 179 | `result-track:e95f3ef80a28e5fbfaf07b21dc7523468f17db7750326a77e000aa81d35747e1` |
| 46 | `lemma` | [lt_or_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/lt-or-eq-of-le--e6cabdf4d3298ac33be26836.md) | 184 | `result-track:e6cabdf4d3298ac33be2683663d98738dc5240f266786d4ecb2bfdf7e951a22b` |
| 47 | `lemma` | [le_iff_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variantbeb4ba9c052411e0a78bdbf099fec9ef31f0425221bf4d5ab879f8eec279f22d.lean/declarations/le-iff-lt-or-eq--aa6baafa323b01b6d9f3bde4.md) | 185 | `result-track:aa6baafa323b01b6d9f3bde4dcfe749e9b3fd07e5d68b9221ee8f1a8b068c07b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
