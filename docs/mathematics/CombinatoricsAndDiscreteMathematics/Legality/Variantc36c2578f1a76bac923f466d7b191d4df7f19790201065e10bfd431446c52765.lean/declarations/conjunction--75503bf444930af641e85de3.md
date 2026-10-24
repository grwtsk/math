# conjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bbc632f0085e14db7d08570b5c505c997484df0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36f05760-f31c-4998-bf5a-ed3d4e8c44ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81172721-5f5c-e032-1142-f47fdda5d66a",
  "kind": "theorem",
  "lexical_name": "conjunction",
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
  "slug": "conjunction--75503bf444930af641e85de3",
  "source": {
    "blob": "3bbc632f0085e14db7d08570b5c505c997484df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Legality/Variantc36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75503bf444930af641e85de301d07a9c9de72faa04b28bc8b12704c2ac6e2573",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Legality/Variantc36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81172721-5f5c-e032-1142-f47fdda5d66a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjunction (h : TerrainMoveLegality move) :
    h.exactGlobalLocus ∧
    h.adjacencyCompliant ∧
    h.boundaryCompliant ∧
    h.obstacleCompliant ∧
    h.capacityCompliant ∧
    h.conservative ∧
    h.globalRulesetCompatible :=
  ⟨h.exactGlobalLocus_proof,
   h.adjacencyCompliant_proof,
   h.boundaryCompliant_proof,
   h.obstacleCompliant_proof,
   h.capacityCompliant_proof,
   h.conservative_proof,
   h.globalRulesetCompatible_proof⟩

end TerrainMoveLegality

/-- A move admitted to terrain-local algorithms, paired with its certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Legality/Variantc36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Legality/Variantc36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bbc632f0085e14db7d08570b5c505c997484df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
