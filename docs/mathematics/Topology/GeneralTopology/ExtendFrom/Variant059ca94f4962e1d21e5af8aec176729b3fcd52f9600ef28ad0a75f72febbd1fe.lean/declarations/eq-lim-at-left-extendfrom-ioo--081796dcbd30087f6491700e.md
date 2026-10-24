# eq_lim_at_left_extendFrom_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16384ccd-c4e2-04eb-3793-a69880d1ed3d",
  "kind": "theorem",
  "lexical_name": "eq_lim_at_left_extendFrom_Ioo",
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
  "slug": "eq-lim-at-left-extendfrom-ioo--081796dcbd30087f6491700e",
  "source": {
    "blob": "75f29794cf71ed9f226b0fdcd313559c2a142f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:081796dcbd30087f6491700e955db41c6e5a1d70ac010a829926ca3e9d5f0934",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16384ccd-c4e2-04eb-3793-a69880d1ed3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_lim_at_left_extendFrom_Ioo [TopologicalSpace α] [LinearOrder α] [DenselyOrdered α]
    [OrderTopology α] [TopologicalSpace β] [T2Space β] {f : α → β} {a b : α} {la : β} (hab : a < b)
    (ha : Tendsto f (𝓝[>] a) (𝓝 la)) : extendFrom (Ioo a b) f a = la := by
  apply extendFrom_eq
  · rw [closure_Ioo hab.ne]
    simp only [le_of_lt hab, left_mem_Icc, right_mem_Icc]
  · simpa [hab]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75f29794cf71ed9f226b0fdcd313559c2a142f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
