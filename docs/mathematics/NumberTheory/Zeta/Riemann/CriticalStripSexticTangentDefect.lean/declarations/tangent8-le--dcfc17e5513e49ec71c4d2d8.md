# tangent8_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1b8f788-2791-6ed5-5882-4ed2a373824e",
  "kind": "lemma",
  "lexical_name": "tangent8_le",
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
  "slug": "tangent8-le--dcfc17e5513e49ec71c4d2d8",
  "source": {
    "blob": "3da1085b5b42212c5ed5cd2f7aff14926b748e0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcfc17e5513e49ec71c4d2d8909ff8622aee3179ac13200906302ae114021569",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1b8f788-2791-6ed5-5882-4ed2a373824e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tangent8_le {c t : ℝ} (hc : 0 < c) (ht : 0 < t) :
    tangent8 c t ≤ t ^ (-(8 : ℝ)) := by
  have hp : 0 ≤ (c-t)^2 *
      (c^7 + 2*c^6*t + 3*c^5*t^2 + 4*c^4*t^3 + 5*c^3*t^4 + 6*c^2*t^5 + 7*c*t^6 + 8*t^7) := by positivity
  have he : c^9 - (9*c-8*t)*t^8 = (c-t)^2 *
      (c^7 + 2*c^6*t + 3*c^5*t^2 + 4*c^4*t^3 + 5*c^3*t^4 + 6*c^2*t^5 + 7*c*t^6 + 8*t^7) := by ring
  rw [← he] at hp
  rw [Real.rpow_neg ht.le, Real.rpow_natCast]
  change (9*c-8*t)/c^9 ≤ 1/t^8
  apply (div_le_div_iff₀ (pow_pos hc _) (pow_pos ht _)).mpr
  nlinarith

/-- Keep the real exponent, using log and exp inequalities at their valid domains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da1085b5b42212c5ed5cd2f7aff14926b748e0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
