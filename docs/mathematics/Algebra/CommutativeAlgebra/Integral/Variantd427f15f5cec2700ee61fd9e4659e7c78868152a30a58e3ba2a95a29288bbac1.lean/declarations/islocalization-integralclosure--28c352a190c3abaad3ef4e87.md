# IsLocalization.integralClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd3fd64f39b0a988cd280af7d1b1e488259cbff5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1fbe8aa-5959-7f2f-170c-38f39ae80342",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5b2fc2e-0660-af85-cf07-0c1bfcbd6a6f",
  "kind": "lemma",
  "lexical_name": "IsLocalization.integralClosure",
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
  "slug": "islocalization-integralclosure--28c352a190c3abaad3ef4e87",
  "source": {
    "blob": "fd3fd64f39b0a988cd280af7d1b1e488259cbff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 412,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28c352a190c3abaad3ef4e8740595fffbf661a098a5a4ba3dff24b6d6ef4b1da",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b2fc2e-0660-af85-cf07-0c1bfcbd6a6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsLocalization.integralClosure
    (M : Submonoid R) [IsLocalization M Rf] [IsLocalization (Algebra.algebraMapSubmonoid S M) Sf]
    [Algebra (integralClosure R S) (integralClosure Rf Sf)]
    [IsScalarTower (integralClosure R S) (integralClosure Rf Sf) Sf]
    [IsScalarTower R (integralClosure R S) (integralClosure Rf Sf)] :
    IsLocalization (Algebra.algebraMapSubmonoid (integralClosure R S) M)
      (integralClosure Rf Sf) := by
  refine ⟨⟨?_, ?_, ?_⟩⟩
  · rintro ⟨_, f, hf, rfl⟩
    convert!
      (IsLocalization.map_units (S := Rf) ⟨f, hf⟩).map (algebraMap Rf (integralClosure Rf Sf))
    simp [← IsScalarTower.algebraMap_apply]
  · rintro ⟨s, hs⟩
    obtain ⟨⟨x, _, m₁, hm₁, rfl⟩, e⟩ := IsLocalization.surj (Algebra.algebraMapSubmonoid S M) s
    simp only [← IsScalarTower.algebraMap_apply] at e
    obtain ⟨⟨m₂, hm₂⟩, hm₂s⟩ := IsIntegral.exists_multiple_integral_of_isLocalization M _ hs
    simp only [Submonoid.smul_def, Algebra.smul_def] at hm₂s
    obtain ⟨m₃, hm₃, hm₃s⟩ := IsLocalization.exists_isIntegral_smul_of_isIntegral_map (Sₘ := Sf)
      M (x := m₂ • x) <| by
        simp only [Algebra.smul_def, map_mul, ← IsScalarTower.algebraMap_apply, ← e, ← mul_assoc]
        exact hm₂s.mul (.algebraMap (Algebra.IsIntegral.isIntegral _))
    refine ⟨⟨⟨_, hm₃s⟩, _, _, mul_mem hm₁ (mul_mem hm₂ hm₃), rfl⟩, ?_⟩
    · apply (FaithfulSMul.algebraMap_injective (integralClosure Rf Sf) Sf)
      simp [← IsScalarTower.algebraMap_apply, e, ← mul_assoc, Algebra.smul_def]
      ring
  · rintro ⟨a, ha⟩ ⟨b, hb⟩ e
    have := congr(algebraMap _ Sf $e)
    have : algebraMap S Sf a = algebraMap S Sf b := by
      simpa only [← IsScalarTower.algebraMap_apply] using! this
    obtain ⟨⟨_, m, hm, rfl⟩, h⟩ :=
      (IsLocalization.eq_iff_exists (Algebra.algebraMapSubmonoid S M) _).mp this
    refine ⟨⟨_, m, hm, rfl⟩, FaithfulSMul.algebraMap_injective (integralClosure R S) S ?_⟩
    simpa only [← IsScalarTower.algebraMap_apply]

-- We take in an arbitrary `Algebra (integralClosure R S) (integralClosure Rf Sf)` instance
-- so that it applies more easily.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3fd64f39b0a988cd280af7d1b1e488259cbff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
