# ae_mem_of_ae_add_linearMap_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0b6e5bf-2bf1-fec6-d1a2-c83abb9104ac",
  "kind": "lemma",
  "lexical_name": "ae_mem_of_ae_add_linearMap_mem",
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
  "slug": "ae-mem-of-ae-add-linearmap-mem--469a29d73f493aa83a4f6a8b",
  "source": {
    "blob": "1f978f910dbc5d820f84a54a56d2621b01eded6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:469a29d73f493aa83a4f6a8b2e8604c56d240fda50d08e63ac310002658efdeb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0b6e5bf-2bf1-fec6-d1a2-c83abb9104ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_mem_of_ae_add_linearMap_mem [LocallyCompactSpace F] {s : Set F} (hs : MeasurableSet s)
    (h : ∀ y, ∀ᵐ x ∂μ, y + L x ∈ s) : ∀ᵐ y ∂ν, y ∈ s :=
  (ae_ae_add_linearMap_mem_iff L μ ν hs).1 (Filter.Eventually.of_forall h)

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant7227d3a47b4b61502412f461639564e28198b39b66761140f6bd77bad59a8a53.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f978f910dbc5d820f84a54a56d2621b01eded6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
