# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToNat.Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a15c9c1f7fcc291c94e248959bdc3a66f6431e42",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a15c9c1f7fcc291c94e248959bdc3a66f6431e42`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [roundToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/roundtoint--879e5c75f6e398e7ae02aac0.md) | 30 | `declaration-track:879e5c75f6e398e7ae02aac0f6016448d3fe248bdd2f6515c0235e830810b700` |
| 2 | `def` | [toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/toint--6f7650cdd69d698b9bb9e983.md) | 39 | `declaration-track:6f7650cdd69d698b9bb9e9834b15efaae1b43235be6310d4e2fe83511dce8336` |
| 3 | `def` | [toUInt8](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/touint8--64e99ac25edefdb66b48822f.md) | 50 | `declaration-track:64e99ac25edefdb66b48822facb83215a5051742838bcc14adf3371f1bec19af` |
| 4 | `def` | [toUInt16](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/touint16--3c89a3fc0d59653edd544739.md) | 57 | `declaration-track:3c89a3fc0d59653edd544739ba5fe8d7f7e02c893a115010eb88961a96c18d11` |
| 5 | `def` | [toUInt32](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/touint32--e10dc356133e2c95c78fe5d7.md) | 64 | `declaration-track:e10dc356133e2c95c78fe5d7ecda9b3131bf1693dc7b6b8b6f1aacbc346b4a27` |
| 6 | `def` | [toUInt64](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/touint64--ec0da5934af634892acb87bb.md) | 71 | `declaration-track:ec0da5934af634892acb87bb71aa647f09aeec6247506564b0c715a64de6e494` |
| 7 | `def` | [toUSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/tousize--6b93c31819cfc66e429c563a.md) | 78 | `declaration-track:6b93c31819cfc66e429c563a76580c5f4906e69e820f5cff8d98c1272cea5f36` |
| 8 | `def` | [toInt8](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/toint8--a744e1036e7a089a323f02f2.md) | 85 | `declaration-track:a744e1036e7a089a323f02f22ebc4806def2768d0b18a1f1e871d04b9d4c4764` |
| 9 | `def` | [toInt16](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/toint16--e5a1b5b27d1cb86e130028e7.md) | 92 | `declaration-track:e5a1b5b27d1cb86e130028e702129f3aaae72e1a09435715a4f1b15739148294` |
| 10 | `def` | [toInt32](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/toint32--267da822361d9a5adc4e15b8.md) | 99 | `declaration-track:267da822361d9a5adc4e15b88ff86de433c30943296b62334423c1223ab218f0` |
| 11 | `def` | [toInt64](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/toint64--025d0b6845719e3125b21dda.md) | 106 | `declaration-track:025d0b6845719e3125b21dda932d0ab70355a1c34edf8beceac2ae950e20696b` |
| 12 | `def` | [toISize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToNat/Variant8ab96d2eef66dbe4a1be2b4e6673ddac33ea5e4fe0474c9e802f2000e583c784.lean/declarations/toisize--e4ea43e0f6bf0b487ab71d90.md) | 113 | `declaration-track:e4ea43e0f6bf0b487ab71d90f821bb491a55a04f85a254b99469883e01ebb165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
