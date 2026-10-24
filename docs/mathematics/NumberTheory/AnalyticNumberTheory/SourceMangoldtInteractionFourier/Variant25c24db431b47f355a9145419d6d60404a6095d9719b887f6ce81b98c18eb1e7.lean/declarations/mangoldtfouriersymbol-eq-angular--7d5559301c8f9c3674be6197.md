# mangoldtFourierSymbol_eq_angular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b2f6d4a5c841c52a8ed590e4a4d15b868f0550a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04bd050e-32dc-dea5-cbc5-1f9e8ae6ee0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:014aca51-a48d-4c72-b8fa-c6c3da0e3599",
  "kind": "theorem",
  "lexical_name": "mangoldtFourierSymbol_eq_angular",
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
  "slug": "mangoldtfouriersymbol-eq-angular--7d5559301c8f9c3674be6197",
  "source": {
    "blob": "1b2f6d4a5c841c52a8ed590e4a4d15b868f0550a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 259,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtInteractionFourier/Variant25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d5559301c8f9c3674be6197d2f9bcd20fcab9a6a5b260cb97d31512aabf4822",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtInteractionFourier/Variant25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:014aca51-a48d-4c72-b8fa-c6c3da0e3599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtFourierSymbol_eq_angular (A ξ : ℝ) :
    mangoldtFourierSymbol A ξ = mangoldtAngularSymbol A (-(2 * Real.pi) * ξ) := by
  unfold mangoldtFourierSymbol mangoldtAngularSymbol
  apply Finset.sum_congr rfl
  intro n _
  have he : -(2 * Real.pi) * ξ * Real.log n = -(2 * Real.pi * ξ * Real.log n) := by ring
  rw [he, Real.cos_neg]

/-- Exact angular source density is integrable; no scale-uniform arithmetic bound is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtInteractionFourier/Variant25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtInteractionFourier/Variant25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2f6d4a5c841c52a8ed590e4a4d15b868f0550a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
