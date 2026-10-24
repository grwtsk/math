# fractionalMellin_deriv_norm_le_thirtyTwoSevenths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7d912fc-d506-ddb3-c0e4-c6336fce406b",
  "kind": "theorem",
  "lexical_name": "fractionalMellin_deriv_norm_le_thirtyTwoSevenths",
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
  "slug": "fractionalmellin-deriv-norm-le-thirtytwosevenths--9209af2803936167022f6a2d",
  "source": {
    "blob": "35d8ca52a56b1691d8d54dcb105f2744f143d7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9209af2803936167022f6a2db32c618dfffe8ef16ba96626de052c13f0acac15",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7d912fc-d506-ddb3-c0e4-c6336fce406b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalMellin_deriv_norm_le_thirtyTwoSevenths {s : ℂ}
    (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖deriv fractionalMellin s‖ ≤ (32 / 7 : ℝ) := by
  have h := fractionalMellin_deriv_norm_le_subtracted (σ := (1 / 2 : ℝ))
    (a := (1 / 16 : ℝ)) (by norm_num) (by norm_num) hs
  norm_num at h
  exact h

/-- The same vertical mean-value transport with its sharper source derivative.
The positive real-projection value is not substituted at a complex point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35d8ca52a56b1691d8d54dcb105f2744f143d7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
