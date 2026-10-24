# Verification target: GRWTSK.Algebra.GroupTheory.Divisible.Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeb8a36484a42a696c8ed928bc6e433fb55af286",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeb8a36484a42a696c8ed928bc6e433fb55af286`.

Source path: `GRWTSK/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Subgroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Eq` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DivisibleBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/divisibleby--ccff033a4d10aa38828dc9e0.md) | 83 | `declaration-track:ccff033a4d10aa38828dc9e0cc53a2bb87e3a78bb0c939cda79cfe2e23e291f8` |
| 2 | `class` | [RootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/rootableby--1acb9880147f898914dce63d.md) | 101 | `declaration-track:1acb9880147f898914dce63d984c649504ef337b92c1abef3f24d8b0d579bcb4` |
| 3 | `theorem` | [pow_left_surj_of_rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/pow-left-surj-of-rootableby--ddd30309390c33378951ba1f.md) | 108 | `result-track:ddd30309390c33378951ba1f4534bba03dc18a16db148f9c099872d082a0ea8e` |
| 4 | `def` | [rootableByOfPowLeftSurj](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/rootablebyofpowleftsurj--01c333aa25fcf101c14133df.md) | 119 | `declaration-track:01c333aa25fcf101c14133dfe18e5544415073e0cea9250e1b75983212695daf` |
| 5 | `instance` | [Pi.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/pi-rootableby--f7b04ef6f5a6eac1a2a5a910.md) | 134 | `declaration-track:f7b04ef6f5a6eac1a2a5a9104a9a2e05c72292284cc5333757e46ef5c0a49159` |
| 6 | `instance` | [Prod.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/prod-rootableby--bfa49b42ace24148e5c38e49.md) | 147 | `declaration-track:bfa49b42ace24148e5c38e4988caf741e00eada758ee021acc2dc62cfe2e4a91` |
| 7 | `instance` | [ULift.instRootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/ulift-instrootableby--45947bd3c8c78bb06f3a41f3.md) | 157 | `declaration-track:45947bd3c8c78bb06f3a41f30ecfb25b60847034a7c7eaa1aec8be832832053c` |
| 8 | `theorem` | [smul_top_eq_top_of_divisibleBy_int](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/smul-top-eq-top-of-divisibleby-int--de97a8befde41e2c18b2f24c.md) | 170 | `result-track:de97a8befde41e2c18b2f24c8695ceb57aada721eb60f1646a6bb669ad54d7a2` |
| 9 | `def` | [divisibleByIntOfSMulTopEqTop](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/divisiblebyintofsmultopeqtop--69bcefa2a5195e59a5dbb8c2.md) | 176 | `declaration-track:69bcefa2a5195e59a5dbb8c24a5adb46ea7d8f5806615a453a16cd7e17f0507f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/instance--ec5956a9c1c3c4138f31cbe2.md) | 188 | `declaration-track:ec5956a9c1c3c4138f31cbe240eb30ff4f260f9a8b2d6bc52c7e279eca78e6e9` |
| 11 | `def` | [rootableByIntOfRootableByNat](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/rootablebyintofrootablebynat--b52335b886d1395b499d8b1e.md) | 203 | `declaration-track:b52335b886d1395b499d8b1e5e6c8208ca25420b050bbc61605f329325d08d92` |
| 12 | `def` | [rootableByNatOfRootableByInt](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/rootablebynatofrootablebyint--78ec658eb6da314db53dd02e.md) | 218 | `declaration-track:78ec658eb6da314db53dd02e5c73c1ebd94c25df9eaddc248ee11f7c5c174f2d` |
| 13 | `def` | [Function.Surjective.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/function-surjective-rootableby--3780efff7f2f807d467f7f2f.md) | 239 | `declaration-track:3780efff7f2f807d467f7f2f59c808145b8d3e7ceb3b220f930cfadb40d6602d` |
| 14 | `theorem` | [RootableBy.surjective_pow](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/rootableby-surjective-pow--cd5353dc055ba4630b2f30b7.md) | 247 | `result-track:cd5353dc055ba4630b2f30b7218ba1250e79fd9a9b5443bf37dc17c9ea9f30a6` |
| 15 | `instance` | [QuotientGroup.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/declarations/quotientgroup-rootableby--0e0993f0e6b1ebfed3b1a91a.md) | 259 | `declaration-track:0e0993f0e6b1ebfed3b1a91a3800dc0f3a510eb23a5ca76f42c5250f5f3c4132` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
