# affineTrend_abs_le_of_endpoint_samples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5303553b-3896-a84b-cd6b-391e8ac68c77",
  "kind": "theorem",
  "lexical_name": "affineTrend_abs_le_of_endpoint_samples",
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
  "slug": "affinetrend-abs-le-of-endpoint-samples--5d85cd1e7553ca9bd4e8f3cd",
  "source": {
    "blob": "1466ed9255cb76417b8d94701a259f187ddc0122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 317,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d85cd1e7553ca9bd4e8f3cda78cebe0fc0a0fa36b6e10657cf9342d37d81129",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5303553b-3896-a84b-cd6b-391e8ac68c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineTrend_abs_le_of_endpoint_samples (A K s : ℝ) (hK : 0 ≤ K) (hA : 1 ≤ A)
    (hs : s ∈ Icc 0 (2 * A))
    (hp : |endpointValue A| ≤ K / A ^ 2)
    (hb : |endpointSlope A| ≤ 2 * K / A ^ 2) :
    |affineTrend A s| ≤ 5 * K / A := by
  have hpos : 0 < A := by linarith
  have hden : 0 < A ^ 2 := sq_pos_of_pos hpos
  have hs0 : 0 ≤ 2 * A - s := by linarith [hs.2]
  have ht : 2 * A - s ≤ 2 * A := by linarith [hs.1]
  have hbase : K / A ^ 2 ≤ K / A := by
    apply (div_le_div_iff₀ hden hpos).mpr
    exact mul_le_mul_of_nonneg_left (by nlinarith : A ≤ A ^ 2) hK
  unfold affineTrend
  calc
    |endpointValue A + endpointSlope A * (2 * A - s)| ≤
        |endpointValue A| + |endpointSlope A * (2 * A - s)| := abs_add_le _ _
    _ = |endpointValue A| + |endpointSlope A| * (2 * A - s) := by
      rw [abs_mul, abs_of_nonneg hs0]
    _ ≤ K / A ^ 2 + (2 * K / A ^ 2) * (2 * A - s) :=
      add_le_add hp (mul_le_mul_of_nonneg_right hb hs0)
    _ ≤ K / A ^ 2 + (2 * K / A ^ 2) * (2 * A) :=
      add_le_add le_rfl (mul_le_mul_of_nonneg_left ht
        (by positivity : (0 : ℝ) ≤ 2 * K / A ^ 2))
    _ = K / A ^ 2 + 4 * K / A := by field_simp; ring
    _ ≤ K / A + 4 * K / A := add_le_add hbase le_rfl
    _ = 5 * K / A := by ring

/-- This sample radius is conditional on its endpoint providers; it proves no PNT input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant7ce71726fa9bf451ec896cb08be09f92dfd6b56a07c6baaae4773bbbeabee0c2.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1466ed9255cb76417b8d94701a259f187ddc0122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
