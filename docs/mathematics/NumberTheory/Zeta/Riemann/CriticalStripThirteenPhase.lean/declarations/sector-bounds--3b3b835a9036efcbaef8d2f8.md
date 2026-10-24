# sector_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a568e489-eb0e-ef0b-3f27-a92f8166a916",
  "kind": "lemma",
  "lexical_name": "sector_bounds",
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
  "slug": "sector-bounds--3b3b835a9036efcbaef8d2f8",
  "source": {
    "blob": "ecc986c09813aee6204c4dd29827daa5b9f24cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b3b835a9036efcbaef8d2f87118749d80cff388ac14deee62c207c5abf972b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a568e489-eb0e-ef0b-3f27-a92f8166a916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sector_bounds {a : ℝ} (hlo : Real.pi / 2 ≤ a) (hhi : a ≤ 7 * Real.pi / 8) :
    -(37 / 40 : ℝ) ≤ Real.cos a ∧ (3 / 8 : ℝ) ≤ Real.sin a := by
  have hp := Real.pi_pos
  have hcos := Real.cos_le_cos_of_nonneg_of_le_pi
    (x := a) (y := 7 * Real.pi / 8) (by linarith) (by linarith) hhi
  rw [show 7 * Real.pi / 8 = Real.pi - Real.pi / 8 by ring, Real.cos_pi_sub] at hcos
  have hsin := Real.sin_le_sin_of_le_of_le_pi_div_two
    (x := Real.pi / 8) (y := Real.pi - a)
    (by linarith) (by linarith) (by linarith)
  rw [Real.sin_pi_sub] at hsin
  have hb := eighth_angle_bounds
  constructor <;> linarith [hb.1, hb.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenPhase.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecc986c09813aee6204c4dd29827daa5b9f24cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
