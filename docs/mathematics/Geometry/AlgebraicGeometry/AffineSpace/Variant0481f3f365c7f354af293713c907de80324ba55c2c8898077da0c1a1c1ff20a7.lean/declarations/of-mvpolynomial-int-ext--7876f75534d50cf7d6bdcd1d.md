# of_mvPolynomial_int_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26ae68e236b2102eb2333471cf36cb0628dd49f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c370177-e854-cf84-5428-66bfaa0e327a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:285d567d-b3ff-dcc7-977c-06497ceedb63",
  "kind": "lemma",
  "lexical_name": "of_mvPolynomial_int_ext",
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
  "slug": "of-mvpolynomial-int-ext--7876f75534d50cf7d6bdcd1d",
  "source": {
    "blob": "26ae68e236b2102eb2333471cf36cb0628dd49f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7876f75534d50cf7d6bdcd1d8595be3efa1e487a7e98e15e94d473133a27dc3a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:285d567d-b3ff-dcc7-977c-06497ceedb63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_mvPolynomial_int_ext {R} {f g : ℤ[n] ⟶ R} (h : ∀ i, f (.X i) = g (.X i)) : f = g := by
  suffices f.hom.comp (MvPolynomial.mapEquiv _ ULift.ringEquiv.symm).toRingHom =
      g.hom.comp (MvPolynomial.mapEquiv _ ULift.ringEquiv.symm).toRingHom by
    ext x
    · obtain ⟨x⟩ := x
      simpa [-map_intCast, -eq_intCast] using! DFunLike.congr_fun this (C x)
    · simpa [-map_intCast, -eq_intCast] using! DFunLike.congr_fun this (X x)
  ext1
  · exact RingHom.ext_int _ _
  · simpa using! h _


@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ae68e236b2102eb2333471cf36cb0628dd49f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
