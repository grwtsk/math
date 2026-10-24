# ker_quotientMap_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f629b058eaee4a3ae1a63b2725a63a0a0ab6d0fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05ed01cd-e489-6f52-69fe-2855e4381524",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afd2fcee-5ad1-5a35-9ac6-969aa271732b",
  "kind": "lemma",
  "lexical_name": "ker_quotientMap_mk",
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
  "slug": "ker-quotientmap-mk--c30c7c72f3ccdb6bd573fcff",
  "source": {
    "blob": "f629b058eaee4a3ae1a63b2725a63a0a0ab6d0fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 535,
    "path": "GRWTSK/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c30c7c72f3ccdb6bd573fcff86c2eca8f7eb2de28ca72f9f649850a612bffeec",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afd2fcee-5ad1-5a35-9ac6-969aa271732b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_quotientMap_mk {I J : Ideal R} [I.IsTwoSided] [J.IsTwoSided] :
    RingHom.ker (quotientMap (J.map _) (Quotient.mk I) le_comap_map) = I.map (Quotient.mk J) := by
  rw [Ideal.quotientMap, Ideal.ker_quotient_lift, ← RingHom.comap_ker, Ideal.mk_ker,
    Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective,
    ← RingHom.ker_eq_comap_bot, Ideal.mk_ker, Ideal.map_sup, Ideal.map_quotient_self, bot_sup_eq]

section quotientEquiv

variable (I : Ideal R) (J : Ideal S) [I.IsTwoSided] [J.IsTwoSided]
    (f : R ≃+* S) (hIJ : J = I.map (f : R →+* S))

/-- The ring equiv `R/I ≃+* S/J` induced by a ring equiv `f : R ≃+* S`, where `J = f(I)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f629b058eaee4a3ae1a63b2725a63a0a0ab6d0fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
