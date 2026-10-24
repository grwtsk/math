# heatRemainder_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a6ae579-b888-f635-e75b-76ebd33b3d76",
  "kind": "theorem",
  "lexical_name": "heatRemainder_integrable",
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
  "slug": "heatremainder-integrable--2c38fe5ba09be696f366ff32",
  "source": {
    "blob": "23166adbe46186a8502fa5bae12566db052f807f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c38fe5ba09be696f366ff32734ce3f3fd6c287d210604bf6174dfa950fcb2a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a6ae579-b888-f635-e75b-76ebd33b3d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem heatRemainder_integrable (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (τ : ℝ) :
    Integrable (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) μ := by
  have hi : Integrable k μ := by
    simpa only [neg_zero, zero_mul, Real.exp_zero, mul_one] using
      signedHeat_integrable hk hM hb (μ := μ) 0
  apply (hi.sub (signedHeat_integrable hk hM hb τ)).congr
  exact ae_of_all _ (fun x => by dsimp only [Pi.sub_apply]; ring)

/-- Bounded fixed-scale symbols discharge the analytic integrability gates automatically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23166adbe46186a8502fa5bae12566db052f807f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
