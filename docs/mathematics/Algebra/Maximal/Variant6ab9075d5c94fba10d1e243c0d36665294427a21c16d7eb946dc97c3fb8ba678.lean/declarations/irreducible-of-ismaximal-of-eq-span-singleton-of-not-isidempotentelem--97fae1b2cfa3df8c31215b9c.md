# irreducible_of_isMaximal_of_eq_span_singleton_of_not_isIdempotentElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fca120ed82b45c18738ee0934a7f47b1f7ec85d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:953e76aa-6d5e-a3d5-2d0c-3932b28d0b6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e726621-4587-5dd6-b034-8b0e943e779a",
  "kind": "theorem",
  "lexical_name": "irreducible_of_isMaximal_of_eq_span_singleton_of_not_isIdempotentElem",
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
  "slug": "irreducible-of-ismaximal-of-eq-span-singleton-of-not-isidempotentelem--97fae1b2cfa3df8c31215b9c",
  "source": {
    "blob": "fca120ed82b45c18738ee0934a7f47b1f7ec85d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 232,
    "path": "GRWTSK/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97fae1b2cfa3df8c31215b9cdf7059bda92b9e724fb5d8bc23693c3be1265f21",
  "verification": {
    "reference": "docs/verification/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e726621-4587-5dd6-b034-8b0e943e779a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_of_isMaximal_of_eq_span_singleton_of_not_isIdempotentElem {a : α}
    (max : (Ideal.span {a}).IsMaximal)
    (idem : ∀ x, Ideal.span {a} = Ideal.span {x} → ¬IsIdempotentElem x) :
    Irreducible a := by
  refine ⟨fun _ ↦ max.ne_top (by simpa), fun u v ha ↦ ?_⟩
  by_contra! ⟨hu, hv⟩
  have hu₂ : span {a} = span {u} :=
    (max.eq_of_le (span_singleton_ne_top hu) (by simp [ha, Ideal.mem_span_singleton]))
  have hv₂ : span {a} = span {v} :=
    (max.eq_of_le (span_singleton_ne_top hv) (by simp [ha, Ideal.mem_span_singleton]))
  obtain ⟨c, rfl⟩ : a ∣ u := by simp [← Ideal.mem_span_singleton, hu₂]
  obtain ⟨d, rfl⟩ : a ∣ v := by simp [← Ideal.mem_span_singleton, hv₂]
  refine idem (a * (c * d)) ?_ ?_
  · apply le_antisymm <;> rw [span_singleton_le_span_singleton]
    · convert dvd_mul_right (a * (c * d)) a
      grind
    · apply dvd_mul_right
  · rw [isIdempotentElem_iff]
    nth_rw 3 [ha]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca120ed82b45c18738ee0934a7f47b1f7ec85d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
