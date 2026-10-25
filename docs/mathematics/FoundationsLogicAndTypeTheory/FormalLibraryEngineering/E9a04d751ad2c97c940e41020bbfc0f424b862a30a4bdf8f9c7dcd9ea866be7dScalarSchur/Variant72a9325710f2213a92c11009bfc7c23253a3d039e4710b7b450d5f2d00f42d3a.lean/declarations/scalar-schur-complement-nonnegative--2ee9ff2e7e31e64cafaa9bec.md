# scalar_schur_complement_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e98ddd63-e64d-0ed3-2f58-6899f9e6fc4e",
  "kind": "theorem",
  "lexical_name": "scalar_schur_complement_nonnegative",
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
  "slug": "scalar-schur-complement-nonnegative--2ee9ff2e7e31e64cafaa9bec",
  "source": {
    "blob": "42865c0b77b88c3ac10ea9b703b6357ddbd77877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ee9ff2e7e31e64cafaa9bec1e7e7abe6b63c1b2f8bcaa3f003df51fb7c0fe12",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e98ddd63-e64d-0ed3-2f58-6899f9e6fc4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_schur_complement_nonnegative
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x) :
    0 ≤ c - b ^ 2 / a := by
  have h :=
    (scalarProvenanceProjector a b c ha hpos).residualForm_nonnegative
      (0, 1)
  rw [scalarResidualForm_eq_schur a b c ha hpos (0, 1) (0, 1)] at h
  simpa using h

/-- The ambient quadratic form decomposes into the canonical explained
provenance energy and the Schur residual energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42865c0b77b88c3ac10ea9b703b6357ddbd77877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
