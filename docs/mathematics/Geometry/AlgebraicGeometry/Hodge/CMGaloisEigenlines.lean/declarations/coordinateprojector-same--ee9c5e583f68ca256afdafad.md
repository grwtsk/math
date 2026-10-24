# coordinateProjector_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d98a79bb-e271-45b1-1061-ce930c2d2299",
  "kind": "theorem",
  "lexical_name": "coordinateProjector_same",
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
  "slug": "coordinateprojector-same--ee9c5e583f68ca256afdafad",
  "source": {
    "blob": "b59ccd41eab0807d8f739789c4d50d56e583b0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 269,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee9c5e583f68ca256afdafadb1a8678e2d4df09d395c0cc0fe81855c7b1b0bb2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d98a79bb-e271-45b1-1061-ce930c2d2299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinateProjector_same
    (j : Fin n) {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) (embeddingCharacter k E j)) :
    coordinateProjector k E j t = t := by
  rw [embeddingEigenspace_eq_span k E j] at ht
  obtain ⟨a, rfl⟩ := Submodule.mem_span_singleton.mp ht
  rw [map_smul]
  apply congrArg (fun u => a • u)
  rw [coordinateProjector_eq_smul_canonicalEigenvector]
  simp

/-- A different coordinate projector vanishes on the selected eigenspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59ccd41eab0807d8f739789c4d50d56e583b0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
