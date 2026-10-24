# norm_integral_sub_setIntegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7791d28d-11b5-afb9-691b-a65ac1a26e6d",
  "kind": "theorem",
  "lexical_name": "norm_integral_sub_setIntegral_le",
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
  "slug": "norm-integral-sub-setintegral-le--91bd882f1593e4b6e138cce6",
  "source": {
    "blob": "44c0192c42240884d8c5ec272a56c3ae52098d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 527,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91bd882f1593e4b6e138cce645982e1eaaca15658a7020beecfc34ecfe406f15",
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

Occurrence: `result:7791d28d-11b5-afb9-691b-a65ac1a26e6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integral_sub_setIntegral_le [IsFiniteMeasure μ] {C : ℝ}
    (hf : ∀ᵐ (x : X) ∂μ, ‖f x‖ ≤ C) {s : Set X} (hs : MeasurableSet s) (hf1 : Integrable f μ) :
    ‖∫ (x : X), f x ∂μ - ∫ x in s, f x ∂μ‖ ≤ μ.real sᶜ * C := by
  have h0 : ∫ (x : X), f x ∂μ - ∫ x in s, f x ∂μ = ∫ x in sᶜ, f x ∂μ := by
    rw [sub_eq_iff_eq_add, add_comm, integral_add_compl hs hf1]
  have h1 : ∫ x in sᶜ, ‖f x‖ ∂μ ≤ ∫ _ in sᶜ, C ∂μ :=
    integral_mono_ae hf1.norm.restrict (integrable_const C) (ae_restrict_of_ae hf)
  have h2 : ∫ _ in sᶜ, C ∂μ = μ.real sᶜ * C := by
    rw [setIntegral_const C, smul_eq_mul]
  rw [h0, ← h2]
  exact le_trans (norm_integral_le_integral_norm f) h1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c0192c42240884d8c5ec272a56c3ae52098d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
