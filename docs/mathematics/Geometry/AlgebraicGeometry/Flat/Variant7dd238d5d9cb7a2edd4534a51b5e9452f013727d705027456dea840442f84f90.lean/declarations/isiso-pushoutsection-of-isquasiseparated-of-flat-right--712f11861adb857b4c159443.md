# isIso_pushoutSection_of_isQuasiSeparated_of_flat_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05977cbf-30de-1084-cfa0-92135cb6eb30",
  "kind": "lemma",
  "lexical_name": "isIso_pushoutSection_of_isQuasiSeparated_of_flat_right",
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
  "slug": "isiso-pushoutsection-of-isquasiseparated-of-flat-right--712f11861adb857b4c159443",
  "source": {
    "blob": "e0e723945703bc1866e0abaa9e2a95e3088e19cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 463,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:712f11861adb857b4c159443899ce78eaf8ff1d380c0f8d4d945a9ea3bc233ed",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05977cbf-30de-1084-cfa0-92135cb6eb30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_pushoutSection_of_isQuasiSeparated_of_flat_right [Flat f]
    (hUS : IsAffineOpen US) (hUT : IsAffineOpen UT)
    (hUX : IsCompact (X := X) UX) (hUX' : IsQuasiSeparated (α := X) UX) :
    IsIso (pushoutSection H hUST hUSX hUY) := by
  obtain ⟨I, hI, e⟩ := isCompact_iff_finite_and_eq_biUnion_affineOpens.mp hUX
  have hIUX (i : I) : i.1 ≤ UX := by rw [e]; intro i; aesop
  have := hI.to_subtype
  exact isIso_pushoutSection_of_iSup_eq H hUST hUSX hUY (fun i : I ↦ i) (by rwa [iSup_subtype,
    eq_comm]) (fun i ↦ isIso_pushoutSection_of_isAffineOpen _ _ _ _ hUS hUT i.1.2) (fun i j ↦
    mono_pushoutSection_of_isCompact_of_flat_right _ _ _ _ hUS hUT (hUX' _ _ (hIUX _) i.1.1.2
    i.1.2.isCompact (hIUX _) j.1.1.2 j.1.2.isCompact))
    (f.flat_appLE hUS hUT _)

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0e723945703bc1866e0abaa9e2a95e3088e19cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
