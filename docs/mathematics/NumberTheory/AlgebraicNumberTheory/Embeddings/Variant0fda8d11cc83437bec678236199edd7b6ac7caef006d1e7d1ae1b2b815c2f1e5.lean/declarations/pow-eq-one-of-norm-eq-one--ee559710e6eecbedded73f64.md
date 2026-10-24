# pow_eq_one_of_norm_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83380bf8ef22dc15cbf7de97c465721ee5dde49b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09f68aa1-3d78-ef17-5630-fb5d533a33b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee3e3a9a-3b6c-1c95-026a-af7d98dda589",
  "kind": "theorem",
  "lexical_name": "pow_eq_one_of_norm_eq_one",
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
  "slug": "pow-eq-one-of-norm-eq-one--ee559710e6eecbedded73f64",
  "source": {
    "blob": "83380bf8ef22dc15cbf7de97c465721ee5dde49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee559710e6eecbedded73f64fd108227a6da83c8e382ddacfe31531ee33db664",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee3e3a9a-3b6c-1c95-026a-af7d98dda589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_eq_one_of_norm_eq_one {x : K} (hxi : IsIntegral ℤ x) (hx : ∀ φ : K →+* A, ‖φ x‖ = 1) :
    ∃ (n : ℕ) (_ : 0 < n), x ^ n = 1 := by
  obtain ⟨a, -, b, -, habne, h⟩ :=
    @Set.Infinite.exists_ne_map_eq_of_mapsTo _ _ _ _ ((· ^ ·) x : ℕ → K) Set.infinite_univ
      (by exact fun a _ => ⟨hxi.pow a, fun φ => by simp [hx φ]⟩) (finite_of_norm_le K A (1 : ℝ))
  · wlog hlt : b < a
    · exact this K A hxi hx b a habne.symm h.symm (habne.lt_or_lt.resolve_right hlt)
    refine ⟨a - b, tsub_pos_of_lt hlt, ?_⟩
    dsimp at h -- Porting note: added dsimp
    rw [← Nat.sub_add_cancel hlt.le, pow_add, mul_left_eq_self₀] at h
    refine h.resolve_right fun hp => ?_
    specialize hx (IsAlgClosed.lift (NumberField.isAlgebraic K)).toRingHom
    rw [pow_eq_zero hp, map_zero, norm_zero] at hx; norm_num at hx
#align number_field.embeddings.pow_eq_one_of_norm_eq_one NumberField.Embeddings.pow_eq_one_of_norm_eq_one

end Bounded

end NumberField.Embeddings

section Place

variable {K : Type*} [Field K] {A : Type*} [NormedDivisionRing A] [Nontrivial A] (φ : K →+* A)

/-- An embedding into a normed division ring defines a place of `K` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant0fda8d11cc83437bec678236199edd7b6ac7caef006d1e7d1ae1b2b815c2f1e5.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83380bf8ef22dc15cbf7de97c465721ee5dde49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
