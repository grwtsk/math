# commonDivisorWeightedMoment_eq_scaled_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:081ff6d8-c82d-7e41-5351-f8caaa0e433e",
  "kind": "theorem",
  "lexical_name": "commonDivisorWeightedMoment_eq_scaled_sum",
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
  "slug": "commondivisorweightedmoment-eq-scaled-sum--53bf984b5a8291fba4aeb8e1",
  "source": {
    "blob": "8fb1612f9ddd09b2b0c14f83b57718b23288b6e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53bf984b5a8291fba4aeb8e160b597f24e47f3a838cb2f35f41f7f00c5323a21",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:081ff6d8-c82d-7e41-5351-f8caaa0e433e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commonDivisorWeightedMoment_eq_scaled_sum {R : Type*} [Ring R]
    (N d : ℕ) (W : ℕ → ℕ → ℕ → R) (hd : 0 < d) :
    commonDivisorWeightedMoment N d W =
      ∑ p ∈ additivePairs (N / d),
        W (d * p.1) (d * p.2) (d * (p.1 + p.2)) := by
  classical
  unfold commonDivisorWeightedMoment
  rw [← Finset.sum_filter]
  symm
  refine Finset.sum_bij (fun p _ => (d * p.1, d * p.2)) ?_ ?_ ?_ ?_
  · intro p hp
    exact Finset.mem_filter.mpr ⟨(mem_additivePairs_scaled_iff hd).mpr hp,
      ⟨⟨p.1, rfl⟩, ⟨p.2, rfl⟩⟩⟩
  · intro p _ q _ hpq
    exact scaledPair_injective hd hpq
  · intro p hp
    obtain ⟨hp, ha, hb⟩ := Finset.mem_filter.mp hp
    obtain ⟨u, hu⟩ := ha
    obtain ⟨v, hv⟩ := hb
    have hpair : (d * u, d * v) = p := Prod.ext hu.symm hv.symm
    refine ⟨(u, v), (mem_additivePairs_scaled_iff hd).mp ?_, hpair⟩
    rw [hpair]
    exact hp
  · intro p _
    simp only [Nat.mul_add]

/-- Product weights specialize the exact sector reindexing, with the original
multiplication order retained in an arbitrary ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb1612f9ddd09b2b0c14f83b57718b23288b6e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
