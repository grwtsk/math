# ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf090226-99e3-a926-fa1a-b7dfc0ca20eb",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring",
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
  "slug": "classgroup-mk0-eq-mk0-iff-exists-fraction-ring--b05f6da3abbd7dc50f797f8c",
  "source": {
    "blob": "5c8845b904c5fa31d7b7c381e31820785303acad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 264,
    "path": "GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b05f6da3abbd7dc50f797f8cc6a95087200b43be754edb5b4a32d3d42468563f",
  "verification": {
    "reference": "docs/verification/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf090226-99e3-a926-fa1a-b7dfc0ca20eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring [IsDedekindDomain R] {I J : (Ideal R)⁰} :
    ClassGroup.mk0 I =
      ClassGroup.mk0 J ↔ ∃ (x : _) (_ : x ≠ (0 : K)), spanSingleton R⁰ x * I = J := by
  refine (ClassGroup.equiv K).injective.eq_iff.symm.trans ?_
  simp only [ClassGroup.equiv_mk0, QuotientGroup.mk'_eq_mk', mem_principal_ideals_iff,
    Units.ext_iff, Units.val_mul, FractionalIdeal.coe_mk0, exists_prop]
  constructor
  · rintro ⟨X, ⟨x, hX⟩, hx⟩
    refine ⟨x, ?_, ?_⟩
    · rintro rfl; simp [X.ne_zero.symm] at hX
    simpa only [hX, mul_comm] using hx
  · rintro ⟨x, hx, eq_J⟩
    refine ⟨Units.mk0 _ (spanSingleton_ne_zero_iff.mpr hx), ⟨x, rfl⟩, ?_⟩
    simpa only [mul_comm] using eq_J

variable {K}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c8845b904c5fa31d7b7c381e31820785303acad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
