# wienerSchwartzRemainder_uniform_vanishes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a89565eb-e67f-1d5f-7776-df11da39fc92",
  "kind": "theorem",
  "lexical_name": "wienerSchwartzRemainder_uniform_vanishes",
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
  "slug": "wienerschwartzremainder-uniform-vanishes--b5e93e70cc8d31f3bcdcf61a",
  "source": {
    "blob": "83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 293,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5e93e70cc8d31f3bcdcf61adc986abdcf605a68e811212e3e97284d101c7578",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a89565eb-e67f-1d5f-7776-df11da39fc92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSchwartzRemainder_uniform_vanishes
    {ι : Type*} {F : Filter ι}
    {r : ι → 𝓢(ℝ, ℂ)}
    (hr : Tendsto r F (𝓝 (0 : 𝓢(ℝ, ℂ))))
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ i in F,
      ∀ T : ℝ, 1 ≤ T →
        ‖wienerSchwartzBoundaryRemainder (r i) T‖ < ε := by
  have hP := wienerFourierSchwartzControl_tendsto_zero hr
  have hProduct :
      Tendsto
        (fun i =>
          wienerFourierSchwartzControl (r i) *
            wienerSchwartzErrorConstant)
        F (𝓝 (0 : ℝ)) := by
    simpa using hP.mul_const wienerSchwartzErrorConstant
  filter_upwards [hProduct.eventually (eventually_lt_nhds hε)]
    with i hi T hT
  exact (wienerSchwartzBoundaryRemainder_uniform_norm_le
    (r i) hT).trans_lt hi

/-- For any ACTUAL approximants gR->g in the Schwartz topology,
the Fourier remainder of g-gR tends to zero uniformly in scale.
The construction of compactly supported gR is still OPEN. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
