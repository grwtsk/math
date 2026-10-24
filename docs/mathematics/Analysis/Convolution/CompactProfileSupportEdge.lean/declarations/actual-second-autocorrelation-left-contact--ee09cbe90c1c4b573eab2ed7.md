# actual_second_autocorrelation_left_contact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1180b615-e3da-f8d2-ff28-50f4d16be22b",
  "kind": "theorem",
  "lexical_name": "actual_second_autocorrelation_left_contact",
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
  "slug": "actual-second-autocorrelation-left-contact--ee09cbe90c1c4b573eab2ed7",
  "source": {
    "blob": "1e12c72887d41dd4b2cbebed5db8705ba61d5173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/Analysis/Convolution/CompactProfileSupportEdge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee09cbe90c1c4b573eab2ed7f90b483785a26b11876df32ee4d60d3c7c65d7c0",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactProfileSupportEdge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1180b615-e3da-f8d2-ff28-50f4d16be22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_autocorrelation_left_contact {A : ℝ} (hA : 0 < A) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ h : ℝ, 0 < h → h < ε →
      (normalizedSecondInterior A A / 2) ^ 2 * h ≤
        autocorrelation (secondRepresentative A) (2 * A - h) := by
  have continuous := normalized_second_interior_continuous A
  obtain ⟨ε, positiveε, lower⟩ := positive_traces_eventual_overlap_lower_bound
    (by linarith : -A < A) (continuous.continuousAt (x := -A))
    (continuous.continuousAt (x := A)) (normalized_second_interior_left_pos hA)
    (SourceSeamObstruction.normalized_second_interior_right_pos hA)
    (fun t ↦ translated_product_integrable (second_representative_memLp A) t)
  refine ⟨ε, positiveε, ?_⟩
  intro h positive short
  have result := lower h positive short
  rw [normalized_second_interior_even A A, min_self] at result
  have shift : A - -A - h = 2 * A - h := by ring
  rw [shift] at result
  exact result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactProfileSupportEdge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactProfileSupportEdge.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e12c72887d41dd4b2cbebed5db8705ba61d5173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
