# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Numeric.Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "479115768e138c3aac55bd72eca70cd42fe86f7e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `479115768e138c3aac55bd72eca70cd42fe86f7e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ArbitraryPrecisionInteger](../../../../mathematics/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean/declarations/arbitraryprecisioninteger--15f7fd37a3b3cb2187126255.md) | 10 | `declaration-track:15f7fd37a3b3cb2187126255c59af9bf32444aacc59087498920581f4f3f2f1b` |
| 2 | `structure` | [Tolerance](../../../../mathematics/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean/declarations/tolerance--b940dfde95640e83b7df98df.md) | 13 | `declaration-track:b940dfde95640e83b7df98df0ea1d094840bda555992517af66c572ada62d705` |
| 3 | `def` | [Tolerance.NearlyEqual](../../../../mathematics/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean/declarations/tolerance-nearlyequal--6943bd0eb3e734000f7ffb66.md) | 20 | `declaration-track:6943bd0eb3e734000f7ffb66fd60fd42d9c0634ba79ca811d2b5f51fee47eb3e` |
| 4 | `def` | [CheckedNaturalConversion](../../../../mathematics/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean/declarations/checkednaturalconversion--4014c820a5de3c9a7f337de1.md) | 25 | `declaration-track:4014c820a5de3c9a7f337de1832bad43fe14a94cca36c6268f795f3395d6f5b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
