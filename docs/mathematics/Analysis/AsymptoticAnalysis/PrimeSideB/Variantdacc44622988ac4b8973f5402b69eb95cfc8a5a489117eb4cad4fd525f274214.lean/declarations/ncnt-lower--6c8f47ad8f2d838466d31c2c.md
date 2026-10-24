# Ncnt_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "562865ec2246891b67f3fba67e897c39c83cdf16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 408,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10253760-daa5-7788-3c39-cdfc3349df15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4acb775-2548-8a1b-603f-6a90fab55195",
  "kind": "lemma",
  "lexical_name": "Ncnt_lower",
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
  "slug": "ncnt-lower--6c8f47ad8f2d838466d31c2c",
  "source": {
    "blob": "562865ec2246891b67f3fba67e897c39c83cdf16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 408,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c8f47ad8f2d838466d31c2c3da34a2493d2ff5fb9b9ab7b589b05f63d1d106f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4acb775-2548-8a1b-603f-6a90fab55195`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ncnt_lower : ∀ᶠ T in atTop, T * l T / (4 * π) ≤ D.Ncnt T := by
  obtain ⟨A, hA, hN⟩ := h.rvm.eventually_le
  filter_upwards [hN, eventually_ge_atTop (4 * π * A), eventually_l_ge 0] with T hN hTA hl
  have hπ := Real.pi_pos
  have h1 : -(A * l T) ≤ D.Ncnt T - T * ell1 T / (2 * π) := (abs_le.mp hN).1
  have h2 : T * l T ≤ T * ell1 T := mul_le_mul_of_nonneg_left (l_le_ell1 T) (by nlinarith)
  have h3 : T * l T / (2 * π) ≤ T * ell1 T / (2 * π) := div_le_div_of_nonneg_right h2 (by positivity)
  have h4 : T * l T / (4 * π) = T * l T / (2 * π) - T * l T / (4 * π) := by ring
  have h5 : A * l T ≤ T * l T / (4 * π) := by
    rw [le_div_iff₀ (by positivity)]; nlinarith
  linarith

/-- eventually `T ≤ 4π N(T,2T)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `562865ec2246891b67f3fba67e897c39c83cdf16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
