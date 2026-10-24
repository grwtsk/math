# awayLift_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc09f0d4-efe7-7b11-0f4e-7740b0116ba3",
  "kind": "lemma",
  "lexical_name": "awayLift_mk",
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
  "slug": "awaylift-mk--2d0ac2156b049b7c7c1768fe",
  "source": {
    "blob": "6390d7d1143f17e5b87af7931b03766592d5d8ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 380,
    "path": "GRWTSK/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d0ac2156b049b7c7c1768feba0c480559d6b7ef2680c1a7cc5cab1f227fc6e4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc09f0d4-efe7-7b11-0f4e-7740b0116ba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma awayLift_mk {A : Type*} [CommSemiring A] (f : R →+* A) (r : R)
    (a : R) (v : A) (hv : f r * v = 1) (j : ℕ) :
    Localization.awayLift f r (isUnit_iff_exists_inv.mpr ⟨v, hv⟩)
      (Localization.mk a ⟨r ^ j, j, rfl⟩) = f a * v ^ j := by
  simp [Localization.mk_eq_mk', awayLift, Away.lift, IsLocalization.lift_mk',
    Units.mul_inv_eq_iff_eq_mul, IsUnit.liftRight, mul_assoc, ← mul_pow, (mul_comm _ _).trans hv]

/-- Given a map `f : R →+* S` and an element `r : R`, we may construct a map `Rᵣ →+* Sᵣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6390d7d1143f17e5b87af7931b03766592d5d8ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
