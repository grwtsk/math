# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de043c70b75657c1e572dfcc87eabda6f375e6de",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de043c70b75657c1e572dfcc87eabda6f375e6de`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Rank` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [commutator_pi_pi_of_finite](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14.lean/declarations/commutator-pi-pi-of-finite--543c51b83f97ede755dfb2c1.md) | 20 | `result-track:543c51b83f97ede755dfb2c19d2dcbe65d00fcd17f6cfafe19e6dbf0fb5ffa6b` |
| 2 | `instance` | [finiteIndex_center](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14.lean/declarations/finiteindex-center--e2641aa06fc186ee3c325200.md) | 39 | `declaration-track:e2641aa06fc186ee3c325200d6c2d6149d71bc79405bb517d70088da3c3ca127` |
| 3 | `lemma` | [index_center_le_pow](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant4345d4fa08657bd960973780a944d7953e43495737fa76a88819650fef315c14.lean/declarations/index-center-le-pow--4d04559aa76f185e81efdc06.md) | 43 | `result-track:4d04559aa76f185e81efdc060ef064626637e2cb6cd97d6ce2029fff50d8580e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
