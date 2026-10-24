# mapMatrix_hasFixedWidth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64ed274e-ff2d-9f05-1299-91a4bdde29d9",
  "kind": "theorem",
  "lexical_name": "mapMatrix_hasFixedWidth",
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
  "slug": "mapmatrix-hasfixedwidth--86c7170d3ac68a95f71ed9ea",
  "source": {
    "blob": "3ac65c4e57c1aa3c145051c4234bf81e25e1f4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86c7170d3ac68a95f71ed9eac7b44da5686e50588e31a4ea4021bee597956574",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64ed274e-ff2d-9f05-1299-91a4bdde29d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapMatrix_hasFixedWidth
    (f : BinaryMatrix → BinaryMatrix)
    (hf : ∀ M : BinaryMatrix, (f M).m = M.m ∧ (f M).n = M.n)
    (s : BinaryMatrixStream)
    (h : HasFixedWidth s) :
    HasFixedWidth (mapMatrix f s) := by
  rcases h with ⟨m, n, hs⟩
  refine ⟨m, n, ?_⟩
  intro t
  have hst := hs t
  have hft := hf (get s t)
  constructor
  · calc
      (frameAt (mapMatrix f s) t).m
          = (f (get s t)).m := by
              rw [frameAt_eq_get, get_mapMatrix]
      _ = (get s t).m := hft.1
      _ = m := hst.1
  · calc
      (frameAt (mapMatrix f s) t).n
          = (f (get s t)).n := by
              rw [frameAt_eq_get, get_mapMatrix]
      _ = (get s t).n := hft.2
      _ = n := hst.2

end BinaryMatrixStream
end Carrier
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ac65c4e57c1aa3c145051c4234bf81e25e1f4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
