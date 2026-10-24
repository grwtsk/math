# meromorphicOrderAt_ne_top_of_isPreconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e26856a812c459c1a98898931497116f1648d6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70a276c5-9b94-5873-d77f-54918d28b245",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11e2e479-bd19-e414-a716-e750f0088a16",
  "kind": "theorem",
  "lexical_name": "meromorphicOrderAt_ne_top_of_isPreconnected",
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
  "slug": "meromorphicorderat-ne-top-of-ispreconnected--fdf2edbe53878fdd5c152b36",
  "source": {
    "blob": "9e26856a812c459c1a98898931497116f1648d6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 663,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdf2edbe53878fdd5c152b365dde352bc3c97fbe4ca8e1b8f698bd6ea23fe50d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e2e479-bd19-e414-a716-e750f0088a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicOrderAt_ne_top_of_isPreconnected (hf : MeromorphicOn f U) {y : 𝕜}
    (hU : IsPreconnected U) (h₁x : x ∈ U) (hy : y ∈ U) (h₂x : meromorphicOrderAt f x ≠ ⊤) :
    meromorphicOrderAt f y ≠ ⊤ :=
  (hf.exists_meromorphicOrderAt_ne_top_iff_forall ⟨nonempty_of_mem h₁x, hU⟩).1
    (by use ⟨x, h₁x⟩) ⟨y, hy⟩

@[deprecated (since := "2025-04-27")]
alias order_ne_top_of_isPreconnected := meromorphicOrderAt_ne_top_of_isPreconnected

/-- If a function is meromorphic on a set `U`, then for each point in `U`, it is analytic at nearby
points in `U`. When the target space is complete, this can be strengthened to analyticity at all
nearby points, see `MeromorphicAt.eventually_analyticAt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e26856a812c459c1a98898931497116f1648d6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
