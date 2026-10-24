# exists_hasStandardEtaleSurjectionOn_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23645208852af6a0e4e19a02e3362c0f4ce16053",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f89c1d3-15f6-fb6a-1168-fe7fe6867733",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cf44e02-9724-7188-f1c7-3db95457f9e0",
  "kind": "lemma",
  "lexical_name": "exists_hasStandardEtaleSurjectionOn_of_finite",
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
  "slug": "exists-hasstandardetalesurjectionon-of-finite--6fb7b18d184befbfb07f9c07",
  "source": {
    "blob": "23645208852af6a0e4e19a02e3362c0f4ce16053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 306,
    "path": "GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fb7b18d184befbfb07f9c077b599e10986329545c5d9f6f024f87a66ed1210b",
  "verification": {
    "reference": "docs/verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cf44e02-9724-7188-f1c7-3db95457f9e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_hasStandardEtaleSurjectionOn_of_finite
    (Q : Ideal S) [Q.IsPrime] [Module.Finite R S] [IsUnramifiedAt R Q] :
    ∃ f ∉ Q, HasStandardEtaleSurjectionOn R f := by
  obtain ⟨x, hQ', hQ'Q⟩ :=
    exists_primesOver_under_adjoin_eq_singleton_and_residueField_bijective (R := R) Q
  let S' := R[x]
  let Q' := Q.under S'
  let := Localization.AtPrime.algebraOfLiesOver Q' Q
  have : Module.Finite S' S := .of_restrictScalars_finite R _ _
  have : IsUnramifiedAt S' Q := .of_restrictScalars R _
  have hφ : Function.Bijective (Localization.localRingHom Q' Q S'.val rfl) :=
    ⟨Localization.localRingHom_injective_of_primesOver_eq_singleton hQ',
      Localization.localRingHom_surjective_of_primesOver_eq_singleton hQ' hQ'Q.2⟩
  obtain ⟨r, hrQ', H⟩ := Localization.exists_awayMap_bijective_of_residueField_surjective hQ' hQ'Q.2
  have : Module.Finite R S' := finite_adjoin_simple_of_isIntegral (IsIntegral.isIntegral _)
  have h : IsScalarTower R (Localization.AtPrime Q') (Localization.AtPrime Q) := inferInstance
  have : IsUnramifiedAt R Q' := .of_equiv <| .symm <| .ofBijective h.toAlgHom hφ
  obtain ⟨f, hfQ', hf⟩ :=
    IsUnramifiedAt.exists_hasStandardEtaleSurjectionOn_of_exists_adjoin_singleton_eq_top
    (R := R) (S := S') ⟨⟨x, self_mem_adjoin_singleton _ _⟩, Subalgebra.map_injective
      (f := S'.val) Subtype.val_injective (by simp [Subalgebra.range_val, S'])⟩ Q'
  obtain ⟨P, φ, hP⟩ := hf.of_dvd (g := f * r) (by simp)
  exact ⟨_, (inferInstance : Q'.IsPrime).mul_notMem hfQ' hrQ', .mk
    (f := IsScalarTower.toAlgHom R S' S (f * r))
    ((Localization.awayMapₐ (IsScalarTower.toAlgHom _ _ S) (f * r)).comp φ)
    (by exact (H _ (by simp)).surjective.comp hP)⟩

attribute [local instance high] Module.Free.of_divisionRing in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23645208852af6a0e4e19a02e3362c0f4ce16053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
