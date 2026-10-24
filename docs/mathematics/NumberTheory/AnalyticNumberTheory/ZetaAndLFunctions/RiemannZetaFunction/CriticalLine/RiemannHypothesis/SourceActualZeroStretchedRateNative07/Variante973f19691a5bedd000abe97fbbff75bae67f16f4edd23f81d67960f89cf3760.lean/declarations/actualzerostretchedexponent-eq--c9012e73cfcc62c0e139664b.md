# actualZeroStretchedExponent_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ffea3c2-8ab4-a5d0-d89d-24800d23d2ee",
  "kind": "theorem",
  "lexical_name": "actualZeroStretchedExponent_eq",
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
  "slug": "actualzerostretchedexponent-eq--c9012e73cfcc62c0e139664b",
  "source": {
    "blob": "27a5e0415f56021e820c6a6b7a7e805a784ad3d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 296,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variante973f19691a5bedd000abe97fbbff75bae67f16f4edd23f81d67960f89cf3760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9012e73cfcc62c0e139664b46f50c0334269370324e2ccb2ec853ef23b565f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variante973f19691a5bedd000abe97fbbff75bae67f16f4edd23f81d67960f89cf3760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ffea3c2-8ab4-a5d0-d89d-24800d23d2ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroStretchedExponent_eq (a A : ℝ) (hA : 0 < A) :
    (a / (Real.log (actualZeroStretchedHeight A)) ^ 9) * A =
      a * A ^ (1 / 10 : ℝ) := by
  have hp : (A ^ (1 / 10 : ℝ)) ^ 10 = A := by
    rw [← Real.rpow_mul_natCast hA.le]
    norm_num
  have hx : 0 < A ^ (1 / 10 : ℝ) := Real.rpow_pos_of_pos hA _
  unfold actualZeroStretchedHeight
  rw [Real.log_exp]
  calc
    _ = (a / (A ^ (1 / 10 : ℝ)) ^ 9) * (A ^ (1 / 10 : ℝ)) ^ 10 := by rw [hp]
    _ = _ := by field_simp <;> ring

/-- The complete actual zero sum, including every low zero and both tail
signs, has a genuine quantitative normalized cancellation estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variante973f19691a5bedd000abe97fbbff75bae67f16f4edd23f81d67960f89cf3760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variante973f19691a5bedd000abe97fbbff75bae67f16f4edd23f81d67960f89cf3760.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a5e0415f56021e820c6a6b7a7e805a784ad3d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
