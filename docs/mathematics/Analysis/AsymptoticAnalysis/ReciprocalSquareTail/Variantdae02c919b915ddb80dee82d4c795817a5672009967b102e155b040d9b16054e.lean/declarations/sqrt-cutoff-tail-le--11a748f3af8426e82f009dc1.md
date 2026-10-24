# sqrt_cutoff_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed6bc44b-3106-3898-d4d0-a2c3763c8c26",
  "kind": "theorem",
  "lexical_name": "sqrt_cutoff_tail_le",
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
  "slug": "sqrt-cutoff-tail-le--11a748f3af8426e82f009dc1",
  "source": {
    "blob": "dcd6d90786a6f2ea47ee0829784ac2f361653204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 34,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11a748f3af8426e82f009dc11266c6383d37d028da199e1782418b7812976835",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed6bc44b-3106-3898-d4d0-a2c3763c8c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_cutoff_tail_le (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc (Nat.sqrt j) (Nat.sqrt G), 1 / (d : ℝ) ^ 2) ≤
      2 * Real.sqrt (j : ℝ) := by
  have hY : 1 ≤ Nat.sqrt j := (Nat.sqrt_pos.mpr (by omega : 0 < j))
  have hY0 : (0 : ℝ) < Nat.sqrt j := by exact_mod_cast (show 0 < Nat.sqrt j by omega)
  have hY1 : (1 : ℝ) ≤ Nat.sqrt j := by exact_mod_cast hY
  have hr : Real.sqrt (j : ℝ) ≤ 2 * (Nat.sqrt j : ℝ) := by
    have h := Real.real_sqrt_le_nat_sqrt_succ (a := j)
    linarith
  have hm := mul_le_mul_of_nonneg_left hr (Real.sqrt_nonneg (j : ℝ))
  have hs := Real.sq_sqrt (Nat.cast_nonneg j)
  calc
    _ ≤ (j : ℝ) * (1 / (Nat.sqrt j : ℝ)) :=
      mul_le_mul_of_nonneg_left
        (reciprocal_square_tail_le (Nat.sqrt j) (Nat.sqrt G) hY (Nat.sqrt_le_sqrt hjG))
        (Nat.cast_nonneg j)
    _ = (j : ℝ) / (Nat.sqrt j : ℝ) := by ring
    _ ≤ 2 * Real.sqrt (j : ℝ) := by
      apply (div_le_iff₀ hY0).mpr
      nlinarith

/-- The identical estimate stated with literal natural floors of the real square roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd6d90786a6f2ea47ee0829784ac2f361653204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
