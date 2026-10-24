# symmetric_charpoly_zero_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40ab68cc26a03d30f2447de56913c162dfd82dcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38eb6e30-c87d-e634-9f4b-869eedd2b2a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c808bbf6-5e63-f284-9ba0-8cdab342936f",
  "kind": "theorem",
  "lexical_name": "symmetric_charpoly_zero_real",
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
  "slug": "symmetric-charpoly-zero-real--cc168a62c0c98aa7411f72bb",
  "source": {
    "blob": "40ab68cc26a03d30f2447de56913c162dfd82dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 13,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc168a62c0c98aa7411f72bb5f7926570b344d3c69df067540cef996b6237e05",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c808bbf6-5e63-f284-9ba0-8cdab342936f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetric_charpoly_zero_real {E : Type*} [NormedAddCommGroup E]
    [InnerProductSpace ℂ E] [FiniteDimensional ℂ E]
    {T : E →ₗ[ℂ] E} (hT : T.IsSymmetric) {z : ℂ}
    (hz : T.charpoly.eval z = 0) : z.im = 0 := by
  apply Complex.conj_eq_iff_im.mp
  apply hT.conj_eigenvalue_eq_self
  exact (Module.End.hasEigenvalue_iff_isRoot_charpoly T z).mpr hz

/-- The actual characteristic polynomial of every finite Hermitian complex matrix has real zeros. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ab68cc26a03d30f2447de56913c162dfd82dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
