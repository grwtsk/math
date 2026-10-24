# harmonicShiftReciprocal_terminalDifference_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36ebac70-2393-3d78-bee0-9a669eff172d",
  "kind": "theorem",
  "lexical_name": "harmonicShiftReciprocal_terminalDifference_nonneg",
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
  "slug": "harmonicshiftreciprocal-terminaldifference-nonneg--d5e8f8636f85716157890d54",
  "source": {
    "blob": "f84648a1454f439850ac0ba78e3f5320a39a87f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 162,
    "path": "GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e8f8636f85716157890d5455b202558c27bbfcbe1160853dcf88aea0f6d04f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ebac70-2393-3d78-bee0-9a669eff172d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicShiftReciprocal_terminalDifference_nonneg
    {j t : ℕ} (hN : 0 < harmonicShiftCount j t) :
    0 ≤
      harmonicShiftReciprocal j t (harmonicShiftCount j t - 1) -
        harmonicShiftReciprocal j t (harmonicShiftCount j t) := by
  unfold harmonicShiftReciprocal
  apply sub_nonneg.mpr
  have hp : harmonicShiftCount j t - 1 + 1 = harmonicShiftCount j t :=
    Nat.sub_add_cancel hN
  simpa only [one_div] using one_div_le_one_div_of_le
    (show (0 : ℝ) < ((t + 1 + (harmonicShiftLower j t +
      (harmonicShiftCount j t - 1)) : ℕ) : ℝ) by positivity)
    (show ((t + 1 + (harmonicShiftLower j t +
      (harmonicShiftCount j t - 1)) : ℕ) : ℝ) ≤
      ((t + 1 + (harmonicShiftLower j t + harmonicShiftCount j t) : ℕ) : ℝ) by
      exact_mod_cast (show t + 1 + (harmonicShiftLower j t +
        (harmonicShiftCount j t - 1)) ≤
        t + 1 + (harmonicShiftLower j t + harmonicShiftCount j t) by omega))

/-- Source-facing cumulative-shift supplier.  It asks directly for the exact
second-Abel representation to satisfy the inherited subpolynomial budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f84648a1454f439850ac0ba78e3f5320a39a87f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
