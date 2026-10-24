# lintegral_const_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88c83bebbb2afb93da4842a5e0ccc24646769e6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5930d67c-4c37-365d-2595-199cbab7b42d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:640a7454-70ed-e411-9372-e27670f5cd89",
  "kind": "theorem",
  "lexical_name": "lintegral_const_mul_le",
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
  "slug": "lintegral-const-mul-le--10f54c9266a69c3cb4108f23",
  "source": {
    "blob": "88c83bebbb2afb93da4842a5e0ccc24646769e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 409,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10f54c9266a69c3cb4108f23d7f5d7f3ec8e12351a4d838b9eb5862c03503291",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:640a7454-70ed-e411-9372-e27670f5cd89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_const_mul_le (r : ℝ≥0∞) (f : α → ℝ≥0∞) :
    r * ∫⁻ a, f a ∂μ ≤ ∫⁻ a, r * f a ∂μ := by
  rw [lintegral, ENNReal.mul_iSup]
  refine iSup_le fun s => ?_
  rw [ENNReal.mul_iSup, iSup_le_iff]
  intro hs
  rw [← SimpleFunc.const_mul_lintegral, lintegral]
  refine le_iSup_of_le (const α r * s) (le_iSup_of_le (fun x => ?_) le_rfl)
  dsimp
  grw [hs x]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88c83bebbb2afb93da4842a5e0ccc24646769e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
