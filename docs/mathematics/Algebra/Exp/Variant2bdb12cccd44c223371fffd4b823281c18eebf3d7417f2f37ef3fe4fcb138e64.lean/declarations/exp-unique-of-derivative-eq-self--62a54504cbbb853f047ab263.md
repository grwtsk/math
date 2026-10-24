# exp_unique_of_derivative_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6071f2d1-a086-9562-b1c2-78ba1866ca1c",
  "kind": "theorem",
  "lexical_name": "exp_unique_of_derivative_eq_self",
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
  "slug": "exp-unique-of-derivative-eq-self--62a54504cbbb853f047ab263",
  "source": {
    "blob": "ec0df2033222548ef12d0ff90b4567f0453958c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 96,
    "path": "GRWTSK/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62a54504cbbb853f047ab263b2b6f2212a66476d60556e95986a21a5ac77f709",
  "verification": {
    "reference": "docs/verification/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6071f2d1-a086-9562-b1c2-78ba1866ca1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_unique_of_derivative_eq_self [CommRing A] [Algebra ℚ A] [IsAddTorsionFree A]
    {f : PowerSeries A} (hd : d⁄dX f = f) (hc : constantCoeff f = 1) :
    f = exp A := by
  ext n
  induction n with
  | zero =>
    rw [coeff_zero_eq_constantCoeff, hc, constantCoeff_exp]
  | succ n ih =>
    have eq1 : coeff n (d⁄dX f) = coeff n f := congrArg (coeff n) hd
    rw [coeff_derivative] at eq1
    have eq2 : coeff n (d⁄dX (exp A)) = coeff n (exp A) := congrArg (coeff n) (derivative_exp A)
    rw [coeff_derivative] at eq2
    rw [ih] at eq1
    have h : coeff (n + 1) f * (n + 1) = coeff (n + 1) (exp A) * (n + 1) := by
      rw [eq1, eq2]
    rw [← Nat.cast_succ, mul_comm, ← nsmul_eq_mul, mul_comm, ← nsmul_eq_mul] at h
    exact (smul_right_inj (Nat.succ_ne_zero n)).mp h

/-! ### Order and invertibility -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec0df2033222548ef12d0ff90b4567f0453958c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
