# norm_source_sub_average_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd86ef9b-f48d-bc35-8572-2025b421fba7",
  "kind": "theorem",
  "lexical_name": "norm_source_sub_average_le",
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
  "slug": "norm-source-sub-average-le--ff9f44223a4569c7e728cd28",
  "source": {
    "blob": "a273cee76da0009cdd60eb0d7f166683085d4d4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/NumberTheory/Chebyshev/RawSymmetricAverages.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff9f44223a4569c7e728cd28c5db1514f46589796a847d264bd09df3d0fa8226",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RawSymmetricAverages.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd86ef9b-f48d-bc35-8572-2025b421fba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_source_sub_average_le (M : ℕ) (hM : 2 ≤ M) (h T : ℝ)
    (hh : 0 < h) (hsmall : h ≤ 1) (ha : 1 < (M:ℝ)-h) (hT : 2 ≤ T) :
    ‖(psiHalf (M:ℝ):ℂ)-rawAverage M h T‖ ≤ rawAverageTailBudget M h T := by
  unfold rawAverage
  rw [integral_rawClassicalHead _ _ T ha (by linarith)]
  have hp : (M:ℝ)+h ≤ (M+3:ℕ) := by push_cast; linarith
  have hm : (M:ℝ)-h ≤ (M+3:ℕ) := by push_cast; linarith
  exact pointwise_reconstruction_error M (M+3) hM (by omega) h hh hsmall _ _ _ _
    (norm_primitive_error_le (M+3) ((M:ℝ)+h) T (by omega) (by linarith) hp hT)
    (norm_primitive_error_le (M+3) ((M:ℝ)-h) T (by omega) ha hm hT)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RawSymmetricAverages.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RawSymmetricAverages.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a273cee76da0009cdd60eb0d7f166683085d4d4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
