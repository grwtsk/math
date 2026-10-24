# of_iSup_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0b3ce21-b33c-375b-cde5-ed921bcb3098",
  "kind": "theorem",
  "lexical_name": "of_iSup_eq_top",
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
  "slug": "of-isup-eq-top--acabbeeb245045ffb8619d1c",
  "source": {
    "blob": "ef109d77ea0832b10e22aeb0537c7e22f330f82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 543,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acabbeeb245045ffb8619d1c153ca30d24e85d2b9c5d2a793bd6a70ca0941f74",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b3ce21-b33c-375b-cde5-ed921bcb3098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_iSup_eq_top
    {ι} (U : ι → Y.affineOpens) (hU : ⨆ i, (U i : Y.Opens) = ⊤)
    (hU' : ∀ i, Q (f ∣_ U i)) :
    P f := by
  let := isLocal_affineProperty P
  rw [eq_targetAffineLocally P]
  classical
  intro V
  induction V using of_affine_open_cover U hU with
  | basicOpen U r h =>
    have := AffineTargetMorphismProperty.IsLocal.to_basicOpen (f ∣_ U.1) (U.1.topIso.inv r) h
    exact (Q.arrow_mk_iso_iff
      (morphismRestrictRestrictBasicOpen f _ r)).mp this
  | openCover U s hs H =>
    apply AffineTargetMorphismProperty.IsLocal.of_basicOpenCover _
      (s.image (Scheme.Opens.topIso _).inv) (by simp [← Ideal.map_span, hs, Ideal.map_top])
    intro ⟨r, hr⟩
    obtain ⟨r, hr', rfl⟩ := Finset.mem_image.mp hr
    exact (Q.arrow_mk_iso_iff
      (morphismRestrictRestrictBasicOpen f _ r).symm).mp (H ⟨r, hr'⟩)
  | hU i => exact hU' i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef109d77ea0832b10e22aeb0537c7e22f330f82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
