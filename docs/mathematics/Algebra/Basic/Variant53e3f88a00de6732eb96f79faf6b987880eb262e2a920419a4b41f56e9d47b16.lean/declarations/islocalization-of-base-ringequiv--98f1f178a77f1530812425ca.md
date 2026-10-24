# isLocalization_of_base_ringEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53b41f5b-c92e-8ba4-32bb-38baa1572267",
  "kind": "theorem",
  "lexical_name": "isLocalization_of_base_ringEquiv",
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
  "slug": "islocalization-of-base-ringequiv--98f1f178a77f1530812425ca",
  "source": {
    "blob": "4da5b6d47c3876f116cd987bc20d6045e1de7d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 796,
    "path": "GRWTSK/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98f1f178a77f1530812425caf25c70984889560516d048196cf22f982cde24f7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b41f5b-c92e-8ba4-32bb-38baa1572267`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 796–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalization_of_base_ringEquiv [IsLocalization M S] (h : R ≃+* P) :
    @IsLocalization _ _ (M.map h.toMonoidHom) S _
      ((algebraMap R S).comp h.symm.toRingHom).toAlgebra := by
  letI : Algebra P S := ((algebraMap R S).comp h.symm.toRingHom).toAlgebra
  constructor
  · rintro ⟨_, ⟨y, hy, rfl⟩⟩
    convert IsLocalization.map_units S ⟨y, hy⟩
    dsimp only [RingHom.algebraMap_toAlgebra, RingHom.comp_apply]
    exact congr_arg _ (h.symm_apply_apply _)
  · intro y
    obtain ⟨⟨x, s⟩, e⟩ := IsLocalization.surj M y
    refine' ⟨⟨h x, _, _, s.prop, rfl⟩, _⟩
    dsimp only [RingHom.algebraMap_toAlgebra, RingHom.comp_apply] at e ⊢
    convert e <;> exact h.symm_apply_apply _
  · intro x y
    rw [RingHom.algebraMap_toAlgebra, RingHom.comp_apply, RingHom.comp_apply,
      IsLocalization.eq_iff_exists M S]
    simp_rw [← h.toEquiv.apply_eq_iff_eq]
    change (∃ c : M, h (c * h.symm x) = h (c * h.symm y)) ↔ _
    simp only [RingEquiv.apply_symm_apply, RingEquiv.map_mul]
    exact
      ⟨fun ⟨c, e⟩ => ⟨⟨_, _, c.prop, rfl⟩, e⟩, fun ⟨⟨_, c, h, e₁⟩, e₂⟩ => ⟨⟨_, h⟩, e₁.symm ▸ e₂⟩⟩
#align is_localization.is_localization_of_base_ring_equiv IsLocalization.isLocalization_of_base_ringEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean#L796).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da5b6d47c3876f116cd987bc20d6045e1de7d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
