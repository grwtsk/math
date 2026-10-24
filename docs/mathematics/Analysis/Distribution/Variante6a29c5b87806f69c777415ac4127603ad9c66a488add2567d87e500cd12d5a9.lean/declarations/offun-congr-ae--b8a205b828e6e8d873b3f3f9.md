# ofFun_congr_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ed6cd70dbc18209841f7a186d7e278e7281235a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6be3350-b039-59fc-0d42-a806fa6fc4e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1072941d-af2c-a6ff-9c65-9e8e6a54d30e",
  "kind": "theorem",
  "lexical_name": "ofFun_congr_ae",
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
  "slug": "offun-congr-ae--b8a205b828e6e8d873b3f3f9",
  "source": {
    "blob": "6ed6cd70dbc18209841f7a186d7e278e7281235a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 326,
    "path": "GRWTSK/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8a205b828e6e8d873b3f3f905858704aa8d76b3007174a6867894d960bf35e1",
  "verification": {
    "reference": "docs/verification/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1072941d-af2c-a6ff-9c65-9e8e6a54d30e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFun_congr_ae {f f' : E → F} {μ : Measure E} (h : f =ᵐ[μ.restrict Ω] f') :
    ofFun Ω f μ n = ofFun Ω f' μ n := by
  ext φ
  by_cases hf : LocallyIntegrableOn f Ω μ
  · have hf' : LocallyIntegrableOn f' Ω μ := hf.congr h
    rw [ofFun_apply hf, ofFun_apply hf']
    have h' : ∀ x ∉ Ω, φ x • f x = 0 ∧ φ x • f' x = 0 := fun x hx ↦ by simp [φ.zero_on_compl hx]
    obtain ⟨h₁, h₂⟩ := forall₂_and.mp h'
    rw [← setIntegral_eq_integral_of_ae_compl_eq_zero (.of_forall h₁),
      ← setIntegral_eq_integral_of_ae_compl_eq_zero (.of_forall h₂)]
    refine integral_congr_ae <| ae_eq_rfl.smul h
  · grind [locallyIntegrableOn_congr]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed6cd70dbc18209841f7a186d7e278e7281235a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
