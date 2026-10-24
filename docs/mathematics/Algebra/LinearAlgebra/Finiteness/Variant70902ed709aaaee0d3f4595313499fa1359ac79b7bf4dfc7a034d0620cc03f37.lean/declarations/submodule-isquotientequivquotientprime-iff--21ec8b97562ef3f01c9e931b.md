# Submodule.isQuotientEquivQuotientPrime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "096873808204db26c093654b3cb57bffa78835ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9be02f78-92b8-de23-4feb-e56b1aba4b72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95035c44-fd71-3406-889a-59b045d18108",
  "kind": "theorem",
  "lexical_name": "Submodule.isQuotientEquivQuotientPrime_iff",
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
  "slug": "submodule-isquotientequivquotientprime-iff--21ec8b97562ef3f01c9e931b",
  "source": {
    "blob": "096873808204db26c093654b3cb57bffa78835ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21ec8b97562ef3f01c9e931b7cc9946540b9d1962b7fb4c8e29a46b127675e98",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95035c44-fd71-3406-889a-59b045d18108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.isQuotientEquivQuotientPrime_iff {N₁ N₂ : Submodule A M} :
    N₁.IsQuotientEquivQuotientPrime N₂ ↔
      ∃ x, Ideal.IsPrime (ker (toSpanSingleton A _ (N₁.mkQ x))) ∧ N₂ = N₁ ⊔ span A {x} := by
  let f := mapQ (N₁.submoduleOf N₂) N₁ N₂.subtype le_rfl
  have hf₁ : ker f = ⊥ := ker_liftQ_eq_bot _ _ _ (by simp [f, ker_comp, submoduleOf])
  have hf₂ : range f = N₂.map N₁.mkQ := by simp [f, mapQ, range_liftQ, range_comp]
  refine ⟨fun ⟨h, p, ⟨e⟩⟩ ↦ ?_, fun ⟨x, hx, hx'⟩ ↦ ⟨le_sup_left.trans_eq hx'.symm, ⟨_, hx⟩, ?_⟩⟩
  · obtain ⟨⟨x, hx⟩, hx'⟩ := Submodule.mkQ_surjective _ (e.symm 1)
    have hx'' : N₁.mkQ x = f (e.symm 1) := by simp [f, ← hx']
    refine ⟨x, ?_, ?_⟩
    · convert p.2
      ext r
      simp [hx'', ← map_smul, Algebra.smul_def, show f _ = 0 ↔ _ from congr(_ ∈ $hf₁),
        Ideal.Quotient.eq_zero_iff_mem]
    · refine le_antisymm ?_ (sup_le h ((span_singleton_le_iff_mem _ _).mpr hx))
      have : (span A {x}).map N₁.mkQ = ((span A {1}).map e.symm).map f := by
        simp only [map_span, Set.image_singleton, hx'']
      rw [← N₁.ker_mkQ, sup_comm, ← comap_map_eq, ← map_le_iff_le_comap, this]
      simp [← map_span, hf₂, Ideal.Quotient.span_singleton_one]
  · have hxN₂ : x ∈ N₂ := (le_sup_right.trans_eq hx'.symm) (mem_span_singleton_self x)
    refine ⟨.symm (.ofBijective (Submodule.mapQ _ _ (toSpanSingleton A _ ⟨x, hxN₂⟩) ?_) ⟨?_, ?_⟩)⟩
    · simp [SetLike.le_def, ← Quotient.mk_smul, submoduleOf]
    · refine ker_eq_bot.mp (ker_liftQ_eq_bot _ _ _ ?_)
      simp [← Quotient.mk_smul, SetLike.le_def, submoduleOf]
    · rw [mapQ, ← range_eq_top, range_liftQ, range_comp]
      have := congr($(hx').submoduleOf N₂)
      rw [submoduleOf_self, submoduleOf_sup_of_le (by aesop) (by aesop),
        submoduleOf_span_singleton_of_mem _ hxN₂] at this
      simpa [← span_singleton_eq_range, LinearMap.range_toSpanSingleton] using this.symm

variable (A M) [IsNoetherianRing A] [Module.Finite A M]

/-- If `A` is a Noetherian ring and `M` is a finitely generated `A`-module, then there exists
a chain of submodules `0 = M₀ ≤ M₁ ≤ M₂ ≤ ... ≤ Mₙ = M` of `M`, such that for each `0 ≤ i < n`,
`Mᵢ₊₁ / Mᵢ` is isomorphic to `A / pᵢ` for some prime ideal `pᵢ` of `A`. -/
@[stacks 00L0]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `096873808204db26c093654b3cb57bffa78835ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
