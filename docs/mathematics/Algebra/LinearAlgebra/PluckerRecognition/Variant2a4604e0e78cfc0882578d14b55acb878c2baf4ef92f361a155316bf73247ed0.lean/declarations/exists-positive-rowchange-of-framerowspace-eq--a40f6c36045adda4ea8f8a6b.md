# exists_positive_rowChange_of_frameRowSpace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6796d6b1011888c08fbde25d812b6117fad3a367",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca5981db-cc53-3752-1d77-f7a64ddad984",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c20bd06-a35d-337c-2c60-cf0daf29554e",
  "kind": "theorem",
  "lexical_name": "exists_positive_rowChange_of_frameRowSpace_eq",
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
  "slug": "exists-positive-rowchange-of-framerowspace-eq--a40f6c36045adda4ea8f8a6b",
  "source": {
    "blob": "6796d6b1011888c08fbde25d812b6117fad3a367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a40f6c36045adda4ea8f8a6b84db6f99f6c7d9bb9a2139efe83e79fc9ecb0496",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c20bd06-a35d-337c-2c60-cf0daf29554e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_positive_rowChange_of_frameRowSpace_eq
    (A B : Matrix (Fin k) (Fin n) ℝ) (hA : A.rank = k) (hB : B.rank = k)
    (hAn : AllOrderedMinorsNonneg A) (hBn : AllOrderedMinorsNonneg B)
    (he : frameRowSpace A = frameRowSpace B) :
    ∃ U : Matrix (Fin k) (Fin k) ℝ, 0 < Matrix.det U ∧ B = U * A := by
  obtain ⟨U, hU, hBA⟩ := exists_rowChange_of_frameRowSpace_eq A B hB he
  refine ⟨U, ?_, hBA⟩
  apply orderedMinor_factor_pos A B hA hAn hBn (Matrix.det U) hU
  intro I
  rw [hBA, orderedMinor_mul_left]

end

end FormalResearch.PositiveAtlas.Grassmannian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6796d6b1011888c08fbde25d812b6117fad3a367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
