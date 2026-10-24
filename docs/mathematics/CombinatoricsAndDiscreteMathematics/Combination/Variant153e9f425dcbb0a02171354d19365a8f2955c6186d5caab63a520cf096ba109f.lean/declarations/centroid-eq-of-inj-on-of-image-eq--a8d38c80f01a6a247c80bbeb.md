# centroid_eq_of_inj_on_of_image_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e910b6e24421f7e28319ba76c456279a9dd7e51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 976,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3527f06-91dc-77c2-6dda-a24fd64e545b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d7eb1b8-1533-3db1-3aee-7d36f0a60f35",
  "kind": "theorem",
  "lexical_name": "centroid_eq_of_inj_on_of_image_eq",
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
  "slug": "centroid-eq-of-inj-on-of-image-eq--a8d38c80f01a6a247c80bbeb",
  "source": {
    "blob": "0e910b6e24421f7e28319ba76c456279a9dd7e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 991,
    "line": 976,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d38c80f01a6a247c80bbebb8c5ddd764b96c1d5a5a9e975787040fa0a78a3a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d7eb1b8-1533-3db1-3aee-7d36f0a60f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 976–991.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centroid_eq_of_inj_on_of_image_eq {p : ι → P}
    (hi : ∀ (i) (_ : i ∈ s) (j) (_ : j ∈ s), p i = p j → i = j) {p₂ : ι₂ → P}
    (hi₂ : ∀ (i) (_ : i ∈ s₂) (j) (_ : j ∈ s₂), p₂ i = p₂ j → i = j) (he : p '' ↑s = p₂ '' ↑s₂) :
    s.centroid k p = s₂.centroid k p₂ := by
  classical rw [s.centroid_eq_centroid_image_of_inj_on k hi rfl,
      s₂.centroid_eq_centroid_image_of_inj_on k hi₂ he]
#align finset.centroid_eq_of_inj_on_of_image_eq Finset.centroid_eq_of_inj_on_of_image_eq

end Finset

section AffineSpace'

variable {ι k V P : Type*} [Ring k] [AddCommGroup V] [Module k V] [AffineSpace V P]

/-- A `weightedVSub` with sum of weights 0 is in the `vectorSpan` of
an indexed family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean#L976).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e910b6e24421f7e28319ba76c456279a9dd7e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
