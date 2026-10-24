# prod_le_hasProd_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33c7a42409953218c559973feeefd441eca9f5d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80cd96b2-616b-df74-b352-c7d70de99e8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98e8f978-779c-6db0-caf1-9425620450da",
  "kind": "theorem",
  "lexical_name": "prod_le_hasProd_of_nonneg",
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
  "slug": "prod-le-hasprod-of-nonneg--352707088bf02087f3cb2db1",
  "source": {
    "blob": "33c7a42409953218c559973feeefd441eca9f5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 254,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:352707088bf02087f3cb2db1fecb5b1dbbc67f690a03519bb782282b7d2052ed",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98e8f978-779c-6db0-caf1-9425620450da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_le_hasProd_of_nonneg [L.NeBot] [L.LeAtTop] {f : ι → α} {a : α} {s : Finset ι}
    (hnonneg : ∀ i ∈ s, 0 ≤ f i) (hs : ∀ i ∉ s, 1 ≤ f i) (hf : HasProd f a L) :
    ∏ i ∈ s, f i ≤ a := by
  refine ge_of_tendsto hf <| .filter_mono L.le_atTop <| eventually_atTop.2 ?_
  exact ⟨s, fun _ hst ↦ prod_le_prod_of_subset_of_one_le₀ hst hnonneg (fun i _ ↦ hs i)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33c7a42409953218c559973feeefd441eca9f5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
