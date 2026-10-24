# exists_primesOver_under_adjoin_eq_singleton_and_residueField_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a5d9c2a-89f2-87a8-ff15-aeb13fe0bb07",
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
  "slug": "exists-primesover-under-adjoin-eq-singleton-and-residuefield-bijective--c1ac56ae5049983e358179e7",
  "source": {
    "blob": "6d5cd03d1c32346025753bf9e8467e67fe5af07b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 285,
    "path": "GRWTSK/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ac56ae5049983e358179e7fbd6ae4bddc8f030b53b6a5c39fb41f0742fe1be",
  "verification": {
    "reference": "docs/verification/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a5d9c2a-89f2-87a8-ff15-aeb13fe0bb07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–313.

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

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5cd03d1c32346025753bf9e8467e67fe5af07b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
