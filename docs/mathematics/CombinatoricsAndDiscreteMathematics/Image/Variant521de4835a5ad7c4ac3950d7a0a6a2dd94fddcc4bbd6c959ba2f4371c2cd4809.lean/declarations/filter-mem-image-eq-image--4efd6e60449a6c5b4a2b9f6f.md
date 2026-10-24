# filter_mem_image_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd3097e9-f06b-4876-403b-c6152e9e9896",
  "kind": "theorem",
  "lexical_name": "filter_mem_image_eq_image",
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
  "slug": "filter-mem-image-eq-image--4efd6e60449a6c5b4a2b9f6f",
  "source": {
    "blob": "afa5c6c1770d50e9ed5fbc757f64ba337bac65cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 380,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4efd6e60449a6c5b4a2b9f6f32a7ef6291b9a761fac3d4aba86417c119aaf29c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd3097e9-f06b-4876-403b-c6152e9e9896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_mem_image_eq_image (f : α → β) (s : Finset α) (t : Finset β) (h : ∀ x ∈ s, f x ∈ t) :
    (t.filter fun y => y ∈ s.image f) = s.image f := by
  ext
  simp only [mem_filter, mem_image, decide_eq_true_eq, and_iff_right_iff_imp, forall_exists_index,
    and_imp]
  rintro x xel rfl
  exact h _ xel
#align finset.filter_mem_image_eq_image Finset.filter_mem_image_eq_image

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa5c6c1770d50e9ed5fbc757f64ba337bac65cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
