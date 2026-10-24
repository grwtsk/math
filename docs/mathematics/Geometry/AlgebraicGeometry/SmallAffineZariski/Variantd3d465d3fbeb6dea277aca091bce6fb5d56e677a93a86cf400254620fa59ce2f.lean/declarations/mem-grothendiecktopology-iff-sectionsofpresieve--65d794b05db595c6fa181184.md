# mem_grothendieckTopology_iff_sectionsOfPresieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c80ae9d09ae1705fd7332c94c8401804d7b0bd93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:677d3f58-24b3-4381-73f4-cf12a96ce4f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59e931d5-db72-565f-4754-308cae0672bc",
  "kind": "lemma",
  "lexical_name": "mem_grothendieckTopology_iff_sectionsOfPresieve",
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
  "slug": "mem-grothendiecktopology-iff-sectionsofpresieve--65d794b05db595c6fa181184",
  "source": {
    "blob": "c80ae9d09ae1705fd7332c94c8401804d7b0bd93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 176,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65d794b05db595c6fa181184040dde94aec121bf57930de9f76d77cf97705a3e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59e931d5-db72-565f-4754-308cae0672bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_grothendieckTopology_iff_sectionsOfPresieve
    {U : X.AffineZariskiSite} {S : Sieve U} :
    S ∈ grothendieckTopology X U ↔ Ideal.span (sectionsOfPresieve S.1) = ⊤ := by
  rw [← generate_presieveOfSections_mem_grothendieckTopology, presieveOfSections_sectionsOfPresieve,
    Sieve.generate_sieve]

variable {A} [Category A]
variable [∀ (U : X.Opensᵒᵖ), Limits.HasLimitsOfShape (StructuredArrow U (toOpensFunctor X).op) A]

/-- The category of sheaves on `X.AffineZariskiSite` is equivalent to the categories of sheaves
over `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80ae9d09ae1705fd7332c94c8401804d7b0bd93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
