# physical_decay_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:102c864d-bf21-97c1-3a3d-864eeb54b4bd",
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
  "slug": "physical-decay-integral--3afe95c4ba97261115e0905e",
  "source": {
    "blob": "ad27d873ad1b8bbf9a032db4ba1a16ea01d4690f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Varianta309f620c935c20455aebea48bd6ba13a4d380b7d16955e5ee208cad2b48e91c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3afe95c4ba97261115e0905ec5fd5626b6fc92c0b5f157c48f607fd8fc1b5bb8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt06/Varianta309f620c935c20455aebea48bd6ba13a4d380b7d16955e5ee208cad2b48e91c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:102c864d-bf21-97c1-3a3d-864eeb54b4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem physical_decay_integral {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, Real.exp (-5 * Real.log x / 2)) =
      (2 / 3 : ℝ) * (Real.exp (-3 * Real.log l / 2) -
        Real.exp (-3 * Real.log b / 2)) := by
  have hp (x : ℝ) (hx : x ∈ uIcc l b) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    exact hl.trans_le hx.1
  have hd (x : ℝ) (hx : x ∈ uIcc l b) :
      HasDerivAt (fun x : ℝ => (-2 / 3 : ℝ) * Real.exp (-3 * Real.log x / 2))
        (Real.exp (-5 * Real.log x / 2)) x := by
    have hxp := hp x hx
    have hlog := (Real.hasDerivAt_log hxp.ne').const_mul (-3)
    have hh := ((hlog.div_const 2).exp).const_mul (-2 / 3 : ℝ)
    have he : Real.exp (-5 * Real.log x / 2) =
        Real.exp (-3 * Real.log x / 2) * x⁻¹ := by
      have hei : Real.exp (-Real.log x) = x⁻¹ := by rw [Real.exp_neg, Real.exp_log hxp]
      rw [← hei, ← Real.exp_add]
      congr 1
      ring
    rw [he]
    convert hh using 1 <;> try rfl
    ring
  have hlog : ContinuousOn Real.log (uIcc l b) :=
    Real.continuousOn_log.mono (fun x hx => (hp x hx).ne')
  have hc := Real.continuous_exp.comp_continuousOn ((hlog.const_mul (-5)).div_const 2)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hc.intervalIntegrable]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt06/Varianta309f620c935c20455aebea48bd6ba13a4d380b7d16955e5ee208cad2b48e91c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Varianta309f620c935c20455aebea48bd6ba13a4d380b7d16955e5ee208cad2b48e91c.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad27d873ad1b8bbf9a032db4ba1a16ea01d4690f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
