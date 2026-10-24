# centered_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ce99ede775e5c4726064fac107c1d878c51c659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51be4013-229f-06ef-d0f7-78f049f66f49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1771548-5896-9d9a-1320-8eb1a1545425",
  "kind": "theorem",
  "lexical_name": "centered_square_integral",
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
  "slug": "centered-square-integral--3d6114c2ac8d1ba3683f2624",
  "source": {
    "blob": "5ce99ede775e5c4726064fac107c1d878c51c659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 224,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d6114c2ac8d1ba3683f26240bfbbfff212a82829ac4e03d7f8176b650588812",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1771548-5896-9d9a-1320-8eb1a1545425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_square_integral (c : ℝ) {t : ℝ} (ht : 0 ≤ t) :
    (∫ x, (x - c) ^ 2 ∂momentMeasure t) =
      moment t 2 - 2 * c * moment t 1 + c ^ 2 * moment t 0 := by
  have h0 := moment_power_integrable 0 ht
  have h1 := moment_power_integrable 1 ht
  have h2 := moment_power_integrable 2 ht
  calc
    _ = ∫ x, x ^ 2 + (-2 * c) * x ^ 1 + c ^ 2 * x ^ 0 ∂momentMeasure t := by
      apply integral_congr_ae
      filter_upwards [] with x
      ring
    _ = moment t 2 + (-2 * c) * moment t 1 + c ^ 2 * moment t 0 := by
      rw [integral_add (f := fun x : ℝ => x ^ 2 + (-2 * c) * x ^ 1)
        (g := fun x : ℝ => c ^ 2 * x ^ 0) (h2.add (h1.const_mul _)) (h0.const_mul _),
        integral_add (f := fun x : ℝ => x ^ 2) (g := fun x : ℝ => (-2 * c) * x ^ 1)
          h2 (h1.const_mul _), integral_const_mul, integral_const_mul]
      rfl
    _ = _ := by ring

/-- No affine observable is almost everywhere constant for the actual density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ce99ede775e5c4726064fac107c1d878c51c659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
