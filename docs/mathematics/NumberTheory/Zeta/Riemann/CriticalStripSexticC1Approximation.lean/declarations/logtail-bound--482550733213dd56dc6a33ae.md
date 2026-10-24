# logTail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f9c73be-7a39-ba6a-afc7-9641c7444bd4",
  "kind": "lemma",
  "lexical_name": "logTail_bound",
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
  "slug": "logtail-bound--482550733213dd56dc6a33ae",
  "source": {
    "blob": "feb6fc25eb1c1c9e80378f1ce562247b652941be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:482550733213dd56dc6a33ae9ad684e7563cf2b068dbc509dd04eef169baa587",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f9c73be-7a39-ba6a-afc7-9641c7444bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logTail_bound {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    ‖sixthKernel.logTail (s+6) (N : ℝ)‖ ≤ logRadius N := by
  have h := sixthKernel.logTail_norm_le (T := (N : ℝ)) (z := s+6) (σ := 6)
    (by exact_mod_cast hN) (by norm_num)
    (by simp only [Complex.add_re,Complex.ofNat_re]; linarith)
  change ‖sixthKernel.logTail (s+6) (N : ℝ)‖ ≤ (1/30240 : ℝ)*
    ((N : ℝ)^(-(6-2 : ℝ))/(6-2)) at h
  norm_num only [show (6 : ℝ)-2=4 by norm_num] at h
  exact h.trans_eq (by unfold logRadius; ring)

/-- Derived from equality on a neighborhood in Re(s)>0, not equality at one point.
The finite arithmetic expression itself is unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feb6fc25eb1c1c9e80378f1ce562247b652941be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
