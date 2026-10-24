# smoothedPerronIntegrand_residue_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95644a0b-b316-db1a-4eee-c1679bdf1e6c",
  "kind": "theorem",
  "lexical_name": "smoothedPerronIntegrand_residue_limit",
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
  "slug": "smoothedperronintegrand-residue-limit--2d01cb95d1d2d1a80234b43e",
  "source": {
    "blob": "a9d2aadbbe1f31a62a043b8165ffea9aa1bc2bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 141,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d01cb95d1d2d1a80234b43e7005d767c6b43bbebe95b9b002968813a0c2b267",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95644a0b-b316-db1a-4eee-c1679bdf1e6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedPerronIntegrand_residue_limit (x : ℝ) (hx : 0 < x) :
    Tendsto (fun s : ℂ => s * smoothedPerronIntegrand x s) (𝓝[≠] 0) (𝓝 1) := by
  have h : Tendsto (fun s : ℂ => (x : ℂ) ^ s / zetaPoleFactor s)
      (𝓝[≠] 0) (𝓝 ((x : ℂ) ^ (0 : ℂ) / zetaPoleFactor 0)) :=
    (perronNumerator_analyticAt_zero x hx).continuousAt.tendsto.mono_left nhdsWithin_le_nhds
  simp only [cpow_zero, zetaPoleFactor_zero, div_one] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  rw [smoothedPerronIntegrand_factor]
  exact (mul_div_cancel₀ _ hs).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d2aadbbe1f31a62a043b8165ffea9aa1bc2bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
