# weightedDivisors_largest_prime_ledger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf38d5a2-b1c7-6be0-6e10-ae3c7e981f30",
  "kind": "theorem",
  "lexical_name": "weightedDivisors_largest_prime_ledger",
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
  "slug": "weighteddivisors-largest-prime-ledger--ccbadac0f8fb8146edaccb4a",
  "source": {
    "blob": "f86fdbf2f0d7b22ce8ce979fd1a6bf9144b013c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccbadac0f8fb8146edaccb4acbd84fc1086bf52036f3b5593052e4ea69da2827",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf38d5a2-b1c7-6be0-6e10-ae3c7e981f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedDivisors_largest_prime_ledger (P : Finset ℕ) (U : ℕ) (f : ℕ → ℝ)
    (hU : 1 ≤ U) (hP : ∀ r ∈ P, r.Prime) :
    weightedDivisors P U f = f 1 -
      ∑ p ∈ P, weightedDivisors (P.filter (· < p)) (U / p) (fun e => f (p * e)) := by
  classical
  induction P using Finset.induction_on_max with
  | empty => simp [weightedDivisors, primeDivisors, Finset.filter_singleton, hU]
  | @insert p P hpmax ih =>
    have hpP : p ∉ P := by
      intro hp
      exact (hpmax p hp).false
    have hpp : p.Prime := hP p (Finset.mem_insert_self p P)
    have hP' : ∀ r ∈ P, r.Prime := fun r hr => hP r (Finset.mem_insert_of_mem hr)
    rw [weightedDivisors_insert P U p f hP' hpp hpP,
      Finset.sum_insert hpP, ih hP']
    have hnew : (insert p P).filter (· < p) = P := by
      ext r
      simp only [Finset.mem_filter, Finset.mem_insert]
      constructor
      · rintro ⟨rfl | hr, hlt⟩
        · exact (lt_irrefl _ hlt).elim
        · exact hr
      · intro hr
        exact ⟨Or.inr hr, hpmax r hr⟩
    have hold (r : ℕ) (hr : r ∈ P) : (insert p P).filter (· < r) = P.filter (· < r) := by
      ext e
      simp only [Finset.mem_filter, Finset.mem_insert]
      constructor
      · rintro ⟨rfl | he, hlt⟩
        · exact ((hpmax r hr).asymm hlt).elim
        · exact ⟨he, hlt⟩
      · rintro ⟨he, hlt⟩
        exact ⟨Or.inr he, hlt⟩
    rw [hnew]
    have hs : (∑ r ∈ P, weightedDivisors ((insert p P).filter (· < r))
        (U / r) (fun e => f (r * e))) =
        ∑ r ∈ P, weightedDivisors (P.filter (· < r)) (U / r) (fun e => f (r * e)) :=
      Finset.sum_congr rfl (fun r hr => by rw [hold r hr])
    rw [hs]
    ring

/-- Alignment uses the existing independently defined counterterm at every disclosed divisor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f86fdbf2f0d7b22ce8ce979fd1a6bf9144b013c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
