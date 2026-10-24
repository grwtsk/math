# mfderiv_chartAt_eq_tangentCoordChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b2c940af734da490e5b0466367ebda12740626e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bd4a9d1-e840-05ca-f83d-d7a4f6c7b7d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8806900-531d-3b44-ef27-c8cbc7ea0d01",
  "kind": "lemma",
  "lexical_name": "mfderiv_chartAt_eq_tangentCoordChange",
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
  "slug": "mfderiv-chartat-eq-tangentcoordchange--cc842628d8a40758847991ba",
  "source": {
    "blob": "4b2c940af734da490e5b0466367ebda12740626e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc842628d8a40758847991ba5b1436338c6b4d33a2055ef08f7fd25b415d2484",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8806900-531d-3b44-ef27-c8cbc7ea0d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mfderiv_chartAt_eq_tangentCoordChange {x y : M} (hsrc : x ∈ (chartAt H y).source) :
    mfderiv% (chartAt H y) x = tangentCoordChange I x y x := by
  have := mdifferentiableAt_atlas (I := I) (ChartedSpace.chart_mem_atlas _) hsrc
  simp [mfderiv, ite_eq_left this, Function.comp_assoc]
  rfl

/-- The preimage under the projection from the tangent bundle of a set with unique differential in
the basis also has unique differential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2c940af734da490e5b0466367ebda12740626e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
