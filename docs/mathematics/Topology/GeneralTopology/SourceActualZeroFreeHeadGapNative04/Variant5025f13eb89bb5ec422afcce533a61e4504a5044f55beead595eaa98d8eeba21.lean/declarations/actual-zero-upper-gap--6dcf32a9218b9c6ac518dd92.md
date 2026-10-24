# actual_zero_upper_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45ba9937-8acf-a1b3-3f6c-4b0e7758fea2",
  "kind": "theorem",
  "lexical_name": "actual_zero_upper_gap",
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
  "slug": "actual-zero-upper-gap--6dcf32a9218b9c6ac518dd92",
  "source": {
    "blob": "cf1265451395d6ff2d074934f5cd08d929521210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative04/Variant5025f13eb89bb5ec422afcce533a61e4504a5044f55beead595eaa98d8eeba21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dcf32a9218b9c6ac518dd92476c272b16e1d1d78c5a3b9067d391c16b504c61",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative04/Variant5025f13eb89bb5ec422afcce533a61e4504a5044f55beead595eaa98d8eeba21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45ba9937-8acf-a1b3-3f6c-4b0e7758fea2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_zero_upper_gap (a : ℝ)
    (hf : ∀ (sigma t : ℝ), 3 < |t| →
      sigma ∈ Ico (1 - a / (Real.log |t|) ^ 9) 1 →
      riemannZeta ((sigma : ℂ) + (t : ℂ) * Complex.I) ≠ 0)
    (rho : ℂ) (hrho : IsNontrivialZero rho) (ht : 3 < |rho.im|) :
    rho.re < 1 - a / (Real.log |rho.im|) ^ 9 := by
  by_contra hn
  have hne := hf rho.re rho.im ht ⟨le_of_not_gt hn, hrho.2.2⟩
  have he : ((rho.re : ℂ) + (rho.im : ℂ) * Complex.I) = rho := by
    apply Complex.ext <;> simp
  rw [he] at hne
  exact hne hrho.1

/-- Both sides of the actual zero strip have a genuine ordinate-dependent gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative04/Variant5025f13eb89bb5ec422afcce533a61e4504a5044f55beead595eaa98d8eeba21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative04/Variant5025f13eb89bb5ec422afcce533a61e4504a5044f55beead595eaa98d8eeba21.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1265451395d6ff2d074934f5cd08d929521210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
