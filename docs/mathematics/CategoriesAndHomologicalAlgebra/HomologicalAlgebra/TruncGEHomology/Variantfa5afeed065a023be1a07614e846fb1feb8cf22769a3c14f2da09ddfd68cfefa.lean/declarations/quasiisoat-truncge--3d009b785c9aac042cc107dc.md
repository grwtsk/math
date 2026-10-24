# quasiIsoAt_πTruncGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab180303-0ab9-c131-ce1a-c87c3cb6043b",
  "kind": "lemma",
  "lexical_name": "quasiIsoAt_πTruncGE",
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
  "slug": "quasiisoat-truncge--3d009b785c9aac042cc107dc",
  "source": {
    "blob": "aaeed8ef11962f9fbf4ff22a3473ef036600bb39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d009b785c9aac042cc107dc8c27b92d6d1030ec81cc7c9ea133ab863420d80f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab180303-0ab9-c131-ce1a-c87c3cb6043b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIsoAt_πTruncGE {j : ι} {j' : ι'} (hj' : e.f j = j') :
    QuasiIsoAt (K.πTruncGE e) j' := by
  rw [quasiIsoAt_iff]
  by_cases hj : e.BoundaryGE j
  · rw [(truncGE.rightHomologyMapData K e hj' rfl rfl hj).quasiIso_iff]
    dsimp
    infer_instance
  · let φ := (shortComplexFunctor C c' j').map (K.πTruncGE e)
    have : Epi φ.τ₁ := by
      by_cases hi : ∃ i, e.f i = c'.prev j'
      · obtain ⟨i, hi⟩ := hi
        dsimp [φ, πTruncGE]
        rw [e.epi_liftExtend_f_iff _ _ hi]
        infer_instance
      · apply IsZero.epi (isZero_extend_X _ _ _ (by simpa using hi))
    have : IsIso φ.τ₂ := by
      dsimp [φ, πTruncGE]
      rw [e.isIso_liftExtend_f_iff _ _ hj']
      exact K.isIso_restrictionToTruncGE' e j hj
    have : IsIso φ.τ₃ := by
      dsimp [φ, πTruncGE]
      have : c'.next j' = e.f (c.next j) := by simpa only [← hj'] using e.next_f rfl
      rw [e.isIso_liftExtend_f_iff _ _ this.symm]
      exact K.isIso_restrictionToTruncGE' e _ (e.not_boundaryGE_next' hj rfl)
    exact ShortComplex.quasiIso_of_epi_of_isIso_of_mono φ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaeed8ef11962f9fbf4ff22a3473ef036600bb39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
