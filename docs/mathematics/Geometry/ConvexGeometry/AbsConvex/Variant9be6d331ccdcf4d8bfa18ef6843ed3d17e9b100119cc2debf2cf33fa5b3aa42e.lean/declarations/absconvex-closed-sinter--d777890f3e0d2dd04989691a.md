# absConvex_closed_sInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d74a6ea41957e30db1e11d1b98604b25f5a3589b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9271823-ddc0-e693-63cd-ecd513c6598c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0f593cc-6711-80bf-1eef-a71fdcc88da3",
  "kind": "theorem",
  "lexical_name": "absConvex_closed_sInter",
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
  "slug": "absconvex-closed-sinter--d777890f3e0d2dd04989691a",
  "source": {
    "blob": "d74a6ea41957e30db1e11d1b98604b25f5a3589b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 150,
    "path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d777890f3e0d2dd04989691a457079cfece02b2db09e776a5c76ebb845f0a423",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0f593cc-6711-80bf-1eef-a71fdcc88da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absConvex_closed_sInter {S : Set (Set E)} (h : ∀ s ∈ S, AbsConvex 𝕜 s ∧ IsClosed s) :
    AbsConvex 𝕜 (⋂₀ S) ∧ IsClosed (⋂₀ S) :=
  ⟨AbsConvex.sInter (fun s hs => (h s hs).1), isClosed_sInter fun _ hs => (h _ hs).2⟩

variable (𝕜) in
/-- The absolutely convex closed hull of a set `s` is the minimal absolutely convex closed set that
includes `s`. -/
@[simps! isClosed]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74a6ea41957e30db1e11d1b98604b25f5a3589b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
