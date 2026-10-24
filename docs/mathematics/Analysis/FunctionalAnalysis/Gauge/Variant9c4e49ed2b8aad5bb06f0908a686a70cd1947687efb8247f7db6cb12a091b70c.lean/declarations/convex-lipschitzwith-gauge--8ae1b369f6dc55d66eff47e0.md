# Convex.lipschitzWith_gauge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fc9e7888a61101780115dcb6ddbde21e125e1bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 584,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0eb29f5-8625-3a84-d408-ed094cdcc3c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e28e0ebc-f556-22f2-4455-0a20b43cda0e",
  "kind": "theorem",
  "lexical_name": "Convex.lipschitzWith_gauge",
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
  "slug": "convex-lipschitzwith-gauge--8ae1b369f6dc55d66eff47e0",
  "source": {
    "blob": "5fc9e7888a61101780115dcb6ddbde21e125e1bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 584,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ae1b369f6dc55d66eff47e0b6cee9beb201f7a0096888d120bb3c907548ecc8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e28e0ebc-f556-22f2-4455-0a20b43cda0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.lipschitzWith_gauge {r : ℝ≥0} (hc : Convex ℝ s) (hr : 0 < r)
    (hs : Metric.ball (0 : E) r ⊆ s) : LipschitzWith r⁻¹ (gauge s) :=
  have : Absorbent ℝ (Metric.ball (0 : E) r) := absorbent_ball_zero hr
  LipschitzWith.of_le_add_mul _ fun x y =>
    calc
      gauge s x = gauge s (y + (x - y)) := by simp
      _ ≤ gauge s y + gauge s (x - y) := gauge_add_le hc (this.subset hs) _ _
      _ ≤ gauge s y + ‖x - y‖ / r :=
        add_le_add_left ((gauge_mono this hs (x - y)).trans_eq (gauge_ball hr.le _)) _
      _ = gauge s y + r⁻¹ * dist x y := by rw [dist_eq_norm, div_eq_inv_mul, NNReal.coe_inv]
#align convex.lipschitz_with_gauge Convex.lipschitzWith_gauge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc9e7888a61101780115dcb6ddbde21e125e1bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
