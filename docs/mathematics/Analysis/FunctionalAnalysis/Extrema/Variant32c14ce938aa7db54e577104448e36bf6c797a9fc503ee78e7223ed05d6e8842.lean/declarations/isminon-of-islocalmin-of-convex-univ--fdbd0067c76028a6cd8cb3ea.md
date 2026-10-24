# IsMinOn.of_isLocalMin_of_convex_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7251e406a78734c4590711d74a4dacbcfd2aa8f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:820bdedc-e537-d0cc-759c-900c0304a201",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16595017-b095-d09c-315c-72e2dcd5989f",
  "kind": "theorem",
  "lexical_name": "IsMinOn.of_isLocalMin_of_convex_univ",
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
  "slug": "isminon-of-islocalmin-of-convex-univ--fdbd0067c76028a6cd8cb3ea",
  "source": {
    "blob": "7251e406a78734c4590711d74a4dacbcfd2aa8f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 78,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdbd0067c76028a6cd8cb3eaff138f1f05a041a708b0435aa13fbee7574656d1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16595017-b095-d09c-315c-72e2dcd5989f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMinOn.of_isLocalMin_of_convex_univ {f : E → β} {a : E} (h_local_min : IsLocalMin f a)
    (h_conv : ConvexOn ℝ univ f) : ∀ x, f a ≤ f x := fun x =>
  (IsMinOn.of_isLocalMinOn_of_convexOn (mem_univ a) (h_local_min.on univ) h_conv) (mem_univ x)
#align is_min_on.of_is_local_min_of_convex_univ IsMinOn.of_isLocalMin_of_convex_univ

/-- A local maximum of a concave function is a global maximum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7251e406a78734c4590711d74a4dacbcfd2aa8f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
