# rectangleDivisor_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cb1080eb7bde37b10ffa28db83334b75d7c2941",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afe244bd-cf3b-f725-306c-52b06ac10dc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5033fec6-6066-bf93-b068-af5c1898265c",
  "kind": "theorem",
  "lexical_name": "rectangleDivisor_apply",
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
  "slug": "rectangledivisor-apply--e1cffe2ceb61a9831cf3629a",
  "source": {
    "blob": "8cb1080eb7bde37b10ffa28db83334b75d7c2941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1cffe2ceb61a9831cf3629a593314fd8a03ba248d402f5fbaa382cd86cffa34",
  "verification": {
    "reference": "docs/verification/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5033fec6-6066-bf93-b068-af5c1898265c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleDivisor_apply
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    (hs : s ∈ closedRectangle z w) :
    rectangleDivisor f z w s = (meromorphicOrderAt f s).untop₀ := by
  exact MeromorphicOn.divisor_apply hf hs

/-- A compact rectangle meets the zero/pole divisor in only finitely many
points. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb1080eb7bde37b10ffa28db83334b75d7c2941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
