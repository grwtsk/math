# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bf0289828f2933b5fb1e0bf2b05b4ae8a58a48d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bf0289828f2933b5fb1e0bf2b05b4ae8a58a48d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean.json)

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
| 1 | `structure` | [Matcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/matcher--79d74732f6fbcb4d0df98a8c.md) | 42 | `declaration-track:79d74732f6fbcb4d0df98a8c3e77b2e752b1f4cf18a48c2a775bb6a3411dfa55` |
| 2 | `def` | [Matcher.ofSubstring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/matcher-ofsubstring--01d8e121b1d5289260a8c05e.md) | 47 | `declaration-track:01d8e121b1d5289260a8c05e04c7f8a7fca52df4cc025791d462b713c346d852` |
| 3 | `def` | [Matcher.ofString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/matcher-ofstring--76933bc34da92f9c37a00edf.md) | 52 | `declaration-track:76933bc34da92f9c37a00edf04c5e9b9b2d9133a5c2d31858532b0ebca6c419e` |
| 4 | `abbrev` | [Matcher.patternSize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/matcher-patternsize--12b48bbde7ad687a65769f7f.md) | 56 | `declaration-track:12b48bbde7ad687a65769f7f56f8f7cbf4d204e9703aa557e46a06315a091158` |
| 5 | `def` | [Matcher.findAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/matcher-findall--6e464a2e2f0cbd934a97e204.md) | 59 | `declaration-track:6e464a2e2f0cbd934a97e20498250a77c537795092c265d4c15ecd57be5716f4` |
| 6 | `def` | [Matcher.find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/matcher-find--471e63f5f85c4f64b5a6060f.md) | 73 | `declaration-track:471e63f5f85c4f64b5a6060fcd979c641104a8a246a618fb577cead7a88650b2` |
| 7 | `def` | [findAllSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/findallsubstr--a625759bf4c01240cb66c302.md) | 88 | `declaration-track:a625759bf4c01240cb66c302e756f0fa1530e957ecbe1e779d6912a72ee8cb34` |
| 8 | `def` | [findSubstr?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/findsubstr--b797ab8d58af474c88e7e204.md) | 95 | `declaration-track:b797ab8d58af474c88e7e204f569683c291e215c8db194842cf4ffebbe1ba0f3` |
| 9 | `def` | [containsSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/containssubstr--bfe192ccee607b9aaec3933a.md) | 101 | `declaration-track:bfe192ccee607b9aaec3933a59862f5dda8aaf7e431c4310a7694a51b0c6ac5a` |
| 10 | `abbrev` | [findAllSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/findallsubstr--db3c303300a39d88c2060d3d.md) | 109 | `declaration-track:db3c303300a39d88c2060d3d3f60800ca86f980b76a40ca922aa9cb1ec9534c1` |
| 11 | `abbrev` | [findSubstr?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/findsubstr--1dbd0c9d2d904b2cb02165b6.md) | 113 | `declaration-track:1dbd0c9d2d904b2cb02165b67cdc7e1b6d6dc7a238063b417c5f77e07664d177` |
| 12 | `abbrev` | [containsSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6.lean/declarations/containssubstr--391ced911da8bd0d211f80fc.md) | 117 | `declaration-track:391ced911da8bd0d211f80fc91256c3c2bcfd8bbfc449f7f5f3c858a746620cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
