# goldbachIntegerExponentialKernel_conj_eq_phase_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45b77ea2-1391-f491-e63a-dfbb4d815ab3",
  "kind": "theorem",
  "lexical_name": "goldbachIntegerExponentialKernel_conj_eq_phase_mul",
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
  "slug": "goldbachintegerexponentialkernel-conj-eq-phase-mul--c1f5d0cec34063b5e87a4fdc",
  "source": {
    "blob": "f97b459674f6857693fdd2f0fa1e4c5b736da17b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 269,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1f5d0cec34063b5e87a4fdc1720ca954a37662f359f5f3b42c409a7ec446038",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45b77ea2-1391-f491-e63a-dfbb4d815ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachIntegerExponentialKernel_conj_eq_phase_mul
    (N : ℕ) (β : ℝ) :
    conj (goldbachIntegerExponentialKernel N β) =
      unitCharacter (-(N : ℤ)) β *
        goldbachIntegerExponentialKernel N β := by
  unfold goldbachIntegerExponentialKernel
  calc
    conj
        (∑ n ∈ Finset.range (N + 1),
          unitCharacter (n : ℤ) β) =
      ∑ n ∈ Finset.range (N + 1),
        unitCharacter (-(n : ℤ)) β := by
          simp [unitCharacter_neg_conj]
    _ =
      ∑ n ∈ Finset.range (N + 1),
        unitCharacter (-((N - n : ℕ) : ℤ)) β := by
          simpa using (Finset.sum_range_reflect
            (fun n => unitCharacter (-(n : ℤ)) β) (N + 1)).symm
    _ =
      ∑ n ∈ Finset.range (N + 1),
        unitCharacter (-(N : ℤ)) β *
          unitCharacter (n : ℤ) β := by
          apply Finset.sum_congr rfl
          intro n hn
          have hnN : n ≤ N := Nat.le_of_lt_succ (Finset.mem_range.mp hn)
          rw [← unitCharacter_add]
          congr 2
          omega
    _ =
      unitCharacter (-(N : ℤ)) β *
        ∑ n ∈ Finset.range (N + 1),
          unitCharacter (n : ℤ) β := by
            rw [Finset.mul_sum]

/-- The unnormalised Fejér kernel attached to the complete integer sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerKernel.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f97b459674f6857693fdd2f0fa1e4c5b736da17b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
