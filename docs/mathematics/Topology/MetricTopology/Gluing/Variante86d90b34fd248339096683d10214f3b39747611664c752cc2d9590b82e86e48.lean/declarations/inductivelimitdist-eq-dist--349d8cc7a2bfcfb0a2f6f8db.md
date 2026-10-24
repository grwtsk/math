# inductiveLimitDist_eq_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c6f3f6e-8df5-f57f-febd-077432dd5cff",
  "kind": "theorem",
  "lexical_name": "inductiveLimitDist_eq_dist",
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
  "slug": "inductivelimitdist-eq-dist--349d8cc7a2bfcfb0a2f6f8db",
  "source": {
    "blob": "8df2793c74dfe8c10bfddab6d9d775ee303e5ee2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 538,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:349d8cc7a2bfcfb0a2f6f8db762e87ec8da7bbaabbd964e7c520c3b27be432e0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c6f3f6e-8df5-f57f-febd-077432dd5cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inductiveLimitDist_eq_dist (I : ∀ n, Isometry (f n)) (x y : Σ n, X n) :
    ∀ m (hx : x.1 ≤ m) (hy : y.1 ≤ m), inductiveLimitDist f x y =
      dist (leRecOn hx (f _) x.2 : X m) (leRecOn hy (f _) y.2 : X m)
  | 0, hx, hy => by
    obtain ⟨i, x⟩ := x; obtain ⟨j, y⟩ := y
    obtain rfl : i = 0 := nonpos_iff_eq_zero.1 hx
    obtain rfl : j = 0 := nonpos_iff_eq_zero.1 hy
    rfl
  | (m + 1), hx, hy => by
    by_cases h : max x.1 y.1 = (m + 1)
    · generalize m + 1 = m' at *
      subst m'
      rfl
    · have : max x.1 y.1 ≤ succ m := by simp [hx, hy]
      have : max x.1 y.1 ≤ m := by simpa [h] using of_le_succ this
      have xm : x.1 ≤ m := le_trans (le_max_left _ _) this
      have ym : y.1 ≤ m := le_trans (le_max_right _ _) this
      rw [leRecOn_succ xm, leRecOn_succ ym, (I m).dist_eq]
      exact inductiveLimitDist_eq_dist I x y m xm ym

/-- Premetric space structure on `Σ n, X n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df2793c74dfe8c10bfddab6d9d775ee303e5ee2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
