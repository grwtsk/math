# abs_deriv2_hQ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7d45b0f-b6f0-e049-d749-47c028b8420c",
  "kind": "lemma",
  "lexical_name": "abs_deriv2_hQ_le",
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
  "slug": "abs-deriv2-hq-le--4a6891528def772434cfedd9",
  "source": {
    "blob": "85ba992f8e2ccf54c8da85a7ad2a0d8370ef9acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a6891528def772434cfedd93239901931c22134c211e18840f33f6b572d59de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d45b0f-b6f0-e049-d749-47c028b8420c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_deriv2_hQ_le (hL : 0 < L) {u : ℝ} (hu : |u| ≤ L / 2) :
    |deriv (deriv (hQ L)) u| ≤ 64 / 5 / L ^ 2 := by
  rw [deriv2_hQ hL]
  have hu2 : u ^ 2 ≤ (L / 2) ^ 2 := by
    have := abs_le.mp hu; nlinarith
  have hL2 : 0 < L ^ 2 := by positivity
  have hL4 : 0 < L ^ 4 := by positivity
  set a : ℝ := 14 / 25 / L ^ 2 with ha
  set b : ℝ := 1224 / 25 * u ^ 2 / L ^ 4 with hb
  have hab : -(14 / 25) / L ^ 2 - 1224 / 25 * u ^ 2 / L ^ 4 = -a - b := by
    simp only [ha, hb]; ring
  rw [hab]
  have ha0 : 0 ≤ a := by positivity
  have hb0 : 0 ≤ b := by positivity
  rw [abs_of_nonpos (by linarith)]
  have key : b ≤ 306 / 25 / L ^ 2 := by
    simp only [hb]
    rw [div_le_div_iff₀ hL4 hL2]
    have : L ^ 4 = L ^ 2 * L ^ 2 := by ring
    nlinarith
  have e : (64:ℝ) / 5 / L ^ 2 = a + 306 / 25 / L ^ 2 := by simp only [ha]; ring
  linarith

/-! ### derivatives of f_Q on the core, through f_Q · f_Q = h -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ba992f8e2ccf54c8da85a7ad2a0d8370ef9acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
