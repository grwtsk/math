# isFundamentalDiscr_iff_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f910b55-2f4f-4010-7710-9643b4e9afbe",
  "kind": "theorem",
  "lexical_name": "isFundamentalDiscr_iff_squarefree",
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
  "slug": "isfundamentaldiscr-iff-squarefree--bb61a87dc277f47bb4c627f2",
  "source": {
    "blob": "0669118447f2d13c3296dcc21323ae0914c2aa1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb61a87dc277f47bb4c627f2d69adc92a1e5a04dcb131ab7c318b9d32465ca84",
  "verification": {
    "reference": "docs/verification/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f910b55-2f4f-4010-7710-9643b4e9afbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFundamentalDiscr_iff_squarefree :
    IsFundamentalDiscr D ↔
      (D % 4 = 1 ∧ Squarefree D) ∨
        (D % 4 = 0 ∧ Squarefree (D / 4) ∧ (D / 4 % 4 = 2 ∨ D / 4 % 4 = 3)) := by
  -- The two `have`s below are picked up from the context by the `grind` calls at the end.
  have {m} : Squarefree m ↔ ¬ 4 ∣ m ∧ ∀ p : ℕ, p.Prime → Odd p → ¬ (p : ℤ) ^ 2 ∣ m := by
    rw [squarefree_iff_prime_sq_not_dvd, Nat.forall_prime_iff_two_and_odd]
    simp
  have {m p : ℤ} (hp : Odd p) : p ^ 2 ∣ 4 * m ↔ p ^ 2 ∣ m := by
    rw [show (4 : ℤ) = 2 ^ 2 by norm_num]
    exact (IsCoprime.pow hp.isCoprime_two).dvd_mul_left_iff
  by_cases h : 4 ∣ D
  · obtain ⟨d, rfl⟩ := h
    simp +contextual only [Int.mul_ediv_cancel_left d four_ne_zero]
    grind [isFundamentalDiscr_def]
  · grind [isFundamentalDiscr_def]

/-- Prime-by-prime characterisation of fundamental discriminants, uniform in `p`. Unlike the
definition, which singles out `p = 2`, the second clause is the same for every prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0669118447f2d13c3296dcc21323ae0914c2aa1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
