# pullback_isNull_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7cc0638e1010e785c30994032c951de39be085a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0846344c-cbb7-c947-6a41-20ee3cf5fbdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b06f1d96-4566-f1b4-5668-5afd4ed7cc60",
  "kind": "theorem",
  "lexical_name": "pullback_isNull_iff",
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
  "slug": "pullback-isnull-iff--d099e31ca9b5e74e56753cba",
  "source": {
    "blob": "7cc0638e1010e785c30994032c951de39be085a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d099e31ca9b5e74e56753cba3c131087ef0deaf904b932028bc6b79d918261bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b06f1d96-4566-f1b4-5668-5afd4ed7cc60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_isNull_iff (G : PositiveForm V) (f : W →ₗ[ℝ] V) (x : W) :
    (G.pullback f).IsNull x ↔ G.IsNull (f x) :=
  Iff.rfl

/-- Sum two positive geometries on the same carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry/Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cc0638e1010e785c30994032c951de39be085a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
