# tangentArea_eq_norm_mul_sin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e14a2e78-ce5f-4f29-c607-e0ef72c78457",
  "kind": "theorem",
  "lexical_name": "tangentArea_eq_norm_mul_sin",
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
  "slug": "tangentarea-eq-norm-mul-sin--38a16ae8c21a8173298337c6",
  "source": {
    "blob": "193a77843606a5e193b525736162977b7ac08b1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/SurfaceTransport/Variantf216b27fcafe1f1878bedcd6153f100df7df6919b1676f1fa008defc658d7dd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38a16ae8c21a8173298337c66021caf3c83e35119382e5e7392a2dc966ac8997",
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

Occurrence: `result:e14a2e78-ce5f-4f29-c607-e0ef72c78457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentArea_eq_norm_mul_sin (a b : Space) :
    tangentArea a b = ‖a‖ * ‖b‖ * Real.sin (InnerProductGeometry.angle a b) :=
  InnerProductGeometry.norm_ofLp_crossProduct a b

/-- An orthonormal tangent pair spans a parallelogram of area one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SurfaceTransport/Variantf216b27fcafe1f1878bedcd6153f100df7df6919b1676f1fa008defc658d7dd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SurfaceTransport/Variantf216b27fcafe1f1878bedcd6153f100df7df6919b1676f1fa008defc658d7dd7.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `193a77843606a5e193b525736162977b7ac08b1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
