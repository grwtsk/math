# blockSchurSolver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a17e25d53acb8f1c226c92cf17b220af27743aa195944b194b4427bc62fe0bbc",
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
  "slug": "blockschursolver--39dd41bd6e12c81964687871",
  "source": {
    "blob": "7e22e88db53aecf58b9e4829b8725c1bb09123be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39dd41bd6e12c81964687871c5d437f7e3cd96efee93628ae39afecd7cade55e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a17e25d53acb8f1c226c92cf17b220af27743aa195944b194b4427bc62fe0bbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blockSchurSolver (D : GeneralizedInverseBlockRealization G) :
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e22e88db53aecf58b9e4829b8725c1bb09123be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
