# rounded_negative_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6935ee04-fcad-53f6-fdd2-03250789bba5",
  "kind": "lemma",
  "lexical_name": "rounded_negative_power",
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
  "slug": "rounded-negative-power--e9ed396e5ca56d341529805a",
  "source": {
    "blob": "ee0c19d3b626d8905bbbbc493376edbb8674c88f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 76,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9ed396e5ca56d341529805a8952d32b4818e408bebb3cf4aa5f17171c22ce85",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6935ee04-fcad-53f6-fdd2-03250789bba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rounded_negative_power {x a d : ℝ} (hx : 1 ≤ x) (hd : 0 ≤ d)
    (hlog : |Real.log x - a| ≤ d)
    (hsmall : (7 / 8 : ℝ) * d ≤ 1)
    (harg : (7 / 8 : ℝ) * |a| ≤ 3 / 2)
    (v : ℂ)
    (hround : |(complexExpTaylor 10 (-center * (a : ℂ)) - v).re| +
      |(complexExpTaylor 10 (-center * (a : ℂ)) - v).im| ≤ 1 / 2048)
    (hbudget : 2 * ((7 / 8 : ℝ) * d) +
      complexExpTaylorRadius 10 (3 / 2) + 1 / 2048 ≤ 1 / 64) :
    ‖(x : ℂ) ^ (-center) - v‖ ≤ (1 / 64 : ℝ) := by
  let e : RealLogEnclosure x :=
    { center := a, radius := d, radius_nonneg := hd, encloses := hlog }
  let p := negativePowerEnclosureOfBounds hx e center (by norm_num [center])
    10 (7 / 8) (3 / 2) center_norm_le hsmall harg (by norm_num)
  have hp := p.encloses
  change ‖(x : ℂ) ^ (-center) - complexExpTaylor 10 (-center * (a : ℂ))‖ ≤
    2 * ((7 / 8 : ℝ) * d) + complexExpTaylorRadius 10 (3 / 2) at hp
  have hr := norm_le_of_coordinate_sum hround
  calc
    _ = ‖((x : ℂ) ^ (-center) - complexExpTaylor 10 (-center * (a : ℂ))) +
        (complexExpTaylor 10 (-center * (a : ℂ)) - v)‖ := by congr 1; ring
    _ ≤ ‖(x : ℂ) ^ (-center) - complexExpTaylor 10 (-center * (a : ℂ))‖ +
        ‖complexExpTaylor 10 (-center * (a : ℂ)) - v‖ := norm_add_le _ _
    _ ≤ 2 * ((7 / 8 : ℝ) * d) + complexExpTaylorRadius 10 (3 / 2) + 1 / 2048 :=
      add_le_add hp hr
    _ ≤ 1 / 64 := hbudget

/-- Rounded rational coordinates, not unproved evaluations of complex powers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0c19d3b626d8905bbbbc493376edbb8674c88f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
