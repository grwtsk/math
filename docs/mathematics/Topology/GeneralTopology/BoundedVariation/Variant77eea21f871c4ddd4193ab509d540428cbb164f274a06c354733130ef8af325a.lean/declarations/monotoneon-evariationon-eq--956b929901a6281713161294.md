# MonotoneOn.eVariationOn_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f1961e3-5fd7-5aaf-ee62-01b91fdaef45",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.eVariationOn_eq",
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
  "slug": "monotoneon-evariationon-eq--956b929901a6281713161294",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1201,
    "line": 1178,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:956b929901a628171316129436f0f79b2d7ac78f40b2b4c7c8eab7a6331e776a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f1961e3-5fd7-5aaf-ee62-01b91fdaef45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1178–1201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.eVariationOn_eq (hf : MonotoneOn f s) (as : a ∈ s) (bs : b ∈ s) :
    eVariationOn f (s ∩ Icc a b) = .ofReal (f b - f a) := by
  rcases le_or_gt a b with hab | hab
  · have hle : eVariationOn f (s ∩ Icc a b) ≤ .ofReal (f b - f a) := by
      apply iSup_le _
      rintro ⟨n, ⟨u, hu, us⟩⟩
      calc
        _ = ∑ i ∈ range n, .ofReal (f (u (i + 1)) - f (u i)) := by
          refine sum_congr rfl fun i hi => ?_
          simp only [Finset.mem_range] at hi
          rw [edist_dist, Real.dist_eq, abs_of_nonneg]
          exact sub_nonneg_of_le (hf (us i).1 (us (i + 1)).1 (hu (Nat.le_succ _)))
        _ = .ofReal (∑ i ∈ range n, (f (u (i + 1)) - f (u i))) := by
          rw [ofReal_sum_of_nonneg]
          exact fun i _ ↦ sub_nonneg_of_le (hf (us i).1 (us (i + 1)).1 (hu (Nat.le_succ _)))
        _ = .ofReal (f (u n) - f (u 0)) := by rw [sum_range_sub (f <| u ·)]
        _ ≤ _ :=
          ofReal_le_ofReal (sub_le_sub (hf (us n).1 bs (us n).2.2) (hf as (us 0).1 (us 0).2.1))
    have h : BoundedVariationOn f (s ∩ Icc a b) := (hle.trans_lt ofReal_lt_top).ne
    apply eq_of_le_of_ge hle (ofReal_le_of_le_toReal _)
    grw [← h.dist_le (x := a) (y := b)] <;> grind [Real.dist_eq]
  · simp [hab, hf bs as hab.le]

@[deprecated MonotoneOn.eVariationOn_eq (since := "2026-07-08")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L1178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
