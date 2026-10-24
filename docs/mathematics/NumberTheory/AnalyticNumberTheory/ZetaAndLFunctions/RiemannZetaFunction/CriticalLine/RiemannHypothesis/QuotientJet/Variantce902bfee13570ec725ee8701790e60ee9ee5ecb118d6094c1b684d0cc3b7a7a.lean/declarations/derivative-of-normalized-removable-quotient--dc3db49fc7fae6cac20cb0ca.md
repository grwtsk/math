# derivative_of_normalized_removable_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "104bb07f9572ac6c8e6af40504e7411f7408759d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05f86008-cedd-724f-a1e8-b6e6eb33a00d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a78b5430-91b5-0546-7d8d-3728f684b926",
  "kind": "theorem",
  "lexical_name": "derivative_of_normalized_removable_quotient",
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
  "slug": "derivative-of-normalized-removable-quotient--dc3db49fc7fae6cac20cb0ca",
  "source": {
    "blob": "104bb07f9572ac6c8e6af40504e7411f7408759d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuotientJet/Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc3db49fc7fae6cac20cb0ca77d14da00071240f3a0f289d1ed718c347336c4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuotientJet/Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a78b5430-91b5-0546-7d8d-3728f684b926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_of_normalized_removable_quotient
    {u v : ℂ → ℂ} {z₀ du dv k : ℂ}
    (hu : HasDerivAt u du z₀) (hv : HasDerivAt v dv z₀)
    (hu₀ : u z₀ ≠ 0) (hk : k ≠ 0)
    (hvalue : v z₀ = k * u z₀) :
    HasDerivAt (fun z : ℂ ↦ (z - z₀) * u z / v z) k⁻¹ z₀ := by
  have hv₀ : v z₀ ≠ 0 := by
    rw [hvalue]
    exact mul_ne_zero hk hu₀
  have h := (((hasDerivAt_id z₀).sub_const z₀).mul hu).div hv hv₀
  simp only [Pi.mul_apply, id_eq] at h
  apply h.congr_deriv
  simp only [sub_self, zero_mul, one_mul, add_zero, sub_zero]
  rw [hvalue]
  field_simp [hk, hu₀]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuotientJet/Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuotientJet/Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104bb07f9572ac6c8e6af40504e7411f7408759d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
