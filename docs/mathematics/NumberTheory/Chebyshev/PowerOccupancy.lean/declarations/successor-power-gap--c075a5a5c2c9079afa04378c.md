# successor_power_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cbd3c9e-ec98-09ea-4591-e0c584a293f9",
  "kind": "theorem",
  "lexical_name": "successor_power_gap",
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
  "slug": "successor-power-gap--c075a5a5c2c9079afa04378c",
  "source": {
    "blob": "95e7281beff83923aeb18c63b214979729281e5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 23,
    "path": "GRWTSK/NumberTheory/Chebyshev/PowerOccupancy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c075a5a5c2c9079afa04378cf0ebf4613cdce164b33e369e15e7be1d55584faa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/PowerOccupancy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cbd3c9e-ec98-09ea-4591-e0c584a293f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem successor_power_gap (p j : ℕ) :
    p ^ (j + 2) + 2 * p ^ (j + 1) + 1 ≤ (p + 1) ^ (j + 2) := by
  induction j with
  | zero => simp only [zero_add, pow_one]; nlinarith
  | succ j ih =>
    calc
      p ^ (j.succ + 2) + 2 * p ^ (j.succ + 1) + 1 ≤
          (p ^ (j.succ + 2) + 2 * p ^ (j.succ + 1) + 1) +
            (p ^ (j + 2) + 2 * p ^ (j + 1) + p) := Nat.le_add_right _ _
      _ = (p ^ (j + 2) + 2 * p ^ (j + 1) + 1) * (p + 1) := by
        simp only [Nat.succ_eq_add_one, pow_succ]
        ring
      _ ≤ (p + 1) ^ (j + 2) * (p + 1) :=
        mul_le_mul_of_nonneg_right ih (Nat.zero_le _)
      _ = (p + 1) ^ (j.succ + 2) := by
        exact (pow_succ (p + 1) (j + 2)).symm

/-- The next integer base lies strictly beyond the current square interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/PowerOccupancy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/PowerOccupancy.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95e7281beff83923aeb18c63b214979729281e5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
