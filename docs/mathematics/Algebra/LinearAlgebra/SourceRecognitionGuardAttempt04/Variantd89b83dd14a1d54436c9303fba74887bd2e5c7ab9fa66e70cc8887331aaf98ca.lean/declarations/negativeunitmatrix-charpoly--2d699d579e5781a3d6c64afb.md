# negativeUnitMatrix_charpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2f5ac44-697c-2ef9-802d-c1c60f4064af",
  "kind": "theorem",
  "lexical_name": "negativeUnitMatrix_charpoly",
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
  "slug": "negativeunitmatrix-charpoly--2d699d579e5781a3d6c64afb",
  "source": {
    "blob": "b8f67d710f0d4950b6cd7bc2269839a8f1ab4f63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d699d579e5781a3d6c64afbcec28fc7e130e5e519653cdeddaf52d081fc0c72",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2f5ac44-697c-2ef9-802d-c1c60f4064af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeUnitMatrix_charpoly : negativeUnitMatrix.charpoly = X + 1 := by
  have hd : negativeUnitMatrix = Matrix.diagonal (fun _ : Fin 1 => (-1 : ℂ)) := by
    ext i j
    by_cases hij : i = j <;>
      simp [negativeUnitMatrix, Matrix.neg_apply, Matrix.one_apply, Matrix.diagonal_apply, hij]
  rw [hd, Matrix.charpoly_diagonal]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f67d710f0d4950b6cd7bc2269839a8f1ab4f63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
