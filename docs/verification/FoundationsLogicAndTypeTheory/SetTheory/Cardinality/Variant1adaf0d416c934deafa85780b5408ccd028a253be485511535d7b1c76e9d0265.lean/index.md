# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76744495c19c1b2866f67609d4d125d6e21357b9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76744495c19c1b2866f67609d4d125d6e21357b9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Cardinality` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Cardinal.mk_complex](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265.lean/declarations/cardinal-mk-complex--21b190902dcc84a46fdac7cc.md) | 21 | `result-track:21b190902dcc84a46fdac7ccbc2985008e426288feafc2a1e8fa4488574d4269` |
| 2 | `theorem` | [Cardinal.mk_univ_complex](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265.lean/declarations/cardinal-mk-univ-complex--d1b8a9646d84e6866edc1d53.md) | 27 | `result-track:d1b8a9646d84e6866edc1d53f340ccc44797d761fabb122581bffaa0b74b14ba` |
| 3 | `theorem` | [not_countable_complex](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265.lean/declarations/not-countable-complex--eba6628cbf6da0ce2296c086.md) | 33 | `result-track:eba6628cbf6da0ce2296c0865454169fd825c1f3dd0e7b6a3b2169648692ad66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
