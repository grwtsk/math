# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Contractible.Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7db14106f435336a4bba22bec4e6fa9428af1acf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Contractible/Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7db14106f435336a4bba22bec4e6fa9428af1acf`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Contractible/Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Contractible/Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Star` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StarConvex.contractibleSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c.lean/declarations/starconvex-contractiblespace--4ca7f73f08070075f64ef83f.md) | 29 | `result-track:4ca7f73f08070075f64ef83f7d160555cd1a5f463f1bb0cdc68022cb30de0f81` |
| 2 | `theorem` | [Convex.contractibleSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c.lean/declarations/convex-contractiblespace--b26e052af91c5c572078f8c0.md) | 47 | `result-track:b26e052af91c5c572078f8c0386600b2052ac9a30212542c556d2d187a9326c7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant208bb029bbbe79e33917eab63c129295d1cc81401e19657a5e406b2b555c6a3c.lean/declarations/instance--3048b0881c97eb47823c991d.md) | 52 | `declaration-track:3048b0881c97eb47823c991db1151babe0c61d1283dfae1834fc0fada4be23eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
