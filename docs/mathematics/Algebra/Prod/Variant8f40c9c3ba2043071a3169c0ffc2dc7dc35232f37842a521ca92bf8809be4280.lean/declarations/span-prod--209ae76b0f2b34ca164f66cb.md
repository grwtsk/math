# span_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afa0e0c1703ebb29a751e144aa472a98fe94b4e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e11d8b5-ceb5-7afc-d6d3-684f57bb35fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eabe2e71-989c-17ca-8de5-124d07135e5a",
  "kind": "theorem",
  "lexical_name": "span_prod",
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
  "slug": "span-prod--209ae76b0f2b34ca164f66cb",
  "source": {
    "blob": "afa0e0c1703ebb29a751e144aa472a98fe94b4e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:209ae76b0f2b34ca164f66cbbe6450071f4befa4fe614e9afda80f8bfdd6b51b",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eabe2e71-989c-17ca-8de5-124d07135e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_prod {s : Set R} {t : Set S} (hst : s.Nonempty ↔ t.Nonempty) :
    span (s ×ˢ t) = prod (span s) (span t) := by
  simp_rw [iff_iff_and_or_not_and_not, Set.not_nonempty_iff_eq_empty] at hst
  obtain ⟨hs, ht⟩ | ⟨rfl, rfl⟩ := hst
  · conv_lhs => rw [Ideal.ideal_prod_eq (Ideal.span (s ×ˢ t))]
    congr 1
    · rw [Ideal.map_span]
      simp [Set.fst_image_prod _ ht]
    · rw [Ideal.map_span]
      simp [Set.snd_image_prod hs]
  · simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa0e0c1703ebb29a751e144aa472a98fe94b4e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
