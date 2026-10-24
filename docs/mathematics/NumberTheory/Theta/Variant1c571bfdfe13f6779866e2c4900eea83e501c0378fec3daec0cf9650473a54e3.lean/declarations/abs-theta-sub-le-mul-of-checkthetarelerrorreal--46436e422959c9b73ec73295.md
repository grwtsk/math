# abs_theta_sub_le_mul_of_checkThetaRelErrorReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26efa2af-3db9-bc9b-ad10-c2389b5c9955",
  "kind": "theorem",
  "lexical_name": "abs_theta_sub_le_mul_of_checkThetaRelErrorReal",
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
  "slug": "abs-theta-sub-le-mul-of-checkthetarelerrorreal--46436e422959c9b73ec73295",
  "source": {
    "blob": "f8fc81ae9f509248c72474b0c860dbc05c8b3907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 500,
    "path": "GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46436e422959c9b73ec732951949af1f096e09f502b7bbd4648c6605c63d066f",
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

Occurrence: `result:26efa2af-3db9-bc9b-ad10-c2389b5c9955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_theta_sub_le_mul_of_checkThetaRelErrorReal (N depth : Nat) (bound : Rat)
    (hbound : 0 ≤ bound) (hbound1 : bound ≤ 1)
    (h : checkThetaRelErrorReal N bound depth = true)
    (x : Real) (hxlo : (N : Real) ≤ x) (hxhi : x < (N : Real) + 1) :
    |theta x - x| ≤ (bound : Real) * x := by
  unfold checkThetaRelErrorReal at h
  rw [Bool.and_eq_true] at h
  obtain ⟨h1, h2⟩ := h
  rw [decide_eq_true_eq] at h1 h2
  have hub := theta_le_thetaUB N depth
  have hlb := thetaLB_le_theta N depth
  have hnn : (0 : Real) ≤ x := le_trans (by exact_mod_cast (Nat.zero_le N)) hxlo
  have hfloor : Nat.floor x = N := by
    exact Nat.floor_eq_iff hnn |>.mpr ⟨by exact_mod_cast hxlo, by exact_mod_cast hxhi⟩
  rw [Chebyshev.theta_eq_theta_coe_floor x, hfloor]
  rw [abs_le]
  constructor
  · have hcast : ((1 - bound) * ((N : Rat) + 1) : Real) ≤ (thetaLB N depth : Real) := by
      exact_mod_cast h2
    have h1sub : (0 : Real) ≤ 1 - (bound : Real) := by
      have : (bound : Real) ≤ 1 := by exact_mod_cast hbound1
      linarith
    have : (1 - (bound : Real)) * x ≤ (1 - (bound : Real)) * ((N : Real) + 1) :=
      mul_le_mul_of_nonneg_left (le_of_lt hxhi) h1sub
    push_cast at hcast ⊢
    linarith
  · have hcast : (thetaUB N depth : Real) ≤ ((1 + bound) * (N : Rat) : Real) := by
      exact_mod_cast h1
    have h1add : (0 : Real) ≤ 1 + (bound : Real) := by
      linarith [show (0 : Real) ≤ bound from by exact_mod_cast hbound]
    have : (1 + (bound : Real)) * (N : Real) ≤ (1 + (bound : Real)) * x :=
      mul_le_mul_of_nonneg_left hxlo h1add
    push_cast at hcast ⊢
    linarith

/-- Efficient O(N) incremental checker for the strengthened real-valued condition.
For `N = start .. limit-1`: checks `checkThetaRelErrorReal N bound depth`
  (covers `x ∈ [N, N+1)`)
For `N = limit`: checks `checkThetaRelError N bound depth`
  (covers only `x = limit`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8fc81ae9f509248c72474b0c860dbc05c8b3907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
