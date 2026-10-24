# ncard_le_finsum_mult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:000451d8-8cc6-5b84-4c34-2892b2ea9be8",
  "kind": "lemma",
  "lexical_name": "ncard_le_finsum_mult",
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
  "slug": "ncard-le-finsum-mult--a829c3e2c9152c3f71803cd9",
  "source": {
    "blob": "757d09beef98a1741d44bde59ff1248c5f4a3b47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant366f26c9d50d6fb58a4b673fe7006af0136bfaf98f9a29f5dda8a39d6e4b5a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a829c3e2c9152c3f71803cd9ff5066b19cebeffeae3bb0f8dc177b82e08c3082",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant366f26c9d50d6fb58a4b673fe7006af0136bfaf98f9a29f5dda8a39d6e4b5a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:000451d8-8cc6-5b84-4c34-2892b2ea9be8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ncard_le_finsum_mult {s : Set ℂ} (hs : s ⊆ Z.window T₁ T₂) :
    s.ncard ≤ ∑ᶠ ρ ∈ s, Z.mult ρ := by
  have hfin : s.Finite := (Z.window_finite T₁ T₂).subset hs
  rw [Set.ncard_eq_toFinset_card s hfin, finsum_mem_eq_finite_toFinset_sum _ hfin,
    Finset.card_eq_sum_ones]
  apply Finset.sum_le_sum
  intro ρ hρ
  exact Z.one_le_mult ρ (Z.window_subset_carrier T₁ T₂ (hs (hfin.mem_toFinset.mp hρ)))

/-- Monotonicity of Σ m_ρ over finite subsets of a window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant366f26c9d50d6fb58a4b673fe7006af0136bfaf98f9a29f5dda8a39d6e4b5a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant366f26c9d50d6fb58a4b673fe7006af0136bfaf98f9a29f5dda8a39d6e4b5a03.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `757d09beef98a1741d44bde59ff1248c5f4a3b47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
