# Verification target: GRWTSK.Algebra.ULift.Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4382656328a27afbee8b1306e9d7d907d9691d3a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/index.md) · [Full source](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4382656328a27afbee8b1306e9d7d907d9691d3a`.

Source path: `GRWTSK/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/instnnratcast--b04b22eb9537b94f49c19262.md) | 35 | `declaration-track:b04b22eb9537b94f49c1926258d827450f2edb5ced111a013b104e06c118a1bc` |
| 2 | `instance` | [instRatCast](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/instratcast--c5a8b7e70055e9630672e73f.md) | 36 | `declaration-track:c5a8b7e70055e9630672e73fcc54c358e1cbbe96c8f6038e7e4a5f35bb6cb9b9` |
| 3 | `lemma` | [up_nnratCast](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/up-nnratcast--7d8ada4a14ebdc88c428c99a.md) | 38 | `result-track:7d8ada4a14ebdc88c428c99a06c9f484312c25ff7b260ddf4d94f3c0489c988e` |
| 4 | `lemma` | [down_nnratCast](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/down-nnratcast--d2a58d0486ce300715d1eabb.md) | 39 | `result-track:d2a58d0486ce300715d1eabb422af99ade8a9737eeec528eec594202fed299d3` |
| 5 | `lemma` | [up_ratCast](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/up-ratcast--1d393254046acc67c1464794.md) | 40 | `result-track:1d393254046acc67c14647943a88e90d9cb2c0761a7114618f4ee62585b8023b` |
| 6 | `lemma` | [down_ratCast](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/down-ratcast--2c9e25662f9992f5b0a56920.md) | 41 | `result-track:2c9e25662f9992f5b0a569201e7019bfdd0d7c5009cf5106f87a5f102e724d52` |
| 7 | `instance` | [divisionSemiring](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/divisionsemiring--864a06277a20c88dab6778d3.md) | 43 | `declaration-track:864a06277a20c88dab6778d39f7f0c2239266a9b515988f4a383e41e4a7dc4fd` |
| 8 | `instance` | [semifield](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/semifield--0902c182b3be35cd9e62ea34.md) | 48 | `declaration-track:0902c182b3be35cd9e62ea341e54a0cdd30767b588bd020eb97a2be781f716b3` |
| 9 | `instance` | [divisionRing](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/divisionring--9268d8ac92df83b590c17c8e.md) | 51 | `declaration-track:9268d8ac92df83b590c17c8e2863f3e955fb2614d76d0bb5245ff6a1e51bd567` |
| 10 | `instance` | [field](../../../../mathematics/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/declarations/field--1a6f17437c3a08880afb1645.md) | 61 | `declaration-track:1a6f17437c3a08880afb1645de5f0380f14e8b70ba6f7a2ada9ec238d0631570` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
