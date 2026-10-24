# IsDiscreteValuationRing.TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56c03acf7009e6b550e52ff6b48b1bc9fb1d1666",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e139825-7327-545e-2b9e-9f9b6ed8189d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e883e87-18a0-3edc-f855-48a354c9b3ca",
  "kind": "theorem",
  "lexical_name": "IsDiscreteValuationRing.TFAE",
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
  "slug": "isdiscretevaluationring-tfae--976cf26ed3cb728b3be62785",
  "source": {
    "blob": "56c03acf7009e6b550e52ff6b48b1bc9fb1d1666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 210,
    "path": "GRWTSK/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:976cf26ed3cb728b3be627856e70549d59cd9f5e2ce22a3fe3151b1ef7644126",
  "verification": {
    "reference": "docs/verification/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e883e87-18a0-3edc-f855-48a354c9b3ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsDiscreteValuationRing.TFAE [IsNoetherianRing R] [IsLocalRing R] [IsDomain R]
    (h : ¬IsField R) :
    List.TFAE
      [IsDiscreteValuationRing R, ValuationRing R, IsDedekindDomain R,
        IsIntegrallyClosed R ∧ ∃! P : Ideal R, P ≠ ⊥ ∧ P.IsPrime, (maximalIdeal R).IsPrincipal,
        finrank (ResidueField R) (CotangentSpace R) = 1,
        ∀ (I) (_ : I ≠ ⊥), ∃ n : ℕ, I = maximalIdeal R ^ n] := by
  have : finrank (ResidueField R) (CotangentSpace R) = 1 ↔
      finrank (ResidueField R) (CotangentSpace R) ≤ 1 := by
    simp [Nat.le_one_iff_eq_zero_or_eq_one, finrank_cotangentSpace_eq_zero_iff, h]
  rw [this]
  have : maximalIdeal R ≠ ⊥ := isField_iff_maximalIdeal_eq.not.mp h
  convert! tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain R
  · exact ⟨fun _ ↦ inferInstance, fun h ↦ { h with not_a_field' := this }⟩
  · exact ⟨fun h P h₁ h₂ ↦ h.unique ⟨h₁, h₂⟩ ⟨this, inferInstance⟩,
      fun H ↦ ⟨_, ⟨this, inferInstance⟩, fun P hP ↦ H P hP.1 hP.2⟩⟩

variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c03acf7009e6b550e52ff6b48b1bc9fb1d1666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
