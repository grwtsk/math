# normalization_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:983376eb-a9cc-4e60-9507-6769c5e13301",
  "kind": "theorem",
  "lexical_name": "normalization_bounds",
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
  "slug": "normalization-bounds--dae46953fcf75d0799ef4ea6",
  "source": {
    "blob": "0e7681b2a0d26b51028dfdd514925a6a039bdd8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dae46953fcf75d0799ef4ea6e7f6a2bc8354bc139c1042e67838bc18ce244230",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:983376eb-a9cc-4e60-9507-6769c5e13301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalization_bounds {A : ℝ} (hA : 1 ≤ A) :
    (4096/109395 : ℝ) ≤ sourceNormalization A ∧
      sourceNormalization A-(4096/109395 : ℝ) ≤
        (65536/45045+196608/5005)/A^2 := by
  have hp : 0 < A := by linarith
  have h2 : 1 ≤ A^2 := one_le_pow₀ hA
  have h4 : A^2 ≤ A^4 := by nlinarith [sq_nonneg (A^2-1)]
  have ht : (196608/5005 : ℝ)/A^4 ≤ (196608/5005 : ℝ)/A^2 := by
    gcongr
  unfold sourceNormalization
  constructor
  · have hfirst : (0 : ℝ) ≤ (131072/45045)/(2*A^2) := by positivity
    have hlast : (0 : ℝ) ≤ (196608/5005)/A^4 := by positivity
    norm_num only [show (65536/109395 : ℝ)/16 = 4096/109395 by norm_num]
    linarith
  · have he : (65536/109395 : ℝ)/16=4096/109395 := by norm_num
    rw [he]
    have he2 : (131072/45045 : ℝ)/(2*A^2)=(65536/45045 : ℝ)/A^2 := by ring
    rw [he2]
    calc
      _ = (65536/45045 : ℝ)/A^2+(196608/5005 : ℝ)/A^4 := by ring
      _ ≤ (65536/45045 : ℝ)/A^2+(196608/5005 : ℝ)/A^2 := add_le_add_right ht _
      _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e7681b2a0d26b51028dfdd514925a6a039bdd8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
