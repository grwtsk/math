# isRat_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f103d0cb89b551f3eeb03e5c2fe48e91e1f2bd62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb97bda8-f10a-b578-0b50-6d3a7e2b2298",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:968009df-a94a-3d3e-d4f5-358969cbeb65",
  "kind": "theorem",
  "lexical_name": "isRat_neg",
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
  "slug": "israt-neg--bd583de746a01bf34d8d8395",
  "source": {
    "blob": "f103d0cb89b551f3eeb03e5c2fe48e91e1f2bd62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 264,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd583de746a01bf34d8d8395e78359a64a51f7422830ac781fd94ee1bed41934",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:968009df-a94a-3d3e-d4f5-358969cbeb65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRat_neg {α} [Ring α] : ∀ {f : α → α} {a : α} {n n' : ℤ} {d : ℕ},
    f = Neg.neg → IsRat a n d → Int.neg n = n' → IsRat (-a) n' d
  | _, _, _, _, _, rfl, ⟨h, rfl⟩, rfl => ⟨h, by rw [← neg_mul, ← Int.cast_neg]; rfl⟩

/-- The `norm_num` extension which identifies expressions of the form `-a`,
such that `norm_num` successfully recognises `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant83f742d61f1f08cfaeeede77f0b05ff9dd3d8d89de0272e4f46436200412e13d.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f103d0cb89b551f3eeb03e5c2fe48e91e1f2bd62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
