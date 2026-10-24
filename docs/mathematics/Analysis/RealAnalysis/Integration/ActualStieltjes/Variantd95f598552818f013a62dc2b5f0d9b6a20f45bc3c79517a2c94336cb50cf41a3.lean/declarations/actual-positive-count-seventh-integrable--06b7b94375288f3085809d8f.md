# actual_positive_count_seventh_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f25ffb7b-f29f-0eda-5017-51a9fda7b1e1",
  "kind": "theorem",
  "lexical_name": "actual_positive_count_seventh_integrable",
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
  "slug": "actual-positive-count-seventh-integrable--06b7b94375288f3085809d8f",
  "source": {
    "blob": "ec9c3dcacf537df62894b2dd4584d850320e8e69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06b7b94375288f3085809d8f0f912462565f1cb146cfbf722f65f6d7f26390d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f25ffb7b-f29f-0eda-5017-51a9fda7b1e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positive_count_seventh_integrable (T : ℝ) (hT : 3/2 ≤ T) :
    IntegrableOn (fun x : ℝ => actualPositiveZeroCount x/x^7) (Ioi T) := by
  have h : IntegrableOn (fun x => (1/6 : ℝ)*
      ∑' o : PositiveOccurrence, actualClosedOrdinateKernel o x) (Ioi T) :=
    (actual_closed_ordinate_kernel_series_integrable T hT).const_mul (1/6 : ℝ)
  apply h.congr_fun _ measurableSet_Ioi
  intro x _
  dsimp only
  rw [actual_closed_ordinate_kernel_tsum]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9c3dcacf537df62894b2dd4584d850320e8e69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
