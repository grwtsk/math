# blockSchurSolver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27410cf69aadb7ff461660337ad70dae87b9c209c78fb896240dc2c82b301e8d",
  "kind": "def",
  "lexical_name": "blockSchurSolver",
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
  "slug": "blockschursolver--c5cba375eaa12ade3d7b7f99",
  "source": {
    "blob": "208db32a55a69282e270a73be99eb2a3b737ec3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5cba375eaa12ade3d7b7f99e73c71bc75e8820b797a119d8ecf1a3a66457721",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27410cf69aadb7ff461660337ad70dae87b9c209c78fb896240dc2c82b301e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blockSchurSolver (D : MatrixBlockRealization G) :
    BlockSchurSolver G where
  solve := D.solve
  normal := by
    intro p u
    rw [form_sub_right]
    rw [D.cross_block, D.provenance_block]
    rw [D.provenance_mulVec_solve]
    ring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `208db32a55a69282e270a73be99eb2a3b737ec3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
