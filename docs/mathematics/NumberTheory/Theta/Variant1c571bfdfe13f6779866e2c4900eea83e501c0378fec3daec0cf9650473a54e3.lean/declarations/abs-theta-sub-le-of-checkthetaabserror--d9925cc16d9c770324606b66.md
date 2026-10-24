# abs_theta_sub_le_of_checkThetaAbsError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6089fdc1-23d2-458c-b450-24ee45a26a71",
  "kind": "theorem",
  "lexical_name": "abs_theta_sub_le_of_checkThetaAbsError",
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
  "slug": "abs-theta-sub-le-of-checkthetaabserror--d9925cc16d9c770324606b66",
  "source": {
    "blob": "f8fc81ae9f509248c72474b0c860dbc05c8b3907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 157,
    "path": "GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9925cc16d9c770324606b667d34259f578c7dcb34c58d7b61d3e4ae174d4292",
  "verification": {
    "reference": "docs/verification/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6089fdc1-23d2-458c-b450-24ee45a26a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_theta_sub_le_of_checkThetaAbsError (N depth : Nat) (bound : Rat)
    (h : checkThetaAbsError N bound depth = true) :
    |theta (N : Real) - N| <= (bound : Real) := by
  unfold checkThetaAbsError at h
  rw [Bool.and_eq_true] at h
  obtain ⟨h1, h2⟩ := h
  rw [decide_eq_true_eq] at h1 h2
  have hub := theta_le_thetaUB N depth
  have hlb := thetaLB_le_theta N depth
  rw [abs_le]
  constructor
  · -- -(bound : ℝ) ≤ theta(N) - N
    have hcast : (thetaLB N depth : Real) ≥ (N : Real) - (bound : Real) := by
      have : ((N : Rat) - thetaLB N depth : Rat) ≤ bound := h2
      exact_mod_cast (show (N : Rat) - bound ≤ thetaLB N depth by linarith)
    linarith
  · -- theta(N) - N ≤ bound
    have hcast : (thetaUB N depth : Real) ≤ (N : Real) + (bound : Real) := by
      have : (thetaUB N depth - (N : Rat) : Rat) ≤ bound := h1
      exact_mod_cast (show thetaUB N depth ≤ (N : Rat) + bound by linarith)
    linarith

/-! ### Efficient incremental checkers (O(N) for native_decide) -/

/-- Helper: `thetaUB` for the prefix `1..n-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8fc81ae9f509248c72474b0c860dbc05c8b3907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
