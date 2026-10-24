# ConcaveOn.le_map_set_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af6686e8f86c65db07d1f835d740d75ed8a26924",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbe16fa6-c87c-af1b-d232-bf9457332a39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c1f8024-0406-8865-bafd-653266807a7f",
  "kind": "theorem",
  "lexical_name": "ConcaveOn.le_map_set_average",
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
  "slug": "concaveon-le-map-set-average--8815b7b158c11105a2b3af4a",
  "source": {
    "blob": "af6686e8f86c65db07d1f835d740d75ed8a26924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 186,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8815b7b158c11105a2b3af4adfeee353907e75c67efdabda4a5e0b7e8d26f7fd",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c1f8024-0406-8865-bafd-653266807a7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConcaveOn.le_map_set_average (hg : ConcaveOn ℝ s g) (hgc : ContinuousOn g s)
    (hsc : IsClosed s) (h0 : μ t ≠ 0) (ht : μ t ≠ ∞) (hfs : ∀ᵐ x ∂μ.restrict t, f x ∈ s)
    (hfi : IntegrableOn f t μ) (hgi : IntegrableOn (g ∘ f) t μ) :
    (⨍ x in t, g (f x) ∂μ) ≤ g (⨍ x in t, f x ∂μ) :=
  (hg.set_average_mem_hypograph hgc hsc h0 ht hfs hfi hgi).2

/-- **Jensen's inequality**: if a function `g : E → ℝ` is convex and continuous on a convex closed
set `s`, `μ` is a probability measure on `α`, and `f : α → E` is a function sending `μ`-a.e.  points
to `s`, then the value of `g` at the expected value of `f` is less than or equal to the expected
value of `g ∘ f` provided that both `f` and `g ∘ f` are integrable. See also
`ConvexOn.map_centerMass_le` for a finite sum version of this lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af6686e8f86c65db07d1f835d740d75ed8a26924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
