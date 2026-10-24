# iff_exists_algEquiv_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d754fd45e182949d6f251af481cd4f5d49a8ee27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03220e0c-1299-928c-b28b-aac6901779e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d745bce-21a3-eeda-84fd-eef19bd703c5",
  "kind": "theorem",
  "lexical_name": "iff_exists_algEquiv_prod",
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
  "slug": "iff-exists-algequiv-prod--7d81ae4d3ab31baaff34d805",
  "source": {
    "blob": "d754fd45e182949d6f251af481cd4f5d49a8ee27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 161,
    "path": "GRWTSK/Algebra/Field/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d81ae4d3ab31baaff34d8050e67d15e89c40914a53891b57fc6de0f213ea31a",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d745bce-21a3-eeda-84fd-eef19bd703c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_exists_algEquiv_prod [EssFiniteType K A] :
    FormallyEtale K A ↔
      ∃ (I : Type u) (_ : Finite I) (Ai : I → Type u) (_ : ∀ i, Field (Ai i))
        (_ : ∀ i, Algebra K (Ai i)) (_ : A ≃ₐ[K] Π i, Ai i),
        ∀ i, Algebra.IsSeparable K (Ai i) := by
  classical
  constructor
  · intro H
    have := FormallyUnramified.finite_of_free K A
    have := FormallyUnramified.isReduced_of_field K A
    have : IsArtinianRing A := isArtinian_of_tower K inferInstance
    letI : Fintype (MaximalSpectrum A) := (nonempty_fintype _).some
    let v (i : MaximalSpectrum A) : A := (IsArtinianRing.equivPi A).symm (Pi.single i 1)
    let e : A ≃ₐ[K] _ := { __ := IsArtinianRing.equivPi A, commutes' := fun r ↦ rfl }
    have := (FormallyEtale.iff_of_equiv e).mp inferInstance
    rw [FormallyEtale.pi_iff] at this
    exact ⟨_, inferInstance, _, _, _, e, fun I ↦ (iff_isSeparable _ _).mp inferInstance⟩
  · intro ⟨I, _, Ai, _, _, e, _⟩
    rw [FormallyEtale.iff_of_equiv e, FormallyEtale.pi_iff]
    exact fun I ↦ of_isSeparable K (Ai I)

end Algebra.FormallyEtale

/--
`A` is étale over a field `K` if and only if
`A` is a finite product of finite separable field extensions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d754fd45e182949d6f251af481cd4f5d49a8ee27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
