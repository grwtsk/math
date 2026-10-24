# Verification target: GRWTSK.Analysis.SpecialFunctions.Basic.Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0908036b4fb4dc123caf39f42cc40b2783d587c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0908036b4fb4dc123caf39f42cc40b2783d587c`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean.json)

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
| 1 | `abbrev` | [UnitInterval](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/unitinterval--8b22f176ca1c9736e68eb6fc.md) | 32 | `declaration-track:8b22f176ca1c9736e68eb6fc57a54509032d3a48906a67792b73ac4c1bb45f25` |
| 2 | `def` | [reverseParameter](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/reverseparameter--97dddb38a856fd0efc7aecb5.md) | 36 | `declaration-track:97dddb38a856fd0efc7aecb526261d5fef87e2a5a1be90096a483d18b4c5d3ca` |
| 3 | `theorem` | [reverseParameter_val](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/reverseparameter-val--1827b3e077fec34fd4b0dfff.md) | 40 | `result-track:1827b3e077fec34fd4b0dfff3fc096240e46ea6dd99bfc7d2ff6e41f5b34eb0f` |
| 4 | `theorem` | [reverseParameter_reverse](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/reverseparameter-reverse--8bfa6521addc687c41d3479f.md) | 45 | `result-track:8bfa6521addc687c41d3479f2be29c4df99e965cae7addbd825c60bcae8a16a9` |
| 5 | `def` | [bernstein](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/bernstein--41b751fcf3c9226c80883080.md) | 55 | `declaration-track:41b751fcf3c9226c808830806d8f38944d23976d32c4fa20a3a6945c9b9769ed` |
| 6 | `theorem` | [bernstein_coe](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/bernstein-coe--b721cd9cb57ae7987f8fb97d.md) | 59 | `result-track:b721cd9cb57ae7987f8fb97d24c42f8fc49c581bb8250aa3fac6b4ab6e36029d` |
| 7 | `theorem` | [bernstein_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/bernstein-nonneg--c73962c82f6cdfad4c0e96f2.md) | 66 | `result-track:c73962c82f6cdfad4c0e96f253ecad9272e16d552c2e45eb447a95bc3574a84c` |
| 8 | `theorem` | [sum_bernstein](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/sum-bernstein--d5a383e8e2bbb8161fb613be.md) | 73 | `result-track:d5a383e8e2bbb8161fb613beaa9b9f6e468006ba78f22c659f28e51d31ae9853` |
| 9 | `theorem` | [bernstein_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/bernstein-zero--191ee1c0d7e2f69f50c42c62.md) | 78 | `result-track:191ee1c0d7e2f69f50c42c62c0797134f26cfdbf3b180ff489dbd312cf09f0f5` |
| 10 | `theorem` | [bernstein_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/bernstein-one--cb3cb8bf67a75971ee22fddb.md) | 87 | `result-track:cb3cb8bf67a75971ee22fddbd6fbb003892973a2b651e746e1f2bd1fb95ffd6f` |
| 11 | `theorem` | [bernstein_rev](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416.lean/declarations/bernstein-rev--85204db807b2bc1ac6709837.md) | 99 | `result-track:85204db807b2bc1ac6709837054b5b50657faa1c1446a19bc9a327362abe6012` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
