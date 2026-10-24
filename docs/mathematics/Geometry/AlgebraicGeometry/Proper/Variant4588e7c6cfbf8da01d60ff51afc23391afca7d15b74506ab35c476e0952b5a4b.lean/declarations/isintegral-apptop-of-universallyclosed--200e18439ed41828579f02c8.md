# isIntegral_appTop_of_universallyClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac01bd19788e603b7fb877ab2fddeba6bcbb43e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c7bfc40-07c1-f873-091d-f06bc79dad3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f536e97e-6458-df8a-8779-d45c6fffed16",
  "kind": "theorem",
  "lexical_name": "isIntegral_appTop_of_universallyClosed",
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
  "slug": "isintegral-apptop-of-universallyclosed--200e18439ed41828579f02c8",
  "source": {
    "blob": "ac01bd19788e603b7fb877ab2fddeba6bcbb43e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:200e18439ed41828579f02c8fb701ff103b78d2e1111400e181119bc2d2b63cd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f536e97e-6458-df8a-8779-d45c6fffed16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_appTop_of_universallyClosed (f : X ⟶ Y) [UniversallyClosed f] [IsAffine Y] :
    f.appTop.hom.IsIntegral := by
  have : CompactSpace X := (quasiCompact_over_affine_iff f).mp inferInstance
  have : UniversallyClosed (X.toSpecΓ ≫ Spec.map f.appTop) := by
    rwa [← Scheme.toSpecΓ_naturality,
      MorphismProperty.cancel_right_of_respectsIso (P := @UniversallyClosed)]
  have : UniversallyClosed X.toSpecΓ := .of_comp_of_isSeparated _ (Spec.map f.appTop)
  rw [← IsIntegralHom.SpecMap_iff, IsIntegralHom.iff_universallyClosed_and_isAffineHom]
  exact ⟨.of_comp_surjective X.toSpecΓ _, inferInstance⟩

/-- If `X` is an integral scheme that is universally closed over `Spec K`,
then `Γ(X, ⊤)` is a field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac01bd19788e603b7fb877ab2fddeba6bcbb43e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
