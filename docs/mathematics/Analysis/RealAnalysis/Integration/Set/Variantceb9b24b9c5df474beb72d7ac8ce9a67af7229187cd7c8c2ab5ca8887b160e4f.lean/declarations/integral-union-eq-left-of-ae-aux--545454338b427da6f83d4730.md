# integral_union_eq_left_of_ae_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eef00212-d8d4-f206-32df-7a387f53c184",
  "kind": "theorem",
  "lexical_name": "integral_union_eq_left_of_ae_aux",
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
  "slug": "integral-union-eq-left-of-ae-aux--545454338b427da6f83d4730",
  "source": {
    "blob": "44c0192c42240884d8c5ec272a56c3ae52098d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:545454338b427da6f83d47307c50c8c48c0a279dd865f447673f938739844bf9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef00212-d8d4-f206-32df-7a387f53c184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_union_eq_left_of_ae_aux (ht_eq : ∀ᵐ x ∂μ.restrict t, f x = 0)
    (haux : StronglyMeasurable f) (H : IntegrableOn f (s ∪ t) μ) :
    ∫ x in s ∪ t, f x ∂μ = ∫ x in s, f x ∂μ := by
  let k := f ⁻¹' {0}
  have hk : MeasurableSet k := by borelize E; exact haux.measurable (measurableSet_singleton _)
  have h's : IntegrableOn f s μ := H.mono subset_union_left le_rfl
  have A : ∀ u : Set X, ∫ x in u ∩ k, f x ∂μ = 0 := fun u =>
    setIntegral_eq_zero_of_forall_eq_zero fun x hx => hx.2
  rw [← integral_inter_add_diff hk h's, ← integral_inter_add_diff hk H, A, A, zero_add, zero_add,
    union_diff_distrib, union_comm]
  apply setIntegral_congr_set
  rw [union_ae_eq_right]
  apply measure_mono_null diff_subset
  rw [measure_zero_iff_ae_notMem]
  filter_upwards [ae_imp_of_ae_restrict ht_eq] with x hx h'x using h'x.2 (hx h'x.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c0192c42240884d8c5ec272a56c3ae52098d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
