# isAffine_surjective_of_isAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b88620f29bbb2310122e10a2b056d6f162db23d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f653edc6-028b-d41a-b20a-6aa9a47efc3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3881f031-2fbd-eba8-c42b-f8fb125a5b30",
  "kind": "theorem",
  "lexical_name": "isAffine_surjective_of_isAffine",
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
  "slug": "isaffine-surjective-of-isaffine--c9e30ea37f31eea51987acea",
  "source": {
    "blob": "2b88620f29bbb2310122e10a2b056d6f162db23d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 297,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9e30ea37f31eea51987acea772b64c29996b72ba7b77bee29ef4177715ed719",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3881f031-2fbd-eba8-c42b-f8fb125a5b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAffine_surjective_of_isAffine [IsClosedImmersion f] :
    IsAffine X ∧ Function.Surjective (f.appTop) := by
  refine ⟨isAffine_of_isAffineHom f, ?_⟩
  simp only [← f.toImage_imageι, Scheme.comp_appTop, CommRingCat.hom_comp, RingHom.coe_comp,
    Scheme.Hom.image, Scheme.Hom.imageι]
  rw [Scheme.Hom.appTop, Scheme.Hom.appTop, f.ker.subschemeι_app ⟨⊤, isAffineOpen_top Y⟩,
    CommRingCat.hom_comp, RingHom.coe_comp]
  exact (ConcreteCategory.bijective_of_isIso _).2.comp
    ((ConcreteCategory.bijective_of_isIso _).2.comp Ideal.Quotient.mk_surjective)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b88620f29bbb2310122e10a2b056d6f162db23d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
