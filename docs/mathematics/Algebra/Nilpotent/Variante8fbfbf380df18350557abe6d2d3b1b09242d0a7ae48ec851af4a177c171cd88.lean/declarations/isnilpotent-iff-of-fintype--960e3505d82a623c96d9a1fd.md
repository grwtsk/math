# isNilpotent_iff_of_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbbda76a-756d-9f0f-a8a5-a80be2adedf3",
  "kind": "theorem",
  "lexical_name": "isNilpotent_iff_of_fintype",
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
  "slug": "isnilpotent-iff-of-fintype--960e3505d82a623c96d9a1fd",
  "source": {
    "blob": "15355d016b5437ba5a5cfce04fd8a815a054b85a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 37,
    "path": "GRWTSK/Algebra/Nilpotent/Variante8fbfbf380df18350557abe6d2d3b1b09242d0a7ae48ec851af4a177c171cd88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:960e3505d82a623c96d9a1fd597bee9007af4e360f53a9b0b54b2960d6bd2047",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variante8fbfbf380df18350557abe6d2d3b1b09242d0a7ae48ec851af4a177c171cd88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbbda76a-756d-9f0f-a8a5-a80be2adedf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isNilpotent_iff_of_fintype [Finite σ] :
    IsNilpotent P ↔ ∀ i, IsNilpotent (P.coeff i) := by
  classical
  -- Note: including `Fintype.ofFinite σ` in the entire context interferes with the `rw` below.
  refine have := Fintype.ofFinite σ; Fintype.induction_empty_option ?_ ?_ ?_ σ P
  · intro α β _ e h₁ P
    rw [← IsNilpotent.map_iff (rename_injective _ e.symm.injective), h₁,
      (Finsupp.equivCongrLeft e).forall_congr_left]
    simp [Finsupp.equivMapDomain_eq_mapDomain, coeff_rename_mapDomain _ e.symm.injective]
  · simp [Unique.forall_iff, ← IsNilpotent.map_iff (isEmptyRingEquiv R PEmpty).injective,
      -isEmptyRingEquiv_apply, isEmptyRingEquiv_eq_coeff_zero]
  · intro α _ H P
    obtain ⟨P, rfl⟩ := (optionEquivLeft _ _).symm.surjective P
    simp [IsNilpotent.map_iff (optionEquivLeft _ _).symm.injective,
      Polynomial.isNilpotent_iff, H, Finsupp.optionEquiv.forall_congr_left,
      ← optionEquivLeft_coeff_some_coeff_none, Finsupp.coe_update]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variante8fbfbf380df18350557abe6d2d3b1b09242d0a7ae48ec851af4a177c171cd88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variante8fbfbf380df18350557abe6d2d3b1b09242d0a7ae48ec851af4a177c171cd88.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15355d016b5437ba5a5cfce04fd8a815a054b85a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
