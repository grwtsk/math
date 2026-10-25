# negative_count_schur

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f93bb48-811a-98bc-6f62-c61c6edc7dea",
  "kind": "theorem",
  "lexical_name": "negative_count_schur",
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
  "slug": "negative-count-schur--04fa04defa3de684e874c840",
  "source": {
    "blob": "9c0bd76bc73aa87d64494f70e886c6048520a25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04fa04defa3de684e874c840b11c64a51a0646ef5e531d11963abc2114b11dcc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f93bb48-811a-98bc-6f62-c61c6edc7dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_count_schur (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.IsHermitian) :
    Fintype.card {i // (full_isHermitian A C B hA hB).eigenvalues i < 0} =
      Fintype.card {i // (reduced_isHermitian A C B hA hB).eigenvalues i < 0} := by
  have hp : (shear C B).det ≠ 0 := by rw [shear_det]; exact one_ne_zero
  have he := negative_count_congruence
    (fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B)
    (shear C B) (reduced_isHermitian A C B hA hB) hp
    (Matrix.isHermitian_conjTranspose_mul_mul (shear C B) (reduced_isHermitian A C B hA hB))
  simpa only [← exact_congruence A C B hB] using he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0bd76bc73aa87d64494f70e886c6048520a25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
