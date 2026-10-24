# logMap_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bb142eb-f6e9-5944-0c38-fe496c9bf6ae",
  "kind": "theorem",
  "lexical_name": "logMap_norm",
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
  "slug": "logmap-norm--3e74c1dbde14cd551a396a20",
  "source": {
    "blob": "79adbcd010f2ab63346ee4c99c1f7fa5fa7907b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 164,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e74c1dbde14cd551a396a20bfb80c0e1c0437685dc28dd8a31ad41a1aa50beb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bb142eb-f6e9-5944-0c38-fe496c9bf6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logMap_norm (f : PositiveL2) : ‖logMap f‖ = ‖f‖ := by
  have he : ‖logMap f‖^2 = ‖f‖^2 := by
    rw [logL2_norm_sq_integral]
    have hae : (fun u => ‖logMap f u‖^2) =ᵐ[volume]
        (fun u => Real.exp u * ‖f (Real.exp u)‖^2) := by
      filter_upwards [logMap_ae f] with u hu
      rw [hu,logFunc_norm_sq]
    rw [integral_congr_ae hae,←integral_exp_jacobian (fun x => ‖f x‖^2)]
    exact (norm_sq_integral f).symm
  nlinarith [norm_nonneg (logMap f),norm_nonneg f]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79adbcd010f2ab63346ee4c99c1f7fa5fa7907b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
