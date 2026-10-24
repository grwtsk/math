# primeTwo_log_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:183621f5-7cb8-9952-c6b8-61412b293378",
  "kind": "theorem",
  "lexical_name": "primeTwo_log_sum",
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
  "slug": "primetwo-log-sum--f61fd15fd4083205f74aea0f",
  "source": {
    "blob": "303de9690965476f743375042031b28375645ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 212,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f61fd15fd4083205f74aea0f31959b527dcffe861fcf76125d61babd30115e77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:183621f5-7cb8-9952-c6b8-61412b293378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primeTwo_log_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x,
      if p = 2 then Real.log (p : ℝ) else 0) =
      if 2 ≤ x then Real.log 2 else 0 := by
  rw [← Finset.sum_filter]
  by_cases hx : 2 ≤ x
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = {2} := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_singleton]
      constructor
      · exact fun h ↦ h.2
      · rintro rfl
        exact ⟨⟨hx, Nat.prime_two⟩, rfl⟩
    rw [hfilter]
    simp [hx]
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = ∅ := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.notMem_empty,
        iff_false]
      rintro ⟨⟨hpLe, _⟩, rfl⟩
      exact hx hpLe
    rw [hfilter]
    simp [hx]

/-- Exact weighted correction:
`θχ₃(x) = θ(x;6,1) - θ(x;6,5) - 1_{2≤x} log 2`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `303de9690965476f743375042031b28375645ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
