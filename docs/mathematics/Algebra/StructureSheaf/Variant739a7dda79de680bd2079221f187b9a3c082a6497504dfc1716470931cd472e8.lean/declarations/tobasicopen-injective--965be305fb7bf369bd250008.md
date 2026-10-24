# toBasicOpen_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1631ec5-dce8-73e6-483b-fc3d63e74fd2",
  "kind": "theorem",
  "lexical_name": "toBasicOpen_injective",
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
  "slug": "tobasicopen-injective--965be305fb7bf369bd250008",
  "source": {
    "blob": "b2b8f88a0a3366a26e204ada4a5f97b22cc22de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 595,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965be305fb7bf369bd2500085379ebfb7d1d1437c070425a1989dac85d099c62",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1631ec5-dce8-73e6-483b-fc3d63e74fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toBasicOpen_injective (f : R) : Function.Injective (toBasicOpen R f) := by
  intro s t h_eq
  obtain ⟨a, ⟨b, hb⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers f) s
  obtain ⟨c, ⟨d, hd⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers f) t
  simp only [toBasicOpen_mk'] at h_eq
  rw [IsLocalization.eq]
  -- We know that the fractions `a/b` and `c/d` are equal as sections of the structure sheaf on
  -- `basicOpen f`. We need to show that they agree as elements in the localization of `R` at `f`.
  -- This amounts showing that `r * (d * a) = r * (b * c)`, for some power `r = f ^ n` of `f`.
  -- We define `I` as the ideal of *all* elements `r` satisfying the above equation.
  let I : Ideal R :=
    { carrier := { r : R | r * (d * a) = r * (b * c) }
      zero_mem' := by simp only [Set.mem_setOf_eq, zero_mul]
      add_mem' := fun {r₁ r₂} hr₁ hr₂ => by dsimp at hr₁ hr₂ ⊢; simp only [add_mul, hr₁, hr₂]
      smul_mem' := fun {r₁ r₂} hr₂ => by dsimp at hr₂ ⊢; simp only [mul_assoc, hr₂] }
  -- Our claim now reduces to showing that `f` is contained in the radical of `I`
  suffices f ∈ I.radical by
    obtain ⟨n, hn⟩ := this
    exact ⟨⟨f ^ n, n, rfl⟩, hn⟩
  rw [← PrimeSpectrum.vanishingIdeal_zeroLocus_eq_radical, PrimeSpectrum.mem_vanishingIdeal]
  intro p hfp
  contrapose hfp
  rw [PrimeSpectrum.mem_zeroLocus, Set.not_subset]
  have := congr_fun (congr_arg Subtype.val h_eq) ⟨p, hfp⟩
  dsimp at this
  rw [IsLocalization.eq (S := Localization.AtPrime p.asIdeal)] at this
  obtain ⟨r, hr⟩ := this
  exact ⟨r.1, hr, r.2⟩

/-
Auxiliary lemma for surjectivity of `toBasicOpen`.
Every section can locally be represented on basic opens `basicOpen g` as a fraction `f/g`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2b8f88a0a3366a26e204ada4a5f97b22cc22de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
