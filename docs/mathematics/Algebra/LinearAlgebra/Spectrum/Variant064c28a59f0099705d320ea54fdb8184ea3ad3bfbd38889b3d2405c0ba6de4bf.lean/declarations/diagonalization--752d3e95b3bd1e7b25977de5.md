# diagonalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74927170626d8bc66ae5d10184a9812c4af3d2b83a9d46cea9f5dd9c6f273322",
  "kind": "def",
  "lexical_name": "diagonalization",
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
  "slug": "diagonalization--752d3e95b3bd1e7b25977de5",
  "source": {
    "blob": "37ec781f5e915ce7189ea04fe4c36f852ea91c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 178,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:752d3e95b3bd1e7b25977de58b4ac4f9594585ce64f2aa9fe7af72568be1f188",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74927170626d8bc66ae5d10184a9812c4af3d2b83a9d46cea9f5dd9c6f273322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def diagonalization (hT : T.IsSymmetric) : E ≃ₗᵢ[𝕜] PiLp 2 fun μ :
    Eigenvalues T => eigenspace T μ :=
  hT.direct_sum_isInternal.isometryL2OfOrthogonalFamily hT.orthogonalFamily_eigenspaces'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant064c28a59f0099705d320ea54fdb8184ea3ad3bfbd38889b3d2405c0ba6de4bf.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ec781f5e915ce7189ea04fe4c36f852ea91c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
