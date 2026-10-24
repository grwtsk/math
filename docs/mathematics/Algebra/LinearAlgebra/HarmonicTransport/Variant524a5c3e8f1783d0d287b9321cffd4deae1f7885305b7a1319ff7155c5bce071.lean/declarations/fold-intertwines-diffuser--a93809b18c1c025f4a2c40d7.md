# fold_intertwines_diffuser

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47270abcb6dd909ca417e79ee872803bc882a0d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4897a0bb-4d21-7f05-07d8-35e39187360e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9a61c18-22bb-54f9-c498-e7a1a694a71b",
  "kind": "theorem",
  "lexical_name": "fold_intertwines_diffuser",
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
  "slug": "fold-intertwines-diffuser--a93809b18c1c025f4a2c40d7",
  "source": {
    "blob": "47270abcb6dd909ca417e79ee872803bc882a0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a93809b18c1c025f4a2c40d767d46fca51da726bab224ed6ecdbf4dd09541dee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9a61c18-22bb-54f9-c498-e7a1a694a71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fold_intertwines_diffuser
    (fold : FoldUnitary terrain)
    (s : ℝ) :
    fold.operator * heatDiffuser terrain.complex.hodgeDirac s =
      heatDiffuser terrain.complex.hodgeDirac s * fold.operator := by
  have laplacianCommute :
      Commute fold.operator
        (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) := by
    rw [terrain.complex.hodgeDirac_square]
    exact fold.fold_intertwines_laplacian
  have scaledCommute :
      Commute fold.operator
        ((-(s : ℂ)) •
          (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac)) :=
    laplacianCommute.smul_right (-(s : ℂ))
  exact scaledCommute.exp_right.eq

end FoldUnitary

end DAF.Fold
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47270abcb6dd909ca417e79ee872803bc882a0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
