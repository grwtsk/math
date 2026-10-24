# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.EvenUpperRowAudit.Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40b447e22ee98627f7a4c75c8b7816715fa655b6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40b447e22ee98627f7a4c75c8b7816715fa655b6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [doubled_interval_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/declarations/doubled-interval-iff--3df97d96f008ef7357705767.md) | 10 | `result-track:3df97d96f008ef735770576714b456282338ff0054dc153c5f7e1a9ad64443ad` |
| 2 | `theorem` | [even_interval_reindex](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/declarations/even-interval-reindex--ec88caa198a5527826da42f2.md) | 14 | `result-track:ec88caa198a5527826da42f27e8750685562b7c81950e66131b902f670423591` |
| 3 | `theorem` | [even_interval_signed](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/declarations/even-interval-signed--49c20bfead912c649e660d52.md) | 41 | `result-track:49c20bfead912c649e660d521bcbcac561a8c98761f20196553aa6cdc50515ce` |
| 4 | `theorem` | [moebius_interval_two_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/declarations/moebius-interval-two-split--d5d7b641e82cd2f69345283f.md) | 53 | `result-track:d5d7b641e82cd2f69345283fee34c7dd3eaddae46e6b99641d42523301164b8f` |
| 5 | `theorem` | [source_even_upper_row](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/declarations/source-even-upper-row--e8e60dce6c98db6eea82312e.md) | 65 | `result-track:e8e60dce6c98db6eea82312e68097224c0f623e5f9ff20cab5e0335b6d7c7fe3` |
| 6 | `theorem` | [source_full_upper_row](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/declarations/source-full-upper-row--19e8adc8dcce5dcbdb7c7427.md) | 78 | `result-track:19e8adc8dcce5dcbdb7c74278b06d3e5273748f36b5373707d642407466979c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
