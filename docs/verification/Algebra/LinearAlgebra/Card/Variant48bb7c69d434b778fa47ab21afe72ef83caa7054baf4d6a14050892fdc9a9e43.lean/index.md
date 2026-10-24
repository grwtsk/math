# Verification target: GRWTSK.Algebra.LinearAlgebra.Card.Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0f277ea37f6f228264078e5b6831e6d2ec7b6af",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Card/Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0f277ea37f6f228264078e5b6831e6d2ec7b6af`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Card/Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Card/Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Rank` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finiteness` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43.lean/declarations/card-linearindependent--a5541bfe6d1397a23d40d7c1.md) | 44 | `result-track:a5541bfe6d1397a23d40d7c146d6b6269dc110f6d5ed9f5a23337ce62da672f2` |
| 2 | `def` | [equiv_GL_linearindependent](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43.lean/declarations/equiv-gl-linearindependent--4354aa534431f9c66e771fae.md) | 76 | `declaration-track:4354aa534431f9c66e771fae0c893145512722c00218d263aacea4aa0b49b766` |
| 3 | `theorem` | [card_GL_field](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variant48bb7c69d434b778fa47ab21afe72ef83caa7054baf4d6a14050892fdc9a9e43.lean/declarations/card-gl-field--a18f20da3281ae8684b48476.md) | 92 | `result-track:a18f20da3281ae8684b484768683bf593a03a6c42befcb728fb4dc75b34d8d18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
