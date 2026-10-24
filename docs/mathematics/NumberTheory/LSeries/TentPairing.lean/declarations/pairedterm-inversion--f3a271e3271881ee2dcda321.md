# pairedTerm_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0712006-1d29-6d1c-53d0-d1fc928023e4",
  "kind": "theorem",
  "lexical_name": "pairedTerm_inversion",
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
  "slug": "pairedterm-inversion--f3a271e3271881ee2dcda321",
  "source": {
    "blob": "bbe6da4cbeae87d6e80c6672d17df8f56dc30627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 88,
    "path": "GRWTSK/NumberTheory/LSeries/TentPairing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3a271e3271881ee2dcda32158908ab9c85d7f018e829794af5543068eaca323",
  "verification": {
    "reference": "docs/verification/NumberTheory/LSeries/TentPairing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0712006-1d29-6d1c-53d0-d1fc928023e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTerm_inversion (f : ℕ → ℂ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (m : ℕ) :
    ((1 / (2 * Real.pi) : ℝ) : ℂ) * (∫ t : ℝ, pairedTerm f x h m t) =
      f m * (tent x h (m : ℝ) : ℂ) := by
  by_cases hm : m = 0
  · subst m
    have hw := tent_eq_zero_of_outside x h 0 hh (by intro ht; linarith [ht.1])
    simp [pairedTerm, hw]
  have hmR : 0 < (m : ℝ) := Nat.cast_pos.mpr (Nat.pos_of_ne_zero hm)
  have heq : pairedTerm f x h m = fun t : ℝ =>
      f m * ((m : ℂ) ^ (-rightLine t) * tentKernel x h (rightLine t)) := by
    funext t
    simp only [pairedTerm, _root_.LSeries.term_of_ne_zero hm,
      Complex.cpow_neg, div_eq_mul_inv, mul_assoc]
  rw [heq, integral_const_mul]
  calc
    _ = f m * (((1 / (2 * Real.pi) : ℝ) : ℂ) *
      ∫ t : ℝ, (m : ℂ) ^ (-rightLine t) * tentKernel x h (rightLine t)) := by ring
    _ = _ := by
      simpa using congrArg (fun v : ℂ => f m * v) (rightLine_inversion x h (m : ℝ) hh ha hmR)

/-- The complete absolutely convergent Dirichlet series may be integrated term by term.
No residue inventory, truncation limit or sum-integral equality is a hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/LSeries/TentPairing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LSeries/TentPairing.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe6da4cbeae87d6e80c6672d17df8f56dc30627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
