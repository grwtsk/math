# Verification target: GRWTSK.Geometry.Tensoriality.Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c1a66c91c2739590f453cf74833d44017923c59",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/index.md) · [Full source](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c1a66c91c2739590f453cf74833d44017923c59`.

Source path: `GRWTSK/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Notation` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.LocalFrame` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TensorialAt](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/tensorialat--e25384ae5ece65de850e02a2.md) | 78 | `declaration-track:e25384ae5ece65de850e02a2c373c80c92bd4c1e5cdab74cc888183a2737abe8` |
| 2 | `theorem` | [«local»](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/local--b478c1101f854690237ee55e.md) | 92 | `result-track:b478c1101f854690237ee55e40ecc186405ce6c9d33a893ae78d68301767ceb5` |
| 3 | `theorem` | [zero](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/zero--31e05c26372a7598e96c9c7a.md) | 115 | `result-track:31e05c26372a7598e96c9c7a11285563756d3ad0ab28d9da4b156471ca473e93` |
| 4 | `theorem` | [sum](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/sum--292eba7a23b207e01f305ff2.md) | 123 | `result-track:292eba7a23b207e01f305ff2f296714cbbd96bc46ffd17332af4b15100bfa635` |
| 5 | `lemma` | [pointwise](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/pointwise--c6901595cfb37217260d7a59.md) | 141 | `result-track:c6901595cfb37217260d7a596329c780aa26095a496c581bf541bd294e49f703` |
| 6 | `lemma` | [pointwise₂](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/pointwise--4a590b298c270627ce5b2723.md) | 177 | `result-track:4a590b298c270627ce5b27239a474923a7dc1de2c067e5b23d074ff90fbbf5ed` |
| 7 | `def` | [mkHom](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/mkhom--56d2176f159473ae48e1ff8a.md) | 194 | `declaration-track:56d2176f159473ae48e1ff8aa65e9ecb90ec8322253a6ab15ef35b1af9136107` |
| 8 | `theorem` | [mkHom_apply](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/mkhom-apply--8e739e24deb0e2386818619b.md) | 218 | `result-track:8e739e24deb0e2386818619b185709dc8ab8a43ee34f310e794c4186c0319c75` |
| 9 | `theorem` | [mkHom_apply_eq_extend](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/mkhom-apply-eq-extend--da01683e788edd7dc0c55a5c.md) | 223 | `result-track:da01683e788edd7dc0c55a5c3c8f56b6050b0215446a3f4d2aba42c34221a2de` |
| 10 | `def` | [mkHom₂](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/mkhom--4b1b1b0b95b7b0c136af0dd1.md) | 230 | `declaration-track:4b1b1b0b95b7b0c136af0dd167d90d035fbd1e0cb471bf684febbef516778e3c` |
| 11 | `theorem` | [mkHom₂_apply](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/mkhom-apply--bd42c257b9a5ae5fde648631.md) | 284 | `result-track:bd42c257b9a5ae5fde648631b400067e9a52c58ed425cbabda0950522192a1da` |
| 12 | `theorem` | [mkHom₂_apply_eq_extend](../../../../mathematics/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/declarations/mkhom-apply-eq-extend--2cc0c639996edaf0deb429eb.md) | 293 | `result-track:2cc0c639996edaf0deb429eb39b306675e81e5e864808471c09a68b57150cd00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
