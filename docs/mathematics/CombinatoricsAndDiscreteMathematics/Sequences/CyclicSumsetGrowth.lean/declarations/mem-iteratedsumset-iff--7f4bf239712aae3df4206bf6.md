# mem_iteratedSumset_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00038b8c-8aa3-4a7a-2bd7-95f460e3c095",
  "kind": "theorem",
  "lexical_name": "mem_iteratedSumset_iff",
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
  "slug": "mem-iteratedsumset-iff--7f4bf239712aae3df4206bf6",
  "source": {
    "blob": "d91298539e468bee096df87dea5a383af07b9940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 42,
    "path": "GRWTSK/Combinatorics/Sequences/CyclicSumsetGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f4bf239712aae3df4206bf68da39563eeaa4151abf6ad3dd3a354c1c495b98e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00038b8c-8aa3-4a7a-2bd7-95f460e3c095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iteratedSumset_iff (S : Finset A) (k : ℕ) (z : A) :
    z ∈ iteratedSumset S k ↔
      ∃ xs : List A, xs.length = k ∧ (∀ a ∈ xs, a ∈ S) ∧ xs.sum = z := by
  induction k generalizing z with
  | zero =>
    constructor
    · intro hz
      have hz' : z = 0 := Finset.mem_singleton.mp hz
      exact ⟨[], rfl, by simp, hz'.symm⟩
    · rintro ⟨xs, hlen, _, hsum⟩
      have hx : xs = [] := List.length_eq_zero_iff.mp hlen
      simp [hx] at hsum
      exact Finset.mem_singleton.mpr hsum.symm
  | succ k ih =>
    constructor
    · intro hz
      obtain ⟨a, ha, b, hb, hab⟩ := Finset.mem_add.mp hz
      obtain ⟨xs, hlen, hmem, hsum⟩ := (ih b).mp hb
      refine ⟨a :: xs, by simp [hlen], ?_, ?_⟩
      · intro x hx
        rcases List.mem_cons.mp hx with h | h
        · simpa [h] using ha
        · exact hmem x h
      · simpa [hsum] using hab
    · rintro ⟨xs, hlen, hmem, hsum⟩
      cases xs with
      | nil => simp at hlen
      | cons a xs =>
        have hlen' : xs.length = k := by simpa using hlen
        have ha : a ∈ S := hmem a (by simp)
        have hxs : ∀ b ∈ xs, b ∈ S := fun b hb => hmem b (by simp [hb])
        have hb : xs.sum ∈ iteratedSumset S k := (ih _).mpr ⟨xs, hlen', hxs, rfl⟩
        have hz := Finset.add_mem_add ha hb
        simpa only [List.sum_cons] using hsum ▸ hz

/-- The full Cauchy--Davenport iteration, including possible saturation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/CyclicSumsetGrowth.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d91298539e468bee096df87dea5a383af07b9940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
