# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveEvalTerm.Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caeb88378d14a3c57039860e0aae6789aeef9c63",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caeb88378d14a3c57039860e0aae6789aeef9c63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.DeclNameGen` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolveAtomicNameForConstNamespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/declarations/resolveatomicnameforconstnamespace--e8214a08e0b3b2216cffa9b7.md) | 35 | `declaration-track:e8214a08e0b3b2216cffa9b754fb975e686bec7e46861c7658d29ba83df90255` |
| 2 | `def` | [resolveDottedAtomicNameForConstNamespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/declarations/resolvedottedatomicnameforconstnamespace--f4022931e00cba04136227c9.md) | 54 | `declaration-track:f4022931e00cba04136227c985ff9031e5bf1cff80fdbfe0b5b403ba20b54a7a` |
| 3 | `def` | [withSimpleEvalStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/declarations/withsimpleevalstx--f01b6dfc8f8cf1a0ccfbb523.md) | 71 | `declaration-track:f01b6dfc8f8cf1a0ccfbb523ee3c0ad4e6a7f399217e6579e7a5f3ed122bece6` |
| 4 | `def` | [checkExpectedNumberOfArguments](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/declarations/checkexpectednumberofarguments--cb7e37a47ec3982b73d5d01b.md) | 87 | `declaration-track:cb7e37a47ec3982b73d5d01b59d3543ef5f31eda6185ae05790ba8b6116f0b4b` |
| 5 | `def` | [ensureEvalTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/declarations/ensureevalterm--867e505a4f150e81dc1c00d4.md) | 101 | `declaration-track:867e505a4f150e81dc1c00d4ef2fbbd8da4baff14953635a308b79c6df3e71b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
