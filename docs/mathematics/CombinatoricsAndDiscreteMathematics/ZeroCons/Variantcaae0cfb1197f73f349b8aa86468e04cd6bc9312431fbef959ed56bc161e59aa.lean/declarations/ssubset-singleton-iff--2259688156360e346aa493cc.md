# ssubset_singleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:173a4c90-3c50-b738-36e6-b3ef1081c449",
  "kind": "lemma",
  "lexical_name": "ssubset_singleton_iff",
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
  "slug": "ssubset-singleton-iff--2259688156360e346aa493cc",
  "source": {
    "blob": "e2ff38c3c0e6fb3ff6cb8cb25b5f6cffc5d28313",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 416,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantcaae0cfb1197f73f349b8aa86468e04cd6bc9312431fbef959ed56bc161e59aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2259688156360e346aa493ccb63578fd21772e5fc66cc07eefc9d95414aba8f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantcaae0cfb1197f73f349b8aa86468e04cd6bc9312431fbef959ed56bc161e59aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:173a4c90-3c50-b738-36e6-b3ef1081c449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma ssubset_singleton_iff : s ⊂ {a} ↔ s = 0 := by
  refine ⟨fun hs ↦ eq_zero_of_subset_zero fun b hb ↦ (hs.2 ?_).elim, ?_⟩
  · obtain rfl := mem_singleton.1 (hs.1 hb)
    rwa [singleton_subset]
  · rintro rfl
    simp

end

/-! ### Cardinality -/

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantcaae0cfb1197f73f349b8aa86468e04cd6bc9312431fbef959ed56bc161e59aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantcaae0cfb1197f73f349b8aa86468e04cd6bc9312431fbef959ed56bc161e59aa.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2ff38c3c0e6fb3ff6cb8cb25b5f6cffc5d28313` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
