# HasAffineProperty.diagonal_of_diagonal_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54421917-71f9-3c70-d47c-b2375ab054c6",
  "kind": "theorem",
  "lexical_name": "HasAffineProperty.diagonal_of_diagonal_of_isPullback",
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
  "slug": "hasaffineproperty-diagonal-of-diagonal-of-ispullback--8fd484f323c3ff9b0df705f9",
  "source": {
    "blob": "4a81aaf4b4e62285368bce04e7e98775eb744ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fd484f323c3ff9b0df705f9d6ebb0e058c5140ceac57a05a17123ff83c92b46",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54421917-71f9-3c70-d47c-b2375ab054c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasAffineProperty.diagonal_of_diagonal_of_isPullback
    (P) {Q} [HasAffineProperty P Q]
    {X Y U V : Scheme.{u}} {f : X ⟶ Y} {g : U ⟶ Y}
    [IsAffine U] [IsOpenImmersion g]
    {iV : V ⟶ X} {f' : V ⟶ U} (h : IsPullback iV f' f g) (H : P.diagonal f) :
    Q.diagonal f' := by
  letI := isLocal_affineProperty P
  rw [← Q.diagonal.cancel_left_of_respectsIso h.isoPullback.inv,
    h.isoPullback_inv_snd]
  rintro U V f₁ f₂ hU hV hf₁ hf₂
  rw [← Q.cancel_left_of_respectsIso (pullbackDiagonalMapIso f _ f₁ f₂).hom]
  convert HasAffineProperty.of_isPullback (P := P) (.of_hasPullback _ _) H
  · apply pullback.hom_ext <;> simp
  · infer_instance
  · infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a81aaf4b4e62285368bce04e7e98775eb744ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
