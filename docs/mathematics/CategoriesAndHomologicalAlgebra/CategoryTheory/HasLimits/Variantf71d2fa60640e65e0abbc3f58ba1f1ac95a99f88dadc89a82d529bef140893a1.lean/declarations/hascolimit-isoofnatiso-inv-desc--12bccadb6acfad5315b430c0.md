# HasColimit.isoOfNatIso_inv_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3a1506080c39901e54ba4f9dc3968a9c13af066",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 931,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4aeee7ca-d180-6c93-1a78-51e18dc69493",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47098f85-03a3-d9a8-611b-4d921662c4ba",
  "kind": "theorem",
  "lexical_name": "HasColimit.isoOfNatIso_inv_desc",
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
  "slug": "hascolimit-isoofnatiso-inv-desc--12bccadb6acfad5315b430c0",
  "source": {
    "blob": "f3a1506080c39901e54ba4f9dc3968a9c13af066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 940,
    "line": 931,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantf71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12bccadb6acfad5315b430c042e16e322c98dcfbc902c7ad43084e059b917626",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantf71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47098f85-03a3-d9a8-611b-4d921662c4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–940.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasColimit.isoOfNatIso_inv_desc {F G : J ⥤ C} [HasColimit F] [HasColimit G] (t : Cocone F)
    (w : F ≅ G) :
    (HasColimit.isoOfNatIso w).inv ≫ colimit.desc F t =
      colimit.desc G ((Cocones.precompose w.inv).obj _) :=
  IsColimit.coconePointsIsoOfNatIso_inv_desc _ _ _
#align category_theory.limits.has_colimit.iso_of_nat_iso_inv_desc CategoryTheory.Limits.HasColimit.isoOfNatIso_inv_desc

/-- The colimits of `F : J ⥤ C` and `G : K ⥤ C` are isomorphic,
if there is an equivalence `e : J ≌ K` making the triangle commute up to natural isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantf71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantf71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a1506080c39901e54ba4f9dc3968a9c13af066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
