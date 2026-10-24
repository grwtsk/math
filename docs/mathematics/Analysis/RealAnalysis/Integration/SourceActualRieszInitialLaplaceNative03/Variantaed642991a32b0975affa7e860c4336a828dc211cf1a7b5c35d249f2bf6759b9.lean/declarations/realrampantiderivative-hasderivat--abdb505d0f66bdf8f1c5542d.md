# realRampAntiderivative_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8d230be-670f-c216-45bb-00832358194e",
  "kind": "theorem",
  "lexical_name": "realRampAntiderivative_hasDerivAt",
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
  "slug": "realrampantiderivative-hasderivat--abdb505d0f66bdf8f1c5542d",
  "source": {
    "blob": "8f62dbd16ba49afad2ca876950dd5da5fa10d2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abdb505d0f66bdf8f1c5542d5ffb6befe8ec29689f4c4f902333c52a32202461",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8d230be-670f-c216-45bb-00832358194e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem realRampAntiderivative_hasDerivAt {σ : ℝ} (hσ : σ ≠ 0) (a t : ℝ) :
    HasDerivAt (realRampAntiderivative σ a)
      ((t - a) * Real.exp (-σ * t)) t := by
  have h := (((hasDerivAt_id t).const_mul (-σ)).exp.neg).mul
    ((((hasDerivAt_id t).sub_const a).div_const σ).add_const (1 / σ^2))
  convert! h using 1
  dsimp [realRampAntiderivative]
  field_simp [hσ]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f62dbd16ba49afad2ca876950dd5da5fa10d2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
