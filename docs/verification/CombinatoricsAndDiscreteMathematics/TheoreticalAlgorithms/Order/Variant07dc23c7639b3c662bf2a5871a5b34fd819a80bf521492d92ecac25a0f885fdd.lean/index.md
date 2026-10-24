# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Order.Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b981c9b122b4ef9081596e5ec2cd9e64325d8beb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b981c9b122b4ef9081596e5ec2cd9e64325d8beb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [monotoneOn_iff_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/monotoneon-iff-monotone--bd0495b8d9da1ba063d066b3.md) | 24 | `result-track:bd0495b8d9da1ba063d066b3d16c29a3e588679cf6bec8ebad3ebd3703c65527` |
| 2 | `theorem` | [antitoneOn_iff_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/antitoneon-iff-antitone--33388cbf16e850a46a70f5ef.md) | 28 | `result-track:33388cbf16e850a46a70f5ef7b0622348ef56ec2f6edb99214212e7bb1cafe6f` |
| 3 | `theorem` | [strictMonoOn_iff_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/strictmonoon-iff-strictmono--94aae81326e624d8360d9328.md) | 32 | `result-track:94aae81326e624d8360d9328c6ac1d3b4cc06229ff6cbe252d8222d18e16eb5d` |
| 4 | `theorem` | [strictAntiOn_iff_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/strictantion-iff-strictanti--77cc38e1fc7eda8309c09162.md) | 36 | `result-track:77cc38e1fc7eda8309c09162c2477a7882d6c52c106466c186f9516320e3490e` |
| 5 | `theorem` | [not_monotoneOn_not_antitoneOn_iff_exists_le_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/not-monotoneon-not-antitoneon-iff-exists-le-le--2cb66b960c418b5ded83ddae.md) | 48 | `result-track:2cb66b960c418b5ded83ddaed82004d93c77fbf47ad033399c5c304bc455f2f9` |
| 6 | `theorem` | [not_monotoneOn_not_antitoneOn_iff_exists_lt_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/not-monotoneon-not-antitoneon-iff-exists-lt-lt--6365266ae6bfbe6de2ec9bbd.md) | 57 | `result-track:6365266ae6bfbe6de2ec9bbd701685dc8db72e8fc488429150513739a7ea8c84` |
| 7 | `theorem` | [Monotone.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/monotone-inter--e098ae8cc518fb9c751a4df8.md) | 73 | `result-track:e098ae8cc518fb9c751a4df80e8aa318902453c22cc2ad1b070a596c3236cd7f` |
| 8 | `theorem` | [MonotoneOn.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/monotoneon-inter--489b4ee1ef3297b552183bb4.md) | 77 | `result-track:489b4ee1ef3297b552183bb4b1c887419b950b807fe8a8fff03f9bdba1735496` |
| 9 | `theorem` | [Antitone.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/antitone-inter--978f3cf84fbbeb2911e0e3fe.md) | 81 | `result-track:978f3cf84fbbeb2911e0e3fe84a69d64b783c76621c72fb2bdee9a26b299c60e` |
| 10 | `theorem` | [AntitoneOn.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/antitoneon-inter--e15b10cc4711c7ccabfd23c3.md) | 85 | `result-track:e15b10cc4711c7ccabfd23c3ff17381907955229a4b0d4f3b0ce681065e043ca` |
| 11 | `theorem` | [Monotone.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/monotone-union--fda8aca321e0a7e807c72bfd.md) | 89 | `result-track:fda8aca321e0a7e807c72bfd62c95d2de3aa2eadd0b726947791a96ef84cca94` |
| 12 | `theorem` | [MonotoneOn.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/monotoneon-union--971ea8f1852d601314feeaa8.md) | 93 | `result-track:971ea8f1852d601314feeaa809b5e9a4dfff3f8c0eb032a54b27000d3c0acd0c` |
| 13 | `theorem` | [Antitone.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/antitone-union--8ed5476f3b45ef1ac444f33a.md) | 97 | `result-track:8ed5476f3b45ef1ac444f33a5a7ab74c5bd40362789fdd5e4aeeda34c5fe6cf9` |
| 14 | `theorem` | [AntitoneOn.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/antitoneon-union--a72189cb77fab8a153ea2e2a.md) | 101 | `result-track:a72189cb77fab8a153ea2e2afd8278e9c142f8ffe1ddccfa1ef3b9422c4e9e7a` |
| 15 | `theorem` | [monotone_setOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/monotone-setof--b856455ce519b6dd17305d3c.md) | 107 | `result-track:b856455ce519b6dd17305d3c14904f31f93923985761f59678799af6edecb5e6` |
| 16 | `theorem` | [antitone_setOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/antitone-setof--8ce8ca31a0fe1f6da71fecf9.md) | 110 | `result-track:8ce8ca31a0fe1f6da71fecf96390007f53597a4ea6e1d316669d8439892fea9c` |
| 17 | `theorem` | [antitone_bforall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/declarations/antitone-bforall--05124a5e0c6a619224407e36.md) | 114 | `result-track:05124a5e0c6a619224407e36698a45fae38eb609321a4d711f13d589407bd7e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
