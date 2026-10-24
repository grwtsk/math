# poleNormalized_ne_zero_of_mellinEnclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:126446aa-36fd-0abb-dd02-0bce401f29a8",
  "kind": "theorem",
  "lexical_name": "poleNormalized_ne_zero_of_mellinEnclosure",
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
  "slug": "polenormalized-ne-zero-of-mellinenclosure--1ccc2e344894fce6d1e36893",
  "source": {
    "blob": "4e2a4db879cf9c5d47ee717f98d4716e346ff3d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ccc2e344894fce6d1e368938e0d104f0577b8e7c5937f4669975e712650e29d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:126446aa-36fd-0abb-dd02-0bce401f29a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleNormalized_ne_zero_of_mellinEnclosure {s : ℂ} {a T : ℝ}
    (ha : 0 < a) (has : a ≤ s.re) (hT : 1 ≤ T)
    (enc : MellinPrefixEnclosure T s)
    (hmargin : (‖s‖ * ‖s - 1‖) * (enc.error + mellinTailMajorant a T) <
      ‖poleMellinEvaluation s enc.value‖) : poleNormalizedZeta s ≠ 0 := by
  intro hzero
  have hbound := poleMellinEvaluation_error_le ha has hT enc.enclosed
  rw [hzero, zero_sub, norm_neg] at hbound
  exact (not_le_of_gt hmargin) hbound

/-- Port from a certified finite-prefix value and a global derivative bound to an
actual normalized-zeta variation patch. The radius/convexity and derivative bound
remain real hypotheses; an evaluation certificate alone cannot cover a region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e2a4db879cf9c5d47ee717f98d4716e346ff3d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
