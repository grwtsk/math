# mul_inv_rev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e842f409e4da1ad35fc9d2ff7957d8d13ca3eae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d61b96b-7e68-07a9-3bab-49aac4369a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6608cc90-4ea7-4ec7-d2da-d0c87b0d25d7",
  "kind": "theorem",
  "lexical_name": "mul_inv_rev",
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
  "slug": "mul-inv-rev--042030e40835fbc7baf7463c",
  "source": {
    "blob": "1e842f409e4da1ad35fc9d2ff7957d8d13ca3eae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 256,
    "path": "GRWTSK/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:042030e40835fbc7baf7463c732366a474ad1e7136aec46a9db1cc71f75be7cc",
  "verification": {
    "reference": "docs/verification/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6608cc90-4ea7-4ec7-d2da-d0c87b0d25d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_inv_rev (φ ψ : MvPowerSeries σ k) :
    (φ * ψ)⁻¹ = ψ⁻¹ * φ⁻¹ := by
  by_cases h : constantCoeff (φ * ψ) = 0
  · rw [MvPowerSeries.inv_eq_zero.mpr h]
    simp only [map_mul, mul_eq_zero] at h
    -- we don't have `NoZeroDivisors (MvPowerSeries σ k)` yet,
    rcases h with h | h <;> simp [MvPowerSeries.inv_eq_zero.mpr h]
  · rw [MvPowerSeries.inv_eq_iff_mul_eq_one h]
    simp only [not_or, map_mul, mul_eq_zero] at h
    rw [← mul_assoc, mul_assoc _⁻¹, MvPowerSeries.inv_mul_cancel _ h.left, mul_one,
      MvPowerSeries.inv_mul_cancel _ h.right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e842f409e4da1ad35fc9d2ff7957d8d13ca3eae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
