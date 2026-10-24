# Verification target: GRWTSK.Algebra.LinearAlgebra.Bool.Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8d16714c163b0db47d6c5d9082aac8445c9ca1f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8d16714c163b0db47d6c5d9082aac8445c9ca1f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Codec.Lift` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bool](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean/declarations/bool--df6b91ac30c9574036cf9278.md) | 24 | `declaration-track:df6b91ac30c9574036cf927857cd2bfc5f27fcafa271cc6f19d284126486ff66` |
| 2 | `def` | [boolNot](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean/declarations/boolnot--929f5c2e786c0a911c9845df.md) | 33 | `declaration-track:929f5c2e786c0a911c9845df7ae71df607f3fad3f5f48fac8a1374bd61016e1a` |
| 3 | `theorem` | [boolNot_encode](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean/declarations/boolnot-encode--6e3440c22b64703276b38fcd.md) | 37 | `result-track:6e3440c22b64703276b38fcda5ba7500ac991fc3c702a9da2635d41ff05d4708` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
