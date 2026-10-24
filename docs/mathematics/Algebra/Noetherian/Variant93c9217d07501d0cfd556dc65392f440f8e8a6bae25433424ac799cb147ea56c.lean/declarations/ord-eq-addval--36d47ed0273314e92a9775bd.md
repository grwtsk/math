# ord_eq_addVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:568f0e77-5713-241d-6984-1467d56f8fe5",
  "kind": "lemma",
  "lexical_name": "ord_eq_addVal",
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
  "slug": "ord-eq-addval--36d47ed0273314e92a9775bd",
  "source": {
    "blob": "bf779adabbaf3ee0e360338f745e02865bcf0f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 97,
    "path": "GRWTSK/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36d47ed0273314e92a9775bd71f26177f370390bf5b442f0b96eaf7c166a4863",
  "verification": {
    "reference": "docs/verification/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:568f0e77-5713-241d-6984-1467d56f8fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ord_eq_addVal (x : R) : ord R x = IsDiscreteValuationRing.addVal R x := by
  by_cases hx : x = 0
  · simp only [ord, hx, AddValuation.map_zero]
    subst hx
    by_contra!
    rw [Module.length_ne_top_iff, isFiniteLength_iff_isNoetherian_isArtinian] at this
    have art := this.2
    rw [Ideal.span_singleton_zero] at art
    have : IsArtinianRing R :=
      (LinearEquiv.isArtinian_iff (Submodule.quotEquivOfEqBot ⊥ rfl).symm).mpr art
    exact IsDiscreteValuationRing.not_krullDimLE_zero R inferInstance
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible R
  obtain ⟨m, α, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hx hϖ
  rw [ord_mul, ord_pow, ord_of_irreducible hϖ]
  · simp [IsDiscreteValuationRing.addVal_uniformizer hϖ]
  all_goals simp_all [Irreducible.ne_zero hϖ]

open IsDiscreteValuationRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf779adabbaf3ee0e360338f745e02865bcf0f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
