# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Operator.Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c93e68989aefad6b3c3443a1551f123a09f118c1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c93e68989aefad6b3c3443a1551f123a09f118c1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hilbert.LinearOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/declarations/hilbert-linearoperator--2f68d40b7ecd851ef393d4eb.md) | 31 | `declaration-track:2f68d40b7ecd851ef393d4eba8fdca1ed743a2e3adbeab969a933380324b6f88` |
| 2 | `def` | [Hilbert.identityOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/declarations/hilbert-identityoperator--3cf8f74528d87a8ee6276b5e.md) | 41 | `declaration-track:3cf8f74528d87a8ee6276b5edb083069ced21b462576f1f4261608c7c1e9be04` |
| 3 | `theorem` | [Hilbert.linearOperator_is_linear](../../../../../mathematics/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/declarations/hilbert-linearoperator-is-linear--38f5aa8e5b8e42fc6b326cfb.md) | 55 | `result-track:38f5aa8e5b8e42fc6b326cfb751834d5a58e8a74b7edd77b467c4f08ae7711e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
