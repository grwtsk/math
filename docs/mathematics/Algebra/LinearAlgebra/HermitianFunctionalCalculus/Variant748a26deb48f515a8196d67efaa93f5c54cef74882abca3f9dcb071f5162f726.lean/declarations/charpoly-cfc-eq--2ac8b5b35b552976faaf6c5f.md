# charpoly_cfc_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3f915c7-2fdc-f4c6-9bc3-8cf1a243a230",
  "kind": "lemma",
  "lexical_name": "charpoly_cfc_eq",
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
  "slug": "charpoly-cfc-eq--2ac8b5b35b552976faaf6c5f",
  "source": {
    "blob": "a78128c2e3da44c1e6ce28a0128351d32533c1cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 160,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ac8b5b35b552976faaf6c5fe6ce4056b71352d2943a9b697ed0e0a646810471",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3f915c7-2fdc-f4c6-9bc3-8cf1a243a230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charpoly_cfc_eq (f : ℝ → ℝ) :
    (cfc f A).charpoly = ∏ i, (X - C (f (hA.eigenvalues i) : 𝕜)) := by
  rw [cfc_eq hA f, IsHermitian.cfc, conjStarAlgAut_apply, charpoly_mul_comm, ← mul_assoc]
  simp [charpoly_diagonal]

end IsHermitian
end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant748a26deb48f515a8196d67efaa93f5c54cef74882abca3f9dcb071f5162f726.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a78128c2e3da44c1e6ce28a0128351d32533c1cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
