# Matrix.vecMulLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34a4cd17ac84d52d40ce44c503cf2ea8343df7bf8895d1d0f132796234a7fc03",
  "kind": "def",
  "lexical_name": "Matrix.vecMulLinear",
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
  "slug": "matrix-vecmullinear--70be5683f9348f7a918d88b7",
  "source": {
    "blob": "f34c0630f913e221d1aa2781e637e2f5e4616fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70be5683f9348f7a918d88b7b2d647262734c89e1f64d012c2d400ba92e3f485",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34a4cd17ac84d52d40ce44c503cf2ea8343df7bf8895d1d0f132796234a7fc03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matrix.vecMulLinear [Fintype m] (M : Matrix m n R) : (m → R) →ₗ[R] n → R where
  toFun x := x ᵥ* M
  map_add' _ _ := funext fun _ ↦ add_dotProduct _ _ _
  map_smul' _ _ := funext fun _ ↦ smul_dotProduct _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34c0630f913e221d1aa2781e637e2f5e4616fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
