# eq_zero_of_isNilpotent_of_isFinitelySemisimple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b976c2a9dcadd47ca46fb0eafce81f837e391151",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4e22f9d-9a9c-909f-c262-90afb7fad265",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2487569e-6f33-f979-8904-2e20703ab2df",
  "kind": "lemma",
  "lexical_name": "eq_zero_of_isNilpotent_of_isFinitelySemisimple",
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
  "slug": "eq-zero-of-isnilpotent-of-isfinitelysemisimple--e7c7fb704d837244367690e3",
  "source": {
    "blob": "b976c2a9dcadd47ca46fb0eafce81f837e391151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7c7fb704d837244367690e31da0bb0014d3bb77b04e51c9a45f689ac8da594d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2487569e-6f33-f979-8904-2e20703ab2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_zero_of_isNilpotent_of_isFinitelySemisimple
    (hn : IsNilpotent f) (hs : IsFinitelySemisimple f) : f = 0 := by
  have (p) (hp₁ : p ∈ f.invtSubmodule) (hp₂ : Module.Finite R p) : f.restrict hp₁ = 0 := by
    specialize hs p hp₁ hp₂
    replace hn : IsNilpotent (f.restrict hp₁) := isNilpotent.restrict hp₁ hn
    exact eq_zero_of_isNilpotent_isSemisimple hn hs
  ext x
  obtain ⟨k : ℕ, hk : f ^ k = 0⟩ := hn
  let p := Submodule.span R {(f ^ i) x | (i : ℕ) (_ : i ≤ k)}
  have hp₁ : p ∈ f.invtSubmodule := by
    simp only [mem_invtSubmodule, p, Submodule.span_le]
    rintro - ⟨i, hi, rfl⟩
    apply Submodule.subset_span
    rcases lt_or_eq_of_le hi with hik | rfl
    · exact ⟨i + 1, hik, by simpa [Module.End.pow_apply] using iterate_succ_apply' f i x⟩
    · exact ⟨i, by simp [hk]⟩
  have hp₂ : Module.Finite R p := by
    let g : ℕ → M := fun i ↦ (f ^ i) x
    have hg : {(f ^ i) x | (i : ℕ) (_ : i ≤ k)} = g '' Iic k := by ext; simp [g]
    exact Module.Finite.span_of_finite _ <| hg ▸ toFinite (g '' Iic k)
  simpa [LinearMap.restrict_apply, Subtype.ext_iff] using
    LinearMap.congr_fun (this p hp₁ hp₂) ⟨x, Submodule.subset_span ⟨0, k.zero_le, rfl⟩⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b976c2a9dcadd47ca46fb0eafce81f837e391151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
