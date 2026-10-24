# IsLocalization.linearIndepOn_finsetIntegerMultiple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:655f46c9-ab84-7d90-0b7f-78322823f981",
  "kind": "theorem",
  "lexical_name": "IsLocalization.linearIndepOn_finsetIntegerMultiple",
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
  "slug": "islocalization-linearindepon-finsetintegermultiple--c7520db7dd31dbcf6357eb39",
  "source": {
    "blob": "b6e48f687edfe37badd7e42a91fbb3efc69885a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 89,
    "path": "GRWTSK/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7520db7dd31dbcf6357eb390b239f46d48a67a5fb99a0c247728cdbfe6fccf2",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:655f46c9-ab84-7d90-0b7f-78322823f981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.linearIndepOn_finsetIntegerMultiple {A : Type*} [CommRing A] [Algebra S A]
    [Algebra R A] [IsScalarTower R S A] (M : Submonoid S) [IsLocalization M A] [FaithfulSMul S A]
    {s : Finset A} (hs : LinearIndepOn R id (s : Set A)) [DecidableEq S] :
    LinearIndepOn R id (finsetIntegerMultiple M s : Set S) := by
  classical
  rw [← LinearIndepOn.id_image_algebraMap_iff (A := A),
    finsetIntegerMultiple_image, ← s.coe_smul_finset]
  rw [linearIndepOn_finset_iff] at hs ⊢
  intro f h
  rw [s.smul_finset_def, s.forall_mem_image]
  apply hs
  have inj := (IsLocalization.smul_bijective A (commonDenomOfFinset M s)).injective
  rw [← inj.eq_iff, smul_zero, s.smul_sum, ← h, s.smul_finset_def, s.sum_image inj.injOn]
  exact s.sum_congr rfl fun x hx ↦ smul_comm ..

section

variable (R N) [IsFractionRing R S]

/-- Given `IsScalarTower R S N`, if `S` is the fraction ring of `R`, then the rank `rank S N`
of the right part of the tower equals the rank `rank R N` of the whole tower.

See `IsFractionRing.finrank_right_eq` for the finrank version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e48f687edfe37badd7e42a91fbb3efc69885a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
