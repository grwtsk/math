# Verification target: GRWTSK.Topology.GeneralTopology.Exponential.Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "860c4b1769bd72b9b09c4d2c34f8cb10f118cd86",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `860c4b1769bd72b9b09c4d2c34f8cb10f118cd86`.

Source path: `GRWTSK/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selfAdjoint.expUnitary](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean/declarations/selfadjoint-expunitary--cb15b54dffdecf4428e55baf.md) | 33 | `declaration-track:cb15b54dffdecf4428e55bafbf37834872535483bdfb5b8f42cea0563a3a4a08` |
| 2 | `lemma` | [selfAdjoint.expUnitary_zero](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean/declarations/selfadjoint-expunitary-zero--1308a6630cbedaacccbad6bb.md) | 40 | `result-track:1308a6630cbedaacccbad6bbb50dce2c7c495cdf42b93ee2b628f2afc8ec258c` |
| 3 | `lemma` | [selfAdjoint.continuous_expUnitary](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean/declarations/selfadjoint-continuous-expunitary--981e7ac2e361f7c5a57f7577.md) | 45 | `result-track:981e7ac2e361f7c5a57f75772c026a1473c38d782a97851b939b4710c644c241` |
| 4 | `theorem` | [Commute.expUnitary_add](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean/declarations/commute-expunitary-add--fde2910ef2a484d5f6d95300.md) | 49 | `result-track:fde2910ef2a484d5f6d95300aeb6b5d8b55d0be14480fe414befac2419fddc7b` |
| 5 | `theorem` | [Commute.expUnitary](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean/declarations/commute-expunitary--de6cda7db7607b6fe7cff496.md) | 57 | `result-track:de6cda7db7607b6fe7cff496531c8e83b22632d9e952254ba4b0fd68e11a6082` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
