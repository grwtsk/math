# ClassGroup.mk0_eq_mk0_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:501c9c17-ff3c-8116-68b8-419fefa1e0d1",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk0_eq_mk0_iff",
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
  "slug": "classgroup-mk0-eq-mk0-iff--6982f16da0d9aa4e6b8d2109",
  "source": {
    "blob": "5f9e1fb661d6034f3f85281fb550d5cc66e25ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 306,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6982f16da0d9aa4e6b8d2109a5c8222f3771b437ac04ceaeeecbdc5a31985c47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:501c9c17-ff3c-8116-68b8-419fefa1e0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk0_eq_mk0_iff [IsDedekindDomain R] {I J : (Ideal R)⁰} :
    ClassGroup.mk0 I = ClassGroup.mk0 J ↔
      ∃ (x y : R) (_hx : x ≠ 0) (_hy : y ≠ 0), Ideal.span {x} * (I : Ideal R) =
      Ideal.span {y} * J := by
  refine (ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring (FractionRing R)).trans ⟨?_, ?_⟩
  · rintro ⟨z, hz, h⟩
    obtain ⟨x, ⟨y, hy⟩, rfl⟩ := IsLocalization.mk'_surjective R⁰ z
    refine ⟨x, y, ?_, mem_nonZeroDivisors_iff_ne_zero.mp hy, ?_⟩
    · rintro hx; apply hz
      rw [hx, IsFractionRing.mk'_eq_div, _root_.map_zero, zero_div]
    · exact (FractionalIdeal.mk'_mul_coeIdeal_eq_coeIdeal _ hy).mp h
  · rintro ⟨x, y, hx, hy, h⟩
    have hy' : y ∈ R⁰ := mem_nonZeroDivisors_iff_ne_zero.mpr hy
    refine ⟨IsLocalization.mk' _ x ⟨y, hy'⟩, ?_, ?_⟩
    · contrapose! hx
      rwa [mk'_eq_iff_eq_mul, zero_mul, ← (algebraMap R (FractionRing R)).map_zero,
        (IsFractionRing.injective R (FractionRing R)).eq_iff] at hx
    · exact (FractionalIdeal.mk'_mul_coeIdeal_eq_coeIdeal _ hy').mpr h
#align class_group.mk0_eq_mk0_iff ClassGroup.mk0_eq_mk0_iff

/-- Maps a nonzero fractional ideal to an integral representative in the class group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9e1fb661d6034f3f85281fb550d5cc66e25ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
