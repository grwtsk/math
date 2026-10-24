# Verification target: GRWTSK.Algebra.LinearAlgebra.Grassmannian.Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e85d39b0f73a443ca3cd0465429847825193472b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e85d39b0f73a443ca3cd0465429847825193472b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.SignedGraph` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareChart24](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/squarechart24--2def08c1d55aee57e73ded4c.md) | 17 | `declaration-track:2def08c1d55aee57e73ded4c25a88d1f3d18281ecc921afe14239da0cb9ea9c8` |
| 2 | `theorem` | [signedGraph_two_eq_chart](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/signedgraph-two-eq-chart--75e2f0c7c77a8f142f9f58a4.md) | 21 | `result-track:75e2f0c7c77a8f142f9f58a43abe31a9c0944ddab849975540b58cc248e249a6` |
| 3 | `theorem` | [squareChart24_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/squarechart24-coordinates--d1acd8d201ac7e0b4a01c763.md) | 28 | `result-track:d1acd8d201ac7e0b4a01c7639f391e89f547d58977e38a18791d650622372bc3` |
| 4 | `def` | [pairColumns24](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/paircolumns24--daa293c4f0efe1e3ab8126b3.md) | 35 | `declaration-track:daa293c4f0efe1e3ab8126b386143ccb59740d9df25faa8769cb2b2e3c26e6f5` |
| 5 | `theorem` | [coordinates24_nonnegative_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/coordinates24-nonnegative-of-ordered--a8360c6aaa987a90c5b64976.md) | 41 | `result-track:a8360c6aaa987a90c5b649766b2df926a966bf11a8276a810489fb748faac855` |
| 6 | `def` | [squareNonnegative2](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/squarenonnegative2--1673f7970c1a309f24beb579.md) | 53 | `declaration-track:1673f7970c1a309f24beb5793f714e6dc6248cdc3845288069da41b8c38b3f03` |
| 7 | `theorem` | [finiteNonnegative_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/finitenonnegative-two-iff--f95314f88b83c35826bc5921.md) | 57 | `result-track:f95314f88b83c35826bc5921361b4ad539c00cf6835048ccb6288c67affde943` |
| 8 | `theorem` | [squareChart24_nonnegative_iff](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/squarechart24-nonnegative-iff--8659c3a1158c68affca9be32.md) | 98 | `result-track:8659c3a1158c68affca9be329e2d16129357788eab787158c994d7fd20cc02fd` |
| 9 | `theorem` | [signedGraph_minorCorrespondence_two](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/signedgraph-minorcorrespondence-two--7d1e7a65770ac8f5d2ba6189.md) | 117 | `result-track:7d1e7a65770ac8f5d2ba61891df4ffbf70ef8fc5c3122e8bc64eb06c41011a60` |
| 10 | `theorem` | [normalized_toeplitz_two_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/normalized-toeplitz-two-nonnegative--776dc0807e5d390e40d1d70b.md) | 122 | `result-track:776dc0807e5d390e40d1d70bc5477e3779cc2055d2ebd40813fdd60a22fad81e` |
| 11 | `theorem` | [toeplitz_two_boundary_coordinate](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/declarations/toeplitz-two-boundary-coordinate--0f27040c80b949470d77911a.md) | 132 | `result-track:0f27040c80b949470d77911ae4fec526edbc024203b8348f854f3a2e1ca74374` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
