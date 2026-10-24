# isAffineHom_of_forall_exists_isAffineOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a37537ed8d4baf118d18e4205d679c240a95656f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b31b8af7-6cce-4447-0d72-207685a086cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0feaa759-eb24-8b8f-fb7b-4a938a91963b",
  "kind": "lemma",
  "lexical_name": "isAffineHom_of_forall_exists_isAffineOpen",
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
  "slug": "isaffinehom-of-forall-exists-isaffineopen--913bc62faeffefe3ef84dc1d",
  "source": {
    "blob": "a37537ed8d4baf118d18e4205d679c240a95656f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 182,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:913bc62faeffefe3ef84dc1de100835e5f650d79d18d81d6050dbf686ae3849c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0feaa759-eb24-8b8f-fb7b-4a938a91963b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isAffineHom_of_forall_exists_isAffineOpen
    (H : ∀ x : Y, ∃ U : Y.Opens, x ∈ U ∧ IsAffineOpen U ∧ IsAffineOpen (f ⁻¹ᵁ U)) :
    IsAffineHom f := by
  choose U hxU hU hfU using H
  rw [HasAffineProperty.iff_of_iSup_eq_top (P := @IsAffineHom) fun i ↦ ⟨U i, hU i⟩]
  · exact hfU
  · exact top_le_iff.mp (fun x _ ↦ by simpa using ⟨x, hxU x⟩)

/-- If the underlying map of a morphism is inducing and has closed range, then it is affine. -/
@[stacks 04DE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a37537ed8d4baf118d18e4205d679c240a95656f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
