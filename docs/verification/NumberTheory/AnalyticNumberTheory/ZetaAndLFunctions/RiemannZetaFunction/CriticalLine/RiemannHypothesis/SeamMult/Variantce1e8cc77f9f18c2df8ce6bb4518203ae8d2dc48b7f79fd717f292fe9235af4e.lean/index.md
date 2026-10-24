# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SeamMult.Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea878713b90813849d71a90f5ca0b6d026c65295",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea878713b90813849d71a90f5ca0b6d026c65295`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Assembly` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.ZeroSide.Mult` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ctr_sub_frobSq_perturb](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e.lean/declarations/ctr-sub-frobsq-perturb--7eb05b34b4f513ce047a9388.md) | 34 | `result-track:7eb05b34b4f513ce047a9388359aca3f3ccb01b97e5107018ee96e13b29acb65` |
| 2 | `theorem` | [seamA_mult2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e.lean/declarations/seama-mult2--79dc5d182c585e9840669917.md) | 54 | `result-track:79dc5d182c585e98406699177cf9057c58d74be3233ee3421454fc2d4403772b` |
| 3 | `theorem` | [seamA_mult3](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamMult/Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e.lean/declarations/seama-mult3--9846cd19ed175c57764d32eb.md) | 77 | `result-track:9846cd19ed175c57764d32ebdb9886a034618520632755322a2779afdd626128` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
