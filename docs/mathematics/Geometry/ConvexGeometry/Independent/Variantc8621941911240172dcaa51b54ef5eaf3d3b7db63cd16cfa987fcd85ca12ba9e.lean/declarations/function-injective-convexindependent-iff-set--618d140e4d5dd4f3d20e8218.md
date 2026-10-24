# Function.Injective.convexIndependent_iff_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "987a227caa15f706e23c8adbda7c78a0a824acb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32cb927c-8973-ff1f-1d2c-59075ee365dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1841590-7a07-9010-8a6f-daee031449a5",
  "kind": "theorem",
  "lexical_name": "Function.Injective.convexIndependent_iff_set",
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
  "slug": "function-injective-convexindependent-iff-set--618d140e4d5dd4f3d20e8218",
  "source": {
    "blob": "987a227caa15f706e23c8adbda7c78a0a824acb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:618d140e4d5dd4f3d20e82186d426be9ade07b5ee90f2dc6d59c83fee0cec107",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1841590-7a07-9010-8a6f-daee031449a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Injective.convexIndependent_iff_set {p : ι → E} (hi : Function.Injective p) :
    ConvexIndependent 𝕜 ((↑) : Set.range p → E) ↔ ConvexIndependent 𝕜 p :=
  ⟨fun hc =>
    hc.comp_embedding
      (⟨fun i => ⟨p i, Set.mem_range_self _⟩, fun _ _ h => hi (Subtype.mk_eq_mk.1 h)⟩ :
        ι ↪ Set.range p),
    ConvexIndependent.range⟩

/-- If a family is convex independent, a point in the family is in the convex hull of some of the
points given by a subset of the index type if and only if the point's index is in this subset. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987a227caa15f706e23c8adbda7c78a0a824acb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
