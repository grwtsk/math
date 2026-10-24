# Proposal.encloses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85e4ae43-4a93-4f83-1fa9-9c06c8a28859",
  "kind": "theorem",
  "lexical_name": "Proposal.encloses",
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
  "slug": "proposal-encloses--96200ba1427e5b377822e135",
  "source": {
    "blob": "0c7bbd1a488401e200d07c7d346acea81e4f5124",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 114,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96200ba1427e5b377822e135554374f5044c37e0547bddbca2509b80b449f879",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85e4ae43-4a93-4f83-1fa9-9c06c8a28859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Proposal.encloses {p : Proposal} {k : ℕ} {s : Gaussian}
    (hc : p.check k s=true) :
    ‖(k : ℂ)^(-s.value)-p.center.value‖ ≤ (p.radius : ℝ) := by
  obtain ⟨hk,hs,hr,hsmall,hguard,hcost⟩ := (p.check_iff k s).mp hc
  let e := logRecord k p.logDegree hk
  have hsR : 0 ≤ s.value.re := by change (0 : ℝ) ≤ (s.re : ℝ); exact_mod_cast hs
  have hm : (s.l1 : ℝ)*e.radius ≤ 1 := by
    change (s.l1 : ℝ)*(logRadius k p.logDegree : ℝ) ≤ 1
    exact_mod_cast hsmall
  have hg : (argumentBound k p.logDegree s : ℝ)/((p.expTerms : ℝ)+1) ≤ 1/2 := by
    exact_mod_cast hguard
  have ha : (s.l1 : ℝ)*|e.center| ≤ (argumentBound k p.logDegree s : ℝ) := by
    change (s.l1 : ℝ)*|(logCenter k p.logDegree : ℝ)| ≤ _
    simp [argumentBound]
  let b := negativePowerEnclosureOfBounds (x := (k : ℝ)) (by exact_mod_cast hk) e
    s.value hsR p.expTerms (s.l1 : ℝ) (argumentBound k p.logDegree s : ℝ)
    (Gaussian.norm_value_le_l1 s) hm ha hg
  have hb := b.encloses
  change ‖((k : ℝ) : ℂ)^(-s.value)-
      complexExpTaylor p.expTerms (-s.value*(e.center : ℂ))‖ ≤
    2*((s.l1 : ℝ)*e.radius)+complexExpTaylorRadius p.expTerms
      (argumentBound k p.logDegree s : ℝ) at hb
  have hraw : ‖(k : ℂ)^(-s.value)-(rawCenter k p.logDegree p.expTerms s).value‖ ≤
      (analyticRadius k p.logDegree p.expTerms s : ℝ) := by
    rw [rawCenter_value]
    convert hb using 1 <;>
      simp [e,logRecord,analyticRadius,truncationRadius,complexExpTaylorRadius] <;>
      push_cast <;> ring
  have hround := Gaussian.recenter_bound (b := p.center) hraw
  exact hround.trans (by exact_mod_cast hcost)

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPowerEvaluation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7bbd1a488401e200d07c7d346acea81e4f5124` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
