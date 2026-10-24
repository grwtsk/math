# hasDerivAt_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0329c6c7-72ca-9f9f-c47f-44439edf32c3",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_right",
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
  "slug": "hasderivat-right--a76b39aedae3f5fdf1e9ecd5",
  "source": {
    "blob": "42291c6dafca5e513a306ef3953a2e7f7d1f43f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 314,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a76b39aedae3f5fdf1e9ecd5fd7149ab7dcffec0ce17777a16a9659ef0bf7505",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0329c6c7-72ca-9f9f-c47f-44439edf32c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hasDerivAt_right (ω s : ℝ) (hω : ω ≠ 0) (x : ℝ) :
    HasDerivAt (fun x => (x - s) * Real.sin (ω * x) / ω + Real.cos (ω * x) / ω ^ 2)
      ((x - s) * Real.cos (ω * x)) x := by
  have h1 : HasDerivAt (fun x : ℝ => x - s) 1 x := by
    simpa using (hasDerivAt_id x).sub_const s
  have hlin : HasDerivAt (fun x : ℝ => ω * x) (ω * 1) x := (hasDerivAt_id x).const_mul ω
  have h2 : HasDerivAt (fun x : ℝ => Real.sin (ω * x)) (Real.cos (ω * x) * (ω * 1)) x :=
    (Real.hasDerivAt_sin (ω * x)).comp x hlin
  have h3 : HasDerivAt (fun x : ℝ => Real.cos (ω * x)) (-Real.sin (ω * x) * (ω * 1)) x :=
    (Real.hasDerivAt_cos (ω * x)).comp x hlin
  have h4 := ((h1.mul h2).div_const ω).add (h3.div_const (ω ^ 2))
  exact h4.congr_deriv (by field_simp; ring)

/-- the inner kernel integral: for s ∈ [−1/2, 1/2],
∫ s' in −1/2..1/2, |s − s'| cos(√2 λ s') = a*/2 + cos ϑ/λ² − cos(√2 λ s)/λ². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42291c6dafca5e513a306ef3953a2e7f7d1f43f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
