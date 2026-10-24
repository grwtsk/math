# condExp_min_stopping_time_ae_eq_restrict_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cb4d4dd-ffa7-228d-18aa-2a5bf0e06046",
  "kind": "theorem",
  "lexical_name": "condExp_min_stopping_time_ae_eq_restrict_le_const",
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
  "slug": "condexp-min-stopping-time-ae-eq-restrict-le-const--f056fa7ad3799df5dfdf1728",
  "source": {
    "blob": "b25a083f6a1b210f988357fb835770c3f90b68da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1447,
    "line": 1433,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f056fa7ad3799df5dfdf17285963f1a211bb5395d632958752fdcb5181c11a13",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb4d4dd-ffa7-228d-18aa-2a5bf0e06046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1433–1447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_min_stopping_time_ae_eq_restrict_le_const (hτ : IsStoppingTime ℱ τ) (i : ι)
    [SigmaFinite (μ.trim (hτ.min_const i).measurableSpace_le)] :
    μ[f | (hτ.min_const i).measurableSpace] =ᵐ[μ.restrict {x | τ x ≤ i}]
      μ[f | hτ.measurableSpace] := by
  have : SigmaFinite (μ.trim hτ.measurableSpace_le) :=
    haveI h_le : (hτ.min_const i).measurableSpace ≤ hτ.measurableSpace := by
      rw [IsStoppingTime.measurableSpace_min_const]
      exact inf_le_left
    sigmaFiniteTrim_mono _ h_le
  refine (condExp_ae_eq_restrict_of_measurableSpace_eq_on hτ.measurableSpace_le
    (hτ.min_const i).measurableSpace_le (hτ.measurableSet_le' i) fun t => ?_).symm
  rw [Set.inter_comm _ t, hτ.measurableSet_inter_le_const_iff]

variable [TopologicalSpace ι] [OrderTopology ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean#L1433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25a083f6a1b210f988357fb835770c3f90b68da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
