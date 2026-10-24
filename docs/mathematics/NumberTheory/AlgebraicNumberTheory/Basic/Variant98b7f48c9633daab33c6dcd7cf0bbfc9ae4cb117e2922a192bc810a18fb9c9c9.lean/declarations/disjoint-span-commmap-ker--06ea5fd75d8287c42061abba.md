# disjoint_span_commMap_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:981bb2bc-2511-9d4a-6bee-71ed8483369e",
  "kind": "theorem",
  "lexical_name": "disjoint_span_commMap_ker",
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
  "slug": "disjoint-span-commmap-ker--06ea5fd75d8287c42061abba",
  "source": {
    "blob": "4c813c5689dc9b979161222249d0a01268774891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 294,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant98b7f48c9633daab33c6dcd7cf0bbfc9ae4cb117e2922a192bc810a18fb9c9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06ea5fd75d8287c42061abba1847482ec0e88ec0ef8dfc9c2eef855b6e6ff05f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant98b7f48c9633daab33c6dcd7cf0bbfc9ae4cb117e2922a192bc810a18fb9c9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:981bb2bc-2511-9d4a-6bee-71ed8483369e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_span_commMap_ker [NumberField K] :
    Disjoint (Submodule.span ℝ (Set.range (canonicalEmbedding.latticeBasis K)))
      (LinearMap.ker (commMap K)) := by
  refine LinearMap.disjoint_ker.mpr (fun x h_mem h_zero => ?_)
  replace h_mem : x ∈ Submodule.span ℝ (Set.range (canonicalEmbedding K)) := by
    refine (Submodule.span_mono ?_) h_mem
    rintro _ ⟨i, rfl⟩
    exact ⟨integralBasis K i, (canonicalEmbedding.latticeBasis_apply K i).symm⟩
  ext1 φ
  rw [Pi.zero_apply]
  by_cases hφ : ComplexEmbedding.IsReal φ
  · apply Complex.ext
    · rw [← embedding_mk_eq_of_isReal hφ, ← commMap_apply_of_isReal K x ⟨φ, hφ, rfl⟩]
      exact congrFun (congrArg (fun x => x.1) h_zero) ⟨InfinitePlace.mk φ, _⟩
    · rw [Complex.zero_im, ← Complex.conj_eq_iff_im, canonicalEmbedding.conj_apply _ h_mem,
        ComplexEmbedding.isReal_iff.mp hφ]
  · have := congrFun (congrArg (fun x => x.2) h_zero) ⟨InfinitePlace.mk φ, ⟨φ, hφ, rfl⟩⟩
    cases embedding_mk_eq φ with
    | inl h => rwa [← h, ← commMap_apply_of_isComplex K x ⟨φ, hφ, rfl⟩]
    | inr h =>
        apply RingHom.injective (starRingEnd ℂ)
        rwa [canonicalEmbedding.conj_apply _ h_mem, ← h, map_zero,
          ← commMap_apply_of_isComplex K x ⟨φ, hφ, rfl⟩]

end commMap

noncomputable section norm

variable {K}

open scoped Classical in
/-- The norm at the infinite place `w` of an element of the mixed space -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant98b7f48c9633daab33c6dcd7cf0bbfc9ae4cb117e2922a192bc810a18fb9c9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant98b7f48c9633daab33c6dcd7cf0bbfc9ae4cb117e2922a192bc810a18fb9c9c9.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c813c5689dc9b979161222249d0a01268774891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
