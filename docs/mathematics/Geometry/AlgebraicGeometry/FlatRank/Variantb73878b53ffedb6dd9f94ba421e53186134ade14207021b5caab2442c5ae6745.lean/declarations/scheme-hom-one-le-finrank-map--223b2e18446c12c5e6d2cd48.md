# Scheme.Hom.one_le_finrank_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:615053c6-aeb0-1601-11a0-04adf02692c9",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.one_le_finrank_map",
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
  "slug": "scheme-hom-one-le-finrank-map--223b2e18446c12c5e6d2cd48",
  "source": {
    "blob": "2c1d3ee597b32bacebd1aaf18059d1e679a08b8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 183,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:223b2e18446c12c5e6d2cd486a7c6a73d342b2e40bb6c46d77aa600a16f84164",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:615053c6-aeb0-1601-11a0-04adf02692c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma Scheme.Hom.one_le_finrank_map (x : X) : 1 ≤ finrank f (f x) := by
  wlog hY : ∃ R, Y = Spec R
  · obtain ⟨R, g, hg, y, hy⟩ := Y.exists_Spec_apply_eq (f x)
    rw [← hy, ← finrank_pullback_snd]
    obtain ⟨z, hzl, hzr⟩ := Scheme.Pullback.exists_preimage_pullback (f := f) (g := g) x y hy.symm
    rw [hzr.symm]
    refine this _ _ ⟨_, rfl⟩
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · have _ : IsAffine X := isAffine_of_isAffineHom f
    have heq : f x = (X.isoSpec.inv ≫ f) (X.isoSpec.hom x) := by simp
    rw [← finrank_comp_left_of_isIso X.isoSpec.inv, heq]
    exact this _ _ _ ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  simp only [IsFinite.SpecMap_iff, Flat.SpecMap_iff] at *
  rw [finrank_SpecMap_eq_finrank ‹_› ‹_›]
  algebraize [φ.hom]
  rw [← RingHom.algebraMap_toAlgebra φ.hom, RingHom.finrank_algebraMap, Nat.add_one_le_iff,
    PrimeSpectrum.rankAtStalk_pos_iff_mem_range_comap]
  use x
  rfl

set_option backward.isDefEq.respectTransparency false in
/-- A finite flat locally finitely presented morphism is surjective if and only if its rank
function is at least `1` everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c1d3ee597b32bacebd1aaf18059d1e679a08b8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
