# moving_fold_joint_c1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:687e5032-01e2-bbac-102e-91218e1ee5b4",
  "kind": "theorem",
  "lexical_name": "moving_fold_joint_c1",
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
  "slug": "moving-fold-joint-c1--8eb9633e18857dcdf5e11b4b",
  "source": {
    "blob": "13ffa211927c4d09c2728e3b4f13d81b186cec8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variant794cc7dda538ccb3196ec11d1b520bfa9033176554ec882753b3a77d02b31d21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eb9633e18857dcdf5e11b4b0dfaf11b6afaf99515e923302aa903d59c0679c4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variant794cc7dda538ccb3196ec11d1b520bfa9033176554ec882753b3a77d02b31d21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:687e5032-01e2-bbac-102e-91218e1ee5b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moving_fold_joint_c1 {a b : ℝ → ℝ} {l₀ x₀ : ℝ}
    (ha : ContDiffAt ℝ 1 a l₀) (hb : ContDiffAt ℝ 1 b l₀)
    (hab : a l₀ < b l₀) :
    ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
      AffineAccordionWeld.fold (a u.1) (b u.1) u.2) (l₀,x₀) := by
  have ha' := ha.comp (l₀,x₀) contDiffAt_fst
  have hb' := hb.comp (l₀,x₀) contDiffAt_fst
  have hn := contDiffAt_snd.sub ha'
  have hd := hb'.sub ha'
  have htwo : ContDiffAt ℝ 1 (fun _ : ℝ × ℝ => (2 : ℝ)) (l₀,x₀) := contDiffAt_const
  have hneg : ContDiffAt ℝ 1 (fun _ : ℝ × ℝ => (-1 : ℝ)) (l₀,x₀) := contDiffAt_const
  have hq := (htwo.mul hn).div hd
    (sub_ne_zero.mpr hab.ne')
  simpa only [AffineAccordionWeld.fold, Function.comp_apply] using! hneg.add hq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variant794cc7dda538ccb3196ec11d1b520bfa9033176554ec882753b3a77d02b31d21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variant794cc7dda538ccb3196ec11d1b520bfa9033176554ec882753b3a77d02b31d21.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ffa211927c4d09c2728e3b4f13d81b186cec8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
