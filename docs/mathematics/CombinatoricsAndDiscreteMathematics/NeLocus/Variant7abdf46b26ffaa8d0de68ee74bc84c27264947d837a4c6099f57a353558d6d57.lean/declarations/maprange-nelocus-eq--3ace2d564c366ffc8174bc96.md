# mapRange_neLocus_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "153e2cf4293920b824d34b754b264c0054292aa9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d43490b9-995b-df23-758d-edb5ce95bdbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6970d7d2-225f-d230-b6f0-99d751feadfb",
  "kind": "theorem",
  "lexical_name": "mapRange_neLocus_eq",
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
  "slug": "maprange-nelocus-eq--3ace2d564c366ffc8174bc96",
  "source": {
    "blob": "153e2cf4293920b824d34b754b264c0054292aa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ace2d564c366ffc8174bc9696d9932d7b816e2adb779962898b7241d1933e3d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6970d7d2-225f-d230-b6f0-99d751feadfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapRange_neLocus_eq [∀ a, DecidableEq (N a)] [∀ a, DecidableEq (M a)] (f g : Π₀ a, N a)
    {F : ∀ a, N a → M a} (F0 : ∀ a, F a 0 = 0) (hF : ∀ a, Function.Injective (F a)) :
    (f.mapRange F F0).neLocus (g.mapRange F F0) = f.neLocus g := by
  ext a
  simpa only [mem_neLocus] using (hF a).ne_iff

end NeLocusAndMaps

variable [∀ a, DecidableEq (N a)]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `153e2cf4293920b824d34b754b264c0054292aa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
