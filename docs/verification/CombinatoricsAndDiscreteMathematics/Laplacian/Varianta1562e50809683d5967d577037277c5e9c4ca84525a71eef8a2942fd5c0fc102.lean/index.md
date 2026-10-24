# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Laplacian.Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f123d825de310a80140986d8c6d6e21f53dfd6c4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Laplacian/Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f123d825de310a80140986d8c6d6e21f53dfd6c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Laplacian/Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Laplacian/Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Graph` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102.lean/declarations/degree--33678d0cd8ec656399f28de5.md) | 32 | `declaration-track:33678d0cd8ec656399f28de570ca8453e607094de03400a003f054949a1c8bbe` |
| 2 | `def` | [laplacian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102.lean/declarations/laplacian--5b9849249594f650adec93af.md) | 40 | `declaration-track:5b9849249594f650adec93aff0ae275af1b9ee8e6847e3e301b8ccdaedf48770` |
| 3 | `theorem` | [laplacian_constant_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Varianta1562e50809683d5967d577037277c5e9c4ca84525a71eef8a2942fd5c0fc102.lean/declarations/laplacian-constant-zero--5d96fe6f8e9b39801f472f9c.md) | 50 | `result-track:5d96fe6f8e9b39801f472f9c74ebc36e570aed25af83e34eca18b47e3bb8cd65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
