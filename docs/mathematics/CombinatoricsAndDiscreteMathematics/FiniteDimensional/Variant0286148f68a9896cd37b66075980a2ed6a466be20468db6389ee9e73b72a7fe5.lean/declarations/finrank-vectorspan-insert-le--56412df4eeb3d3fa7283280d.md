# finrank_vectorSpan_insert_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6740241b-fba4-c2e8-177d-24a8b9898d16",
  "kind": "theorem",
  "lexical_name": "finrank_vectorSpan_insert_le",
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
  "slug": "finrank-vectorspan-insert-le--56412df4eeb3d3fa7283280d",
  "source": {
    "blob": "e0f18d1f383311dc12e2e8cb4df73b6dc44ec2a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 694,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant0286148f68a9896cd37b66075980a2ed6a466be20468db6389ee9e73b72a7fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56412df4eeb3d3fa7283280d74c0f7a29f62ec0a518ec040d5ad25ee1ed4a1d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant0286148f68a9896cd37b66075980a2ed6a466be20468db6389ee9e73b72a7fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6740241b-fba4-c2e8-177d-24a8b9898d16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_vectorSpan_insert_le (s : AffineSubspace k P) (p : P) :
    finrank k (vectorSpan k (insert p (s : Set P))) ≤ finrank k s.direction + 1 := by
  by_cases hf : FiniteDimensional k s.direction; swap
  · have hf' : ¬FiniteDimensional k (vectorSpan k (insert p (s : Set P))) := by
      intro h
      have h' : s.direction ≤ vectorSpan k (insert p (s : Set P)) := by
        conv_lhs => rw [← affineSpan_coe s, direction_affineSpan]
        exact vectorSpan_mono k (Set.subset_insert _ _)
      exact hf (Submodule.finiteDimensional_of_le h')
    rw [finrank_of_infinite_dimensional hf, finrank_of_infinite_dimensional hf', zero_add]
    exact zero_le_one
  have : FiniteDimensional k s.direction := hf
  rw [← direction_affineSpan, ← affineSpan_insert_affineSpan]
  rcases (s : Set P).eq_empty_or_nonempty with (hs | ⟨p₀, hp₀⟩)
  · rw [coe_eq_bot_iff] at hs
    rw [hs, bot_coe, span_empty, bot_coe, direction_affineSpan, direction_bot, finrank_bot,
      zero_add]
    convert zero_le_one' ℕ
    rw [← finrank_bot k V]
    convert rfl <;> simp
  · rw [affineSpan_coe, direction_affineSpan_insert hp₀, add_comm]
    refine' (Submodule.finrank_add_le_finrank_add_finrank _ _).trans (add_le_add_right _ _)
    refine' finrank_le_one ⟨p -ᵥ p₀, Submodule.mem_span_singleton_self _⟩ fun v => _
    have h := v.property
    rw [Submodule.mem_span_singleton] at h
    rcases h with ⟨c, hc⟩
    refine' ⟨c, _⟩
    ext
    exact hc
#align finrank_vector_span_insert_le finrank_vectorSpan_insert_le

variable (k)

/-- Adding a point to a set with a finite-dimensional span increases the dimension by at most
one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant0286148f68a9896cd37b66075980a2ed6a466be20468db6389ee9e73b72a7fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant0286148f68a9896cd37b66075980a2ed6a466be20468db6389ee9e73b72a7fe5.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0f18d1f383311dc12e2e8cb4df73b6dc44ec2a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
