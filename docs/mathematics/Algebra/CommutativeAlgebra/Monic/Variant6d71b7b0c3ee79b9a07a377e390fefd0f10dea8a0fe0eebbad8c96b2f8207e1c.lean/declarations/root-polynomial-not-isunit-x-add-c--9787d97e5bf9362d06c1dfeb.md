# _root_.Polynomial.not_isUnit_X_add_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d55322a62697fff8c78402e9ccea0f970d5edd2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9f98354-81c2-e22c-45c0-e279ab5d446d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41c8dc23-73ef-3850-4205-8b3434d3d647",
  "kind": "theorem",
  "lexical_name": "_root_.Polynomial.not_isUnit_X_add_C",
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
  "slug": "root-polynomial-not-isunit-x-add-c--9787d97e5bf9362d06c1dfeb",
  "source": {
    "blob": "d55322a62697fff8c78402e9ccea0f970d5edd2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 160,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9787d97e5bf9362d06c1dfeb400c82d39540eecab8a79851346a6d6a068fffda",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c8dc23-73ef-3850-4205-8b3434d3d647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Polynomial.not_isUnit_X_add_C [Nontrivial R] (a : R) : ¬ IsUnit (X + C a) := by
  rintro ⟨⟨_, g, hfg, hgf⟩, rfl⟩
  have h := (monic_X_add_C a).natDegree_mul' (right_ne_zero_of_mul_eq_one hfg)
  rw [hfg, natDegree_one, natDegree_X_add_C] at h
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55322a62697fff8c78402e9ccea0f970d5edd2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
