# wholeCubicErrorRow_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3249402-b60b-f6a7-17f7-30b28b7448b1",
  "kind": "theorem",
  "lexical_name": "wholeCubicErrorRow_abs_le",
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
  "slug": "wholecubicerrorrow-abs-le--850a0909ad884948ed9ed446",
  "source": {
    "blob": "34114111aca5f0278531bb06d2a61309f4c4f6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850a0909ad884948ed9ed446114a784ab77ce384ba084241c4fa6f9fa1c21ab4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3249402-b60b-f6a7-17f7-30b28b7448b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wholeCubicErrorRow_abs_le {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    |wholeCubicErrorRow A k| ≤ 42880 / (A ^ 4 * Real.sqrt k) := by
  unfold wholeCubicErrorRow
  have hb := norm_integral_le_of_norm_le (wholeCubicMajorant_integrable A k) (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs]
    exact actual_whole_error_le_majorant hA hk hu)
  rw [Real.norm_eq_abs] at hb
  exact hb.trans (wholeCubicMajorant_integral_le A k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34114111aca5f0278531bb06d2a61309f4c4f6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
