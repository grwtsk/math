# diagonalStretch_act_axis_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c6c9d22-4274-a9d3-be92-35fb2773343b",
  "kind": "theorem",
  "lexical_name": "diagonalStretch_act_axis_zero",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "diagonalstretch-act-axis-zero--929d745ed5ecf4fafc6dc0a6",
  "source": {
    "blob": "193a77843606a5e193b525736162977b7ac08b1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 206,
    "path": "GRWTSK/Algebra/LinearAlgebra/SurfaceTransport/Variantf216b27fcafe1f1878bedcd6153f100df7df6919b1676f1fa008defc658d7dd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929d745ed5ecf4fafc6dc0a64fadac80ee7c41b1c22a09ae4678729aedc766a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SurfaceTransport/Variantf216b27fcafe1f1878bedcd6153f100df7df6919b1676f1fa008defc658d7dd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c6c9d22-4274-a9d3-be92-35fb2773343b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalStretch_act_axis_zero (r : ℝ) :
    act (diagonalStretch r) (axis 0) = r • axis 0 := by
  apply WithLp.ofLp_injective 2
  ext i
  fin_cases i <;>
    simp [act, diagonalStretch, axis]

/-- Cross products are linear in the second tangent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SurfaceTransport/Variantf216b27fcafe1f1878bedcd6153f100df7df6919b1676f1fa008defc658d7dd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SurfaceTransport/Variantf216b27fcafe1f1878bedcd6153f100df7df6919b1676f1fa008defc658d7dd7.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `193a77843606a5e193b525736162977b7ac08b1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
