# chevalley_polynomialC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3c11170219fe4fb2295e31535130d7bef6e1655",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e307a637-fe74-f988-320d-e3a1cf6bd05e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68226fe9-d140-0f8f-840d-919d12762193",
  "kind": "lemma",
  "lexical_name": "chevalley_polynomialC",
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
  "slug": "chevalley-polynomialc--e28403526f9715adab72ecf3",
  "source": {
    "blob": "b3c11170219fe4fb2295e31535130d7bef6e1655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 556,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e28403526f9715adab72ecf357f85875280d83a6e15209906966663f71a80acc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68226fe9-d140-0f8f-840d-919d12762193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chevalley_polynomialC {R : Type*} [CommRing R] (M : Submodule ℤ R) (hM : 1 ∈ M)
    (S : ConstructibleSetData R[X]) (hS : ∀ C ∈ S, ∀ j k, (C.g j).coeff k ∈ M) :
    ∃ T : ConstructibleSetData R,
      comap Polynomial.C '' S.toSet = T.toSet ∧ ∀ C ∈ T, C.n ≤ S.degBound ∧
      ∀ i, C.g i ∈ M ^ S.degBound ^ S.degBound := by
  choose f hf₁ hf₂ hf₃ using fun C : BasicConstructibleSetData R[X] ↦ statement (R₀ := ℤ) ⟨C.g⟩ C.f
  refine ⟨S.biUnion f, ?_, ?_⟩
  · simp only [BasicConstructibleSetData.toSet, ConstructibleSetData.toSet, Set.image_iUnion,
      Finset.set_biUnion_biUnion, hf₁]
  · simp only [Finset.mem_biUnion, forall_exists_index, and_imp]
    intro x y hy hx
    have H : degBound ⟨y.g⟩ ≤ S.degBound :=
      Finset.le_sup (f := fun e ↦ ∑ i, (e.g i).degree.succ) hy
    refine ⟨(hf₂ y x hx).trans H, fun i ↦ SetLike.le_def.mp ?_ (hf₃ y x hx i)⟩
    gcongr
    · simpa [Submodule.one_eq_span]
    · refine Submodule.span_le.mpr ?_
      simp [Set.subset_def, hM, forall_comm (α := R), hS y hy]
    · delta powBound
      by_cases h : S.degBound = 0
      · have : degBound ⟨y.g⟩ = 0 := by nlinarith
        rw [h, this]
      gcongr
      rwa [Nat.one_le_iff_ne_zero]

/-! ### The `C : R → R[X₁, ..., Xₘ]` case -/

namespace MvPolynomialC

mutual

/-- The bound on the number of polynomials used to describe the constructible set appearing in the
case of `C : R → R[X₁, ..., Xₘ]` of Chevalley's theorem with complexity bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3c11170219fe4fb2295e31535130d7bef6e1655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
