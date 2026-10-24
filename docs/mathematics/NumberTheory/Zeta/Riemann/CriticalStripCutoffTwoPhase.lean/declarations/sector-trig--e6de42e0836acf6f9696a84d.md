# sector_trig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e994ea01-6a7e-dffe-c8a0-b3ce672d8285",
  "kind": "lemma",
  "lexical_name": "sector_trig",
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
  "slug": "sector-trig--e6de42e0836acf6f9696a84d",
  "source": {
    "blob": "eda0beee60e7eafd324422ce353f01072df66ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6de42e0836acf6f9696a84db94b8df37fe420e7f7d968e749a2cbd4dee8d6e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e994ea01-6a7e-dffe-c8a0-b3ce672d8285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sector_trig {a : ℝ} (hlo : Real.pi/3 ≤ a) (hhi : a ≤ 2*Real.pi/3) :
    -(1/2 : ℝ) ≤ Real.cos a ∧ (6/7 : ℝ) ≤ Real.sin a := by
  have hp := Real.pi_pos
  have hc : Real.cos (2*Real.pi/3) ≤ Real.cos a :=
    Real.cos_le_cos_of_nonneg_of_le_pi (by linarith) (by linarith) hhi
  have hcval : Real.cos (2*Real.pi/3) = -(1/2 : ℝ) := by
    rw [show 2*Real.pi/3 = Real.pi-Real.pi/3 by ring,
      Real.cos_pi_sub, Real.cos_pi_div_three]
  rw [hcval] at hc
  have hsin : Real.sin (Real.pi/3) ≤ Real.sin a := by
    by_cases hm : a ≤ Real.pi/2
    · exact Real.sin_le_sin_of_le_of_le_pi_div_two (by linarith) hm hlo
    · have h := Real.sin_le_sin_of_le_of_le_pi_div_two
        (x := Real.pi/3) (y := Real.pi-a)
        (by linarith) (by linarith) (by linarith)
      simpa only [Real.sin_pi_sub] using h
  have hs0 : 0 ≤ Real.sin (Real.pi/3) :=
    Real.sin_nonneg_of_nonneg_of_le_pi (by linarith) (by linarith)
  have hs2 := Real.sq_sin_pi_div_three
  refine ⟨hc, ?_⟩
  have hbase : (6/7 : ℝ) ≤ Real.sin (Real.pi/3) := by nlinarith
  exact hbase.trans hsin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eda0beee60e7eafd324422ce353f01072df66ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
