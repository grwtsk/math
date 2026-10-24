# instAlgebraRingQuot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e344b3f66ef47b9737e5f6bf193703c4bf524c41c0e618a1a5b642fe19e6492b",
  "kind": "instance",
  "lexical_name": "instAlgebraRingQuot",
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
  "slug": "instalgebraringquot--9c307df652b434d07a8a9d19",
  "source": {
    "blob": "d456bbce45029f935ba732070b78af764ae897da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 402,
    "path": "GRWTSK/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c307df652b434d07a8a9d195855530a6104e53f75788bf9ce9e58e07948d3d9",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e344b3f66ef47b9737e5f6bf193703c4bf524c41c0e618a1a5b642fe19e6492b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAlgebraRingQuot [Algebra S R] (r : R → R → Prop) : Algebra S (RingQuot r) where
  smul := (· • ·)
  toFun r := ⟨Quot.mk _ (algebraMap S R r)⟩
  map_one' := by simp [← one_quot]
  map_mul' := by simp [mul_quot]
  map_zero' := by simp [← zero_quot]
  map_add' := by simp [add_quot]
  commutes' r := by
    rintro ⟨⟨a⟩⟩
    simp [Algebra.commutes, mul_quot]
  smul_def' r := by
    rintro ⟨⟨a⟩⟩
    simp [smul_quot, Algebra.smul_def, mul_quot]

/-- The quotient map from a ring to its quotient, as a homomorphism of rings.
-/
irreducible_def mkRingHom (r : R → R → Prop) : R →+* RingQuot r :=
  { toFun := fun x ↦ ⟨Quot.mk _ x⟩
    map_one' := by simp [← one_quot]
    map_mul' := by simp [mul_quot]
    map_zero' := by simp [← zero_quot]
    map_add' := by simp [add_quot] }
#align ring_quot.mk_ring_hom RingQuot.mkRingHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d456bbce45029f935ba732070b78af764ae897da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
