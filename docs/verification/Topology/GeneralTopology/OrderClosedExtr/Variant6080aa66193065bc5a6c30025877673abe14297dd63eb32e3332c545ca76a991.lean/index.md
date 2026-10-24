# Verification target: GRWTSK.Topology.GeneralTopology.OrderClosedExtr.Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79ecc5e5887296caf768cdc1b9fbd2acd0e6d4fe",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79ecc5e5887296caf768cdc1b9fbd2acd0e6d4fe`.

Source path: `GRWTSK/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.OrderClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocalMax_of_mono_anti](../../../../../mathematics/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean/declarations/islocalmax-of-mono-anti--31e0c82daf7337fab8e94713.md) | 33 | `result-track:31e0c82daf7337fab8e947132e5fe07c53309652b5ed08a610b54ba1bfd5f2e0` |
| 2 | `lemma` | [isLocalMin_of_anti_mono](../../../../../mathematics/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean/declarations/islocalmin-of-anti-mono--ec434dee5ff239c5bb8332ca.md) | 43 | `result-track:ec434dee5ff239c5bb8332caa65719ede41a6c329f41760b36a38ad1c35ed010` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
