# Verification target: GRWTSK.Algebra.GroupTheory.Averaging.Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f942b1b483a0f88288dcb13c0e42be2a57cebd2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f942b1b483a0f88288dcb13c0e42be2a57cebd2`.

Source path: `GRWTSK/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Heat.Transport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeatAveragingDescriptor](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean/declarations/heataveragingdescriptor--fb64a9548f7bbc10a5ee5b8e.md) | 25 | `declaration-track:fb64a9548f7bbc10a5ee5b8e3c1c18f2a140081219dea70e18829583a19d54d4` |
| 2 | `structure` | [CertifiedHeatAveragingOperator](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean/declarations/certifiedheataveragingoperator--c7afb5e0785f2b18aa421423.md) | 33 | `declaration-track:c7afb5e0785f2b18aa421423b3cb86c45d83377bf4a63a05c3499f3b788b2c3f` |
| 3 | `theorem` | [heatAveraging_not_reversible_without_certificate](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean/declarations/heataveraging-not-reversible-without-certificate--a4f2fad608f74152b3ed6437.md) | 38 | `result-track:a4f2fad608f74152b3ed643772ef685b662bc37f4f63abf50d8b98cf7105d808` |
| 4 | `theorem` | [heatAveraging_reversibility_requires_inverse_certificate](../../../../../mathematics/Algebra/GroupTheory/Averaging/Variantbcd30e14855f7beb9464cd6e3fbe355cbe3f78ca317724ce91b55fa095f76bec.lean/declarations/heataveraging-reversibility-requires-inverse-certificate--fa42530984bc2964149f6b3c.md) | 45 | `result-track:fa42530984bc2964149f6b3c0ab4f2d8fa16154c1043e3a04041205db4c490d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
