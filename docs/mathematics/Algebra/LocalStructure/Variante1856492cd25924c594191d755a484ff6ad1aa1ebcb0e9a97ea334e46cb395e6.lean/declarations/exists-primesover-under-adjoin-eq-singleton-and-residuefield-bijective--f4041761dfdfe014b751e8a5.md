# exists_primesOver_under_adjoin_eq_singleton_and_residueField_bijective

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
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d83f91f9-6d2c-3d94-b5c6-3d918944ec50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f72f24f0-5af5-c830-0b57-bf3ed95248e8",
  "kind": "lemma",
  "lexical_name": "exists_primesOver_under_adjoin_eq_singleton_and_residueField_bijective",
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
  "slug": "exists-primesover-under-adjoin-eq-singleton-and-residuefield-bijective--f4041761dfdfe014b751e8a5",
  "source": {
    "blob": "23645208852af6a0e4e19a02e3362c0f4ce16053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 277,
    "path": "GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4041761dfdfe014b751e8a555a7a246747a7266688b3baff905efc05a5ad371",
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

Occurrence: `result:f72f24f0-5af5-c830-0b57-bf3ed95248e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_primesOver_under_adjoin_eq_singleton_and_residueField_bijective
    (Q : Ideal S) [Q.IsPrime] [Module.Finite R S] [Algebra.IsUnramifiedAt R Q] :
    ∃ x : S, (Q.under (R[x])).primesOver S = {Q} ∧
      letI := Localization.AtPrime.algebraOfLiesOver (Q.under R[x]) Q
      Function.Bijective (algebraMap (Q.under (R[x])).ResidueField
        Q.ResidueField) := by
  let := Localization.AtPrime.algebraOfLiesOver (Q.under R) Q
  obtain ⟨t, htQ, htQ', ht⟩ :=
    IsUnramifiedAt.exists_notMem_forall_ne_mem_and_adjoin_eq_top (R := R) Q
  let p := Q.under R
  let := Localization.AtPrime.algebraOfLiesOver p (Q.under R[t])
  let := Localization.AtPrime.algebraOfLiesOver (Q.under R[t]) Q
  refine ⟨t, ?_, RingHom.injective _, ?_⟩
  · refine Set.ext fun Q' ↦ ⟨fun ⟨_, _⟩ ↦ ?_, fun e ↦ by exact ⟨e ▸ inferInstance, ⟨e ▸ rfl⟩⟩⟩
    by_contra! H
    have : Q'.LiesOver p := .trans _ (Q.under (R[t])) _
    exact htQ (SetLike.le_def.mp (Q'.over_def (Q.under (R[t]))).ge
      (x := ⟨t, self_mem_adjoin_singleton _ _⟩) (htQ' Q' ⟨‹_›, ‹_›⟩ H))
  · have h : IsScalarTower (Localization.AtPrime p) (Localization.AtPrime (Q.under R[t]))
      (Localization.AtPrime Q) := inferInstance
    change Function.Surjective (IsScalarTower.toAlgHom p.ResidueField _ _)
    rw [← AlgHom.range_eq_top, ← top_le_iff, ← ht]
    refine adjoin_singleton_le ?_
    use algebraMap (R[t]) _ ⟨t, self_mem_adjoin_singleton _ _⟩
    rw [AlgHom.toRingHom_eq_coe, IsScalarTower.coe_toAlgHom, ← IsScalarTower.algebraMap_apply]
    rfl

set_option backward.isDefEq.respectTransparency false in
-- Subsumed by `Algebra.IsUnramifiedAt.exists_hasStandardEtaleSurjectionOn`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23645208852af6a0e4e19a02e3362c0f4ce16053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
