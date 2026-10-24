# ExcenterExists.affineSpan_faceOpposite_eq_orthRadius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bcc4757-e859-7728-e004-814bd6a21787",
  "kind": "lemma",
  "lexical_name": "ExcenterExists.affineSpan_faceOpposite_eq_orthRadius",
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
  "slug": "excenterexists-affinespan-faceopposite-eq-orthradius--c0c071c75d965445e448fb3f",
  "source": {
    "blob": "401cc1ded433db248dd46aeca64cc5cd3edffc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 932,
    "line": 923,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0c071c75d965445e448fb3f2b2370722f160daab1b351fdd442577798a7d045",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bcc4757-e859-7728-e004-814bd6a21787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 923–932.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ExcenterExists.affineSpan_faceOpposite_eq_orthRadius [hf : Fact (Module.finrank ℝ V = n)]
    {signs : Finset (Fin (n + 1))} (h : s.ExcenterExists signs) (i : Fin (n + 1)) :
    affineSpan ℝ (Set.range (s.faceOpposite i).points) =
      (s.exsphere signs).orthRadius (s.touchpoint signs i) := by
  refine (h.isTangentAt_touchpoint i).eq_orthRadius_of_finrank_add_one_eq (h.exradius_pos.ne') ?_
  rw [direction_affineSpan, (s.faceOpposite i).independent.finrank_vectorSpan_add_one,
    Fintype.card_fin, hf.out]
  have := NeZero.ne n
  lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean#L923).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401cc1ded433db248dd46aeca64cc5cd3edffc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
