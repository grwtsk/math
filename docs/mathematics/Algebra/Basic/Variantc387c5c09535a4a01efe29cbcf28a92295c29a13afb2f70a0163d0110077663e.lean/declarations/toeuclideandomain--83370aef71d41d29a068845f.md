# toEuclideanDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86a9a0e1608b773cc2aa05818d530e7a9ca606f22a9a52f199f252bdf904344d",
  "kind": "def",
  "lexical_name": "toEuclideanDomain",
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
  "slug": "toeuclideandomain--83370aef71d41d29a068845f",
  "source": {
    "blob": "4ccde7c42e4033530ff92467eef069619fd0848c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 620,
    "path": "GRWTSK/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83370aef71d41d29a068845fb0f4f45b0396ad35669c9382eba589330c3e6a78",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86a9a0e1608b773cc2aa05818d530e7a9ca606f22a9a52f199f252bdf904344d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toEuclideanDomain : EuclideanDomain R where
  quotient := quotient
  quotient_zero x := by simp [quotient]
  remainder := remainder
  quotient_mul_add_remainder_eq x y := by
    rw [remainder, quotient]
    split_ifs with h₁ h₂ h₂
    · rw [h₁, zero_dvd_iff] at h₂; rw [h₁, h₂]; ring
    · rw [h₁]; ring
    · rw [← h₂.choose_spec]; ring
    · ring
  r x y := toWithBotNat x < toWithBotNat y
  r_wellFounded := WellFounded.onFun wellFounded_lt
  remainder_lt x y hy := by
    rw [remainder]
    split_ifs with hyx
    · rwa [toWithBotNat_zero, bot_lt_toWithBotNat_iff]
    · exact lt_iff_not_ge.mpr (mt (dvd_of_toWithBotNat_le_toWithBotNat _ _ hy) hyx)
  mul_left_not_lt x y hy := by
    by_cases hx : x = 0
    · simp [hx]
    rw [not_lt, toWithBotNat_le_toWithBotNat_iff hx (mul_ne_zero hx hy)]
    exact dvd_mul_right _ _

end toEuclideanDomain

end IsDiscreteValuationRing


section

variable (A : Type u) [CommRing A] [IsDomain A] [IsDiscreteValuationRing A]

/-- A DVR is a valuation ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ccde7c42e4033530ff92467eef069619fd0848c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
