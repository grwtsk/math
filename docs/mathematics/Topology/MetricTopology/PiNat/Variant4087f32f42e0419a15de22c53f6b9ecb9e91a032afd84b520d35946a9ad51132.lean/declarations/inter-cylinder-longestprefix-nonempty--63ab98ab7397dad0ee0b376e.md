# inter_cylinder_longestPrefix_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a556b0f5-0365-3dba-9fe3-151e8d6524db",
  "kind": "theorem",
  "lexical_name": "inter_cylinder_longestPrefix_nonempty",
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
  "slug": "inter-cylinder-longestprefix-nonempty--63ab98ab7397dad0ee0b376e",
  "source": {
    "blob": "44c5d988f5a1019f59a0fed5fbd348c5bef91c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 505,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63ab98ab7397dad0ee0b376e1c87cdbd9bff5352f6230b5fd1f331e0e9ad6132",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a556b0f5-0365-3dba-9fe3-151e8d6524db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inter_cylinder_longestPrefix_nonempty {s : Set (∀ n, E n)} (hs : IsClosed s)
    (hne : s.Nonempty) (x : ∀ n, E n) : (s ∩ cylinder x (longestPrefix x s)).Nonempty := by
  by_cases hx : x ∈ s
  · exact ⟨x, hx, self_mem_cylinder _ _⟩
  have A := exists_disjoint_cylinder hs hx
  have B : longestPrefix x s < shortestPrefixDiff x s :=
    Nat.pred_lt (shortestPrefixDiff_pos hs hne hx).ne'
  rw [longestPrefix, shortestPrefixDiff, dif_pos A] at B ⊢
  classical
  obtain ⟨y, ys, hy⟩ : ∃ y : ∀ n : ℕ, E n, y ∈ s ∧ x ∈ cylinder y (Nat.find A - 1) := by
    simpa only [not_disjoint_iff, mem_cylinder_comm] using Nat.find_min A B
  refine ⟨y, ys, ?_⟩
  rw [mem_cylinder_iff_eq] at hy ⊢
  rw [hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c5d988f5a1019f59a0fed5fbd348c5bef91c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
