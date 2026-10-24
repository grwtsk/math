# physical_decay_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dfb59f4-16e3-606f-7995-e5689f934ddf",
  "kind": "theorem",
  "lexical_name": "physical_decay_integral",
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
  "slug": "physical-decay-integral--c792cb43e9a159b4ac84e09a",
  "source": {
    "blob": "17e58589115b9bb20507754584b9d52a4a506f52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantda10b33af1713df00ca5ed03a66087b000c859ee795a7988592df0bf9156410e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c792cb43e9a159b4ac84e09ab6d5c3a385ae57980af478eea1705d680d385dba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantda10b33af1713df00ca5ed03a66087b000c859ee795a7988592df0bf9156410e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dfb59f4-16e3-606f-7995-e5689f934ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem physical_decay_integral {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, Real.exp (-5 * Real.log x / 2)) =
      (2 / 3 : ℝ) * (Real.exp (-3 * Real.log l / 2) -
        Real.exp (-3 * Real.log b / 2)) := by
  have hp (x : ℝ) (hx : x ∈ uIcc l b) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    exact hl.trans_le hx.1
  have hlog : ContinuousOn Real.log (uIcc l b) :=
    Real.continuousOn_log.mono (fun x hx => (hp x hx).ne')
  have hc : ContinuousOn (fun x : ℝ => Real.exp (-5 * Real.log x / 2)) (uIcc l b) :=
    ((hlog.const_mul (-5)).div_const 2).exp
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => physical_decay_hasDerivAt (hp x hx)) hc.intervalIntegrable
  rw [he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantda10b33af1713df00ca5ed03a66087b000c859ee795a7988592df0bf9156410e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantda10b33af1713df00ca5ed03a66087b000c859ee795a7988592df0bf9156410e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17e58589115b9bb20507754584b9d52a4a506f52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
