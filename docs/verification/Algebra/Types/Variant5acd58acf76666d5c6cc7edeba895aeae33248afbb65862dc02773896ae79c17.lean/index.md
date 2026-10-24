# Verification target: GRWTSK.Algebra.Types.Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4638d5afff95049dcda586f6761eb2f018a0c39",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md) · [Full source](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4638d5afff95049dcda586f6761eb2f018a0c39`.

Source path: `GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Arith.Poly` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingExpr](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/ringexpr--7e66ccdee4c673a43efb37d3.md) | 23 | `declaration-track:7e66ccdee4c673a43efb37d341d8939c71e73865f5f2c3c904d87d69c8abb715` |
| 2 | `abbrev` | [SemiringExpr](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/semiringexpr--9535921d99e2f40bd6d7275b.md) | 28 | `declaration-track:9535921d99e2f40bd6d7275b1dfbbf23e894773d8c20c6fc94d07a72398d5919` |
| 3 | `structure` | [EqCnstr](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/eqcnstr--2ee8a1f7e39cdbefdd2fa84e.md) | 31 | `declaration-track:2ee8a1f7e39cdbefdd2fa84ed47291f323ac8c57988e5fc548254c52aa2e4658` |
| 4 | `inductive` | [EqCnstrProof](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/eqcnstrproof--24f0cfaa6786aa0744e29fc2.md) | 37 | `declaration-track:24f0cfaa6786aa0744e29fc255de28b779bef2a5d46fe1c6a9225780f213dcd8` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/instance--dffa93195ba61061b2044907.md) | 48 | `declaration-track:dffa93195ba61061b20449074b4f3708739486df189bee6e159f5d446f163563` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/instance--121aa2a14afa6e37b4d61faa.md) | 51 | `declaration-track:121aa2a14afa6e37b4d61faa24a3867c3aca90335eb697454de2d393d49a225a` |
| 7 | `def` | [EqCnstr.compare](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/eqcnstr-compare--3ca85635a8d0f6933c0583b2.md) | 54 | `declaration-track:3ca85635a8d0f6933c0583b207482979d9593bf3308f2dd8c3cd3ce9513f7030` |
| 8 | `abbrev` | [Queue](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/queue--2f3b42e9e3c48d52bed6c533.md) | 59 | `declaration-track:2f3b42e9e3c48d52bed6c533302e3aa5eb5f96838587885ba5bdf2b63bee9806` |
| 9 | `inductive` | [PolyDerivation](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/polyderivation--69b3df7a724369c629a87cc7.md) | 87 | `declaration-track:69b3df7a724369c629a87cc71245b344c003e845aedc1b39b6d6765837e639a8` |
| 10 | `def` | [PolyDerivation.p](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/polyderivation-p--71e35c1ad688a957bbfe11b9.md) | 133 | `declaration-track:71e35c1ad688a957bbfe11b937f5117fd4f9a50ef431ae1dd98fd8a62a0d5312` |
| 11 | `structure` | [DiseqCnstr](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/diseqcnstr--3f70deda3e6acec1ef2cc154.md) | 139 | `declaration-track:3f70deda3e6acec1ef2cc1540a15afeece04ffd1f6db8c6dfcc398390075a697` |
| 12 | `structure` | [Semiring](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/semiring--1ecd048eb37da118adda8bb6.md) | 155 | `declaration-track:1ecd048eb37da118adda8bb6acce9bc92e80b7508a8df151572cb0c515a92f35` |
| 13 | `structure` | [Ring](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/ring--29a51d05c460a6ad3e4199e4.md) | 178 | `declaration-track:29a51d05c460a6ad3e4199e486985cdedead09655697a6e63c33326ce3a14fa8` |
| 14 | `structure` | [CommRing](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/commring--9ba18e67504242aeeb5be0da.md) | 209 | `declaration-track:9ba18e67504242aeeb5be0da05eff12364942c1ea58f923f15816a09943c72c9` |
| 15 | `structure` | [CommSemiring](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/commsemiring--53c52927671f5d64c7ed0bf8.md) | 265 | `declaration-track:53c52927671f5d64c7ed0bf8b8b4d8915d369ee5a32bee009fe36f4bcc5481c9` |
| 16 | `structure` | [State](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/state--2cb10cfe7c61a710219d1db2.md) | 276 | `declaration-track:2cb10cfe7c61a710219d1db2cb6c5a0307201fd74fb7f26e001d1dab4141804d` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/builtin-initialize--3633a59a84a35ed8e46d25bf.md) | 326 | `declaration-track:3633a59a84a35ed8e46d25bf28ebbed338cb720f43132be7708e833505e51099` |
| 18 | `def` | [get'](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/get--db573da9141e8dbd1ffaba4f.md) | 328 | `declaration-track:db573da9141e8dbd1ffaba4fc2a487539d52039ddf0cff7a6d7120a9773e9544` |
| 19 | `def` | [modify'](../../../../mathematics/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/declarations/modify--f66c69609ebd470bd31a09b6.md) | 331 | `declaration-track:f66c69609ebd470bd31a09b604fe91c403fc1ff334cbd1b99fdfdc9466733705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
