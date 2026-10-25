# isIso_app_coconePt_of_preservesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43af95e8-4bbe-a2c3-8816-98b716293495",
  "kind": "lemma",
  "lexical_name": "isIso_app_coconePt_of_preservesColimit",
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
  "slug": "isiso-app-coconept-of-preservescolimit--38f64971846a1f4125f9c57a",
  "source": {
    "blob": "5cc02bfb37f45cce7a8d2379c409378988bceca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 798,
    "line": 780,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd3079506c68a2b7392fedf5d92ae6c9defd12c37458ff884d02525a2ce2a7e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38f64971846a1f4125f9c57af960e69ac9db95e3012d49702900abde6d9d3e7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd3079506c68a2b7392fedf5d92ae6c9defd12c37458ff884d02525a2ce2a7e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43af95e8-4bbe-a2c3-8816-98b716293495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 780–798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_app_coconePt_of_preservesColimit
    {C D J : Type*} [Category* C] [Category* D] [Category* J] (K : J ⥤ C) {L L' : C ⥤ D}
    (α : L ⟶ L') [IsIso (whiskerLeft K α)] (c : Cocone K) (hc : IsColimit c)
    [PreservesColimit K L] [PreservesColimit K L'] :
    IsIso (α.app c.pt) := by
  let e := IsColimit.coconePointsIsoOfNatIso
    (isColimitOfPreserves L hc) (isColimitOfPreserves L' hc) (asIso (whiskerLeft K α))
  convert! (inferInstance : IsIso e.hom)
  apply (isColimitOfPreserves L hc).hom_ext fun j ↦ ?_
  simp only [Functor.comp_obj, Functor.mapCocone_pt, Functor.mapCocone_ι_app,
    NatTrans.naturality, IsColimit.coconePointsIsoOfNatIso_hom, asIso_hom, e]
  refine (((isColimitOfPreserves L hc).ι_map (L'.mapCocone c) (whiskerLeft K α) j).trans ?_).symm
  simp

end

variable (F : C ⥤ D)

/-- A fully faithful functor reflects limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd3079506c68a2b7392fedf5d92ae6c9defd12c37458ff884d02525a2ce2a7e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd3079506c68a2b7392fedf5d92ae6c9defd12c37458ff884d02525a2ce2a7e37.lean#L780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cc02bfb37f45cce7a8d2379c409378988bceca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
