# _root_.absolutelyContinuousOnInterval_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43cfa13281fe2e2c62f9f6d28aaed6ebffafd415",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:840e175a-a671-18c2-c6d0-c8a11f3fe24d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d5c453b-1dd2-1704-6610-0e3f17861331",
  "kind": "theorem",
  "lexical_name": "_root_.absolutelyContinuousOnInterval_iff",
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
  "slug": "root-absolutelycontinuousoninterval-iff--0b2a6bd31f36150d49c7081e",
  "source": {
    "blob": "43cfa13281fe2e2c62f9f6d28aaed6ebffafd415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b2a6bd31f36150d49c7081e2ca08ff4d6b57a0978020b9ffc23677f62998ee6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d5c453b-1dd2-1704-6610-0e3f17861331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.absolutelyContinuousOnInterval_iff (f : ℝ → X) (a b : ℝ) :
    AbsolutelyContinuousOnInterval f a b ↔
    ∀ ε > (0 : ℝ), ∃ δ > (0 : ℝ), ∀ E, E ∈ disjWithin a b →
    ∑ i ∈ Finset.range E.1, dist (E.2 i).1 (E.2 i).2 < δ →
    ∑ i ∈ Finset.range E.1, dist (f (E.2 i).1) (f (E.2 i).2) < ε := by
  simp [AbsolutelyContinuousOnInterval, Metric.tendsto_nhds,
    Filter.HasBasis.eventually_iff (hasBasis_totalLengthFilter.inf_principal _),
    imp.swap, abs_of_nonneg (Finset.sum_nonneg (fun _ _ ↦ dist_nonneg))]

variable {f g : ℝ → X} {a b c d : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43cfa13281fe2e2c62f9f6d28aaed6ebffafd415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
