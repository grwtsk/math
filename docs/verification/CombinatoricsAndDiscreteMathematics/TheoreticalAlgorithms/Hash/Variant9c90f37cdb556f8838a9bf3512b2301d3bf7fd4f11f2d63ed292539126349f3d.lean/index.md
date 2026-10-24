# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95ca9d744eab7317697c46938962d0e03c3f2ae4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95ca9d744eab7317697c46938962d0e03c3f2ae4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean.json)

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
| 1 | `abbrev` | [Hash256](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/declarations/hash256--d64167deabe937d8281e9cfc.md) | 25 | `declaration-track:d64167deabe937d8281e9cfc12fbeed784f8b8f4793565730a92804380a9b0f1` |
| 2 | `abbrev` | [Hash256.algorithm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/declarations/hash256-algorithm--b910ef43bfaad2efef893d35.md) | 26 | `declaration-track:b910ef43bfaad2efef893d35a10543471051bbc96d056393eff61ecd1059d03f` |
| 3 | `abbrev` | [Hash256.hex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/declarations/hash256-hex--56ff6b5c18d7bd2e10d83f92.md) | 28 | `declaration-track:56ff6b5c18d7bd2e10d83f92fe14fdf04af6843ca9fef9e7d2f0e59d771cf3e3` |
| 4 | `abbrev` | [lowerHexAlphabet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/declarations/lowerhexalphabet--e64b664fcd1543c972d1b4dc.md) | 30 | `declaration-track:e64b664fcd1543c972d1b4dc685f1cfee3c95ac08a9463eb1acda093c100cf76` |
| 5 | `abbrev` | [IsLowerHexDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/declarations/islowerhexdigit--8cc82141f9e3e838a7af4099.md) | 31 | `declaration-track:8cc82141f9e3e838a7af40991c1f6708adeb05dca772e3e014075b90332f8973` |
| 6 | `abbrev` | [Hash256.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/declarations/hash256-valid--1976588946657275febf5b33.md) | 32 | `declaration-track:1976588946657275febf5b333cc0ddd904b9b5f0c4ae90cd7d0337d65d53a2f8` |
| 7 | `abbrev` | [verifyHash256](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/declarations/verifyhash256--037c5620bf55ba7bf8144c4c.md) | 34 | `declaration-track:037c5620bf55ba7bf8144c4c5ba94dd71a7da9ac18fd247857d5597ce75feaa6` |
| 8 | `theorem` | [verifyHash256_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant9c90f37cdb556f8838a9bf3512b2301d3bf7fd4f11f2d63ed292539126349f3d.lean/declarations/verifyhash256-sound--00c69f8904a821b63345d95b.md) | 37 | `result-track:00c69f8904a821b63345d95b42b37cb5ba7346fff9031f94094756c02b57fa3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
