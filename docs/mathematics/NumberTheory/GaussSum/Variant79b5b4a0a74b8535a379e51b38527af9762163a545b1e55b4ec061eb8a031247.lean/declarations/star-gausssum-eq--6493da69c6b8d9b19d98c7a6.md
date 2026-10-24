# star_gaussSum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "630849d6b0b77c0e8b7f6a56b4c05d0272569afd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c5ff6f7-ad51-463e-e1b2-29ec4580d782",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21bdde1c-c56d-a091-e86e-c507b8459134",
  "kind": "lemma",
  "lexical_name": "star_gaussSum_eq",
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
  "slug": "star-gausssum-eq--6493da69c6b8d9b19d98c7a6",
  "source": {
    "blob": "630849d6b0b77c0e8b7f6a56b4c05d0272569afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6493da69c6b8d9b19d98c7a6578b77b574857cb99c93f90239bd80292a8a1db3",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21bdde1c-c56d-a091-e86e-c507b8459134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma star_gaussSum_eq (χ : MulChar R ℂ) (ψ : AddChar R ℂ) :
    star (gaussSum χ ψ) = gaussSum χ⁻¹ ψ⁻¹ :=
  calc
    _ = ∑ x, star (ψ x) * χ⁻¹ x := by simp [gaussSum, star_mul, MulChar.star_apply']
    _ = ∑ x, ψ⁻¹ x * χ⁻¹ x := by simp [← starRingEnd_apply, map_neg_eq_conj]
    _ = _ := by simp [mul_comm, gaussSum]

end GaussSumDef

/-!
### Gauss sums of trivial characters
-/

section GaussSumTrivial

variable {R R' : Type*} [CommRing R] [Fintype R] [CommRing R']

/-- The Gauss sum of the two trivial characters is the cardinality of the unit group of `R`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630849d6b0b77c0e8b7f6a56b4c05d0272569afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
