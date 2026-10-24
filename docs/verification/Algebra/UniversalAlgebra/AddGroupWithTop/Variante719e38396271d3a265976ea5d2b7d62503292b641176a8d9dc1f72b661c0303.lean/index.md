# Verification target: GRWTSK.Algebra.UniversalAlgebra.AddGroupWithTop.Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af93db03b9b9c1ee91bbc280fbc5ee63b70fc904",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af93db03b9b9c1ee91bbc280fbc5ee63b70fc904`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearOrderedAddCommMonoidWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/linearorderedaddcommmonoidwithtop--cc56057f9a90e2d5e65763ac.md) | 30 | `declaration-track:cc56057f9a90e2d5e65763ac9ca06aadac55d48abbe02220ca6622073fef81c9` |
| 2 | `class` | [LinearOrderedAddCommGroupWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/linearorderedaddcommgroupwithtop--f221665cd44779ff21d39ef0.md) | 37 | `declaration-track:f221665cd44779ff21d39ef00fcff3c4915caa146c8216f7392d128f319dbccd` |
| 3 | `instance` | [WithTop.linearOrderedAddCommMonoidWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/withtop-linearorderedaddcommmonoidwithtop--754af57939a79c9bb34c0339.md) | 42 | `declaration-track:754af57939a79c9bb34c03396fd3223fcd4d7323b73a331f49558b58b265fddb` |
| 4 | `theorem` | [top_add](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/top-add--9c321c251e14f4b6b4a63793.md) | 51 | `result-track:9c321c251e14f4b6b4a63793def810d39878f4b54712a00d736b97ac39209987` |
| 5 | `theorem` | [add_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/add-top--0693c9aa8b9c3fe54f3aa226.md) | 55 | `result-track:0693c9aa8b9c3fe54f3aa226f69d25ccfb79047946b4b1914d1604e7ea59db03` |
| 6 | `instance` | [instNeg](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/instneg--82e3c89d020b5bea5bf73ef1.md) | 66 | `declaration-track:82e3c89d020b5bea5bf73ef16f716f143c7db6da9d992b27002d769d348a543e` |
| 7 | `def` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/sub--1646ed72ca26996658f7e625.md) | 73 | `declaration-track:1646ed72ca26996658f7e625a59065a3e7558fe5eb532e44d27266628239ee19` |
| 8 | `instance` | [instSub](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/instsub--f542008978d2ab5586abde55.md) | 79 | `declaration-track:f542008978d2ab5586abde55fdceaeee5b091a0e1da99a5370c13e1a4bec1b45` |
| 9 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/coe-neg--3c60797cbdd2ef822804293a.md) | 85 | `result-track:3c60797cbdd2ef822804293a600ec05c0849917976a64ffead0da2e26f36206b` |
| 10 | `theorem` | [neg_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/neg-top--db0d628930acfd781fa578f8.md) | 89 | `result-track:db0d628930acfd781fa578f8ba3e50226f0e1e1809b0fef8f9c1ec40741ba6a3` |
| 11 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/coe-sub--adcd38aa98eee749e936fd04.md) | 92 | `result-track:adcd38aa98eee749e936fd04e5d98106cee74d29f1cffd3daa261dc04ec7225d` |
| 12 | `theorem` | [top_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/top-sub--9b59078e01bf615fde5014d8.md) | 95 | `result-track:9b59078e01bf615fde5014d8a48412b7b0275a255297c8dfb798c410abd863de` |
| 13 | `theorem` | [sub_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/sub-top--14c960e406ca795479e36008.md) | 99 | `result-track:14c960e406ca795479e36008b3a423dbcf864194ee198d381691339e78978866` |
| 14 | `lemma` | [sub_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/sub-eq-top-iff--f2ac5e51a4059b9c68f18ac0.md) | 102 | `result-track:f2ac5e51a4059b9c68f18ac0b63723881df789fd241bd6820cbd3174dacff998` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/instance--4eaccb93a353656f7b92a554.md) | 105 | `declaration-track:4eaccb93a353656f7b92a554cd68021daffbb2702fe10f5a36fb5b15e6aa1e17` |
| 16 | `lemma` | [add_neg_cancel_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/add-neg-cancel-of-ne-top--3d5391abdc0687fffb904300.md) | 127 | `result-track:3d5391abdc0687fffb904300aea69788465ebcf404f5a32beceafdcbe0896ac8` |
| 17 | `lemma` | [add_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/add-eq-top--e63c9defa2f8948e6f8697c2.md) | 133 | `result-track:e63c9defa2f8948e6f8697c2d1107097649334f4321bfe2d01596bc4115fc0e4` |
| 18 | `lemma` | [top_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/top-ne-zero--676a97fb01357ee663ad370e.md) | 149 | `result-track:676a97fb01357ee663ad370e8bead829cb903e97834c1c9ce98d3151a41bf796` |
| 19 | `lemma` | [neg_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/neg-eq-top--681386dc6890fd0308f20d85.md) | 157 | `result-track:681386dc6890fd0308f20d858919e0218aaaf23471022cd3e29f68857e210d43` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/instance--f615bd1002e31bc8f54ddb5a.md) | 165 | `declaration-track:f615bd1002e31bc8f54ddb5a4af5d17b3096d737e7c1fb295e62a8629f81be95` |
| 21 | `lemma` | [injective_add_left_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/injective-add-left-of-ne-top--fb1a124f3045a854ac476338.md) | 198 | `result-track:fb1a124f3045a854ac476338df3db68c0ae05b79786a486b715ebdd83940a988` |
| 22 | `lemma` | [injective_add_right_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/injective-add-right-of-ne-top--7d72872c2c0adcdd6813e436.md) | 203 | `result-track:7d72872c2c0adcdd6813e43673fa733228fb70912eb991a73803bbc12ccb7a33` |
| 23 | `lemma` | [strictMono_add_left_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/strictmono-add-left-of-ne-top--d3f19255800e4c53474b74fb.md) | 206 | `result-track:d3f19255800e4c53474b74fbd2215302cbbb6c11ef0f5cb440182c230440779a` |
| 24 | `lemma` | [strictMono_add_right_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/strictmono-add-right-of-ne-top--79b6b275f324d6937a55004a.md) | 211 | `result-track:79b6b275f324d6937a55004a80d5ec5b4b9f9f68b5f1df277713d24828832d35` |
| 25 | `lemma` | [sub_pos](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/declarations/sub-pos--c567588a692999008644fd0a.md) | 214 | `result-track:c567588a692999008644fd0a93101fc16fb4c9a8293306ed2d17726e6a8785c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
