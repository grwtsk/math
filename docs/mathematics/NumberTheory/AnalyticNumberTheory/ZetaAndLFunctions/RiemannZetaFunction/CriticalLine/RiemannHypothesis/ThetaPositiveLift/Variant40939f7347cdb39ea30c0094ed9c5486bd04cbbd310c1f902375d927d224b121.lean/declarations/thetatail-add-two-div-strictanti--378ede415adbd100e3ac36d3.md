# thetaTail_add_two_div_strictAnti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31d54204-4e0e-f53c-2c92-91bc5e99a11d",
  "kind": "theorem",
  "lexical_name": "thetaTail_add_two_div_strictAnti",
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
  "slug": "thetatail-add-two-div-strictanti--378ede415adbd100e3ac36d3",
  "source": {
    "blob": "2c15fd99f5fd87392ea876afdbc065cba83ab20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 152,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:378ede415adbd100e3ac36d389cd645c0d99d9942a56f67e7a09f4fa729d7b56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31d54204-4e0e-f53c-2c92-91bc5e99a11d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_add_two_div_strictAnti (r : ℕ) :
    StrictAntiOn (fun t : ℝ => thetaTail (r + 2) t / thetaTail r t) (Ici 0) := by
  intro x hx y hy hxy
  have h1 := thetaTail_succ_div_strictAnti r hx hy hxy
  have h2 := thetaTail_succ_div_strictAnti (r + 1) hx hy hxy
  have p1y : 0 < thetaTail (r + 1) y / thetaTail r y :=
    div_pos (thetaTail_positive _ hy) (thetaTail_positive _ hy)
  have p2x : 0 < thetaTail (r + 2) x / thetaTail (r + 1) x :=
    div_pos (thetaTail_positive _ hx) (thetaTail_positive _ hx)
  have ey : thetaTail (r + 2) y / thetaTail r y =
      (thetaTail (r + 2) y / thetaTail (r + 1) y) *
        (thetaTail (r + 1) y / thetaTail r y) := by
    field_simp [(thetaTail_positive (r + 1) hy).ne']
  have ex : thetaTail (r + 2) x / thetaTail r x =
      (thetaTail (r + 2) x / thetaTail (r + 1) x) *
        (thetaTail (r + 1) x / thetaTail r x) := by
    field_simp [(thetaTail_positive (r + 1) hx).ne']
  change thetaTail (r + 2) y / thetaTail r y <
    thetaTail (r + 2) x / thetaTail r x
  rw [ey, ex]
  exact (mul_lt_mul_of_pos_right h2 p1y).trans
    (mul_lt_mul_of_pos_left h1 p2x)

/-- At two strictly ordered nodes, normalized even-tail rows decrease strictly with the order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c15fd99f5fd87392ea876afdbc065cba83ab20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
