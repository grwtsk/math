# finrank_eq_fixingSubgroup_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75ac10c7ad01e8ad002ba01c8c19938fd816aa44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 678,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49d4efa8-d67e-da5a-a080-0939bb7efdfc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e63e53f3-fe9f-c1be-33bb-e56617b903d6",
  "kind": "theorem",
  "lexical_name": "finrank_eq_fixingSubgroup_index",
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
  "slug": "finrank-eq-fixingsubgroup-index--899f0243a7d6f2f822d7e932",
  "source": {
    "blob": "75ac10c7ad01e8ad002ba01c8c19938fd816aa44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 678,
    "path": "GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:899f0243a7d6f2f822d7e9327a7f33c3be33bdb86946d1e102e984a0c995a5b2",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e63e53f3-fe9f-c1be-33bb-e56617b903d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 678–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_eq_fixingSubgroup_index (L : IntermediateField F E') [IsGalois F E'] :
    Module.finrank F L = L.fixingSubgroup.index := by
  wlog hnfd : FiniteDimensional F L generalizing L
  · rw [Module.finrank_of_infinite_dimensional hnfd]
    by_contra! h
    replace h : L.fixingSubgroup.FiniteIndex := ⟨h.symm⟩
    obtain ⟨L', hfd, hL'⟩ :=
      exists_lt_finrank_of_infinite_dimensional hnfd L.fixingSubgroup.index
    let i := (liftAlgEquiv L').toLinearEquiv
    replace hfd := i.finiteDimensional
    rw [i.finrank_eq, this _ hfd] at hL'
    exact (Subgroup.index_antitone <| fixingSubgroup_le <|
      IntermediateField.lift_le L').not_gt hL'
  let E := normalClosure F L E'
  have hle : L ≤ E := by simpa only [fieldRange_val] using L.val.fieldRange_le_normalClosure
  let L' := restrict hle
  have h := Module.finrank_mul_finrank F ↥L' ↥E
  classical
  rw [← IsGalois.card_fixingSubgroup_eq_finrank L', ← IsGalois.card_aut_eq_finrank F E] at h
  rw [← L'.fixingSubgroup.index_mul_card, Nat.mul_left_inj Finite.card_pos.ne'] at h
  rw [(restrictAlgEquiv hle).toLinearEquiv.finrank_eq, h, ← L'.map_fixingSubgroup_index E']
  congr 2
  exact lift_restrict hle

end IntermediateField

end restrictRestrictAlgEquivMapHom

section Compositum

variable {F : Type*} [Field F]

/-- The kernel of the restriction homomorphism `Gal(K₁/F) →* Gal(E/F)` is the subgroup fixing
the image of `E` in `K₁` pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean#L678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ac10c7ad01e8ad002ba01c8c19938fd816aa44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
