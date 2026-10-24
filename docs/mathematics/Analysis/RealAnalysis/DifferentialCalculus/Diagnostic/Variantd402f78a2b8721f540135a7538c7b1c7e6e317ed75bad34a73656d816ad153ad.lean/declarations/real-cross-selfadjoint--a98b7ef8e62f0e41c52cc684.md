# real_cross_selfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "016931a51027ffd12444349cb66c690eaaf5d594",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:879ad1a3-b007-1dd1-b5b0-9a387f5703a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85398157-b3fd-81a5-ba3d-243abe871a40",
  "kind": "theorem",
  "lexical_name": "real_cross_selfAdjoint",
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
  "slug": "real-cross-selfadjoint--a98b7ef8e62f0e41c52cc684",
  "source": {
    "blob": "016931a51027ffd12444349cb66c690eaaf5d594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a98b7ef8e62f0e41c52cc6841c38b1aba2073b96edc34a403c906e7b2fc893ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85398157-b3fd-81a5-ba3d-243abe871a40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_cross_selfAdjoint [CompleteSpace H] (K : H →L[ℂ] H)
    (hK : IsSelfAdjoint K) (x y : H) :
    (⟪y, K x⟫_ℂ).re = (⟪x, K y⟫_ℂ).re := by
  have hs := hK.isSymmetric x y
  change ⟪K x, y⟫_ℂ = ⟪x, K y⟫_ℂ at hs
  rw [← hs, ← inner_conj_symm (K x) y]
  rfl

/-- Exact quadratic addition preserves the signed cross interaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016931a51027ffd12444349cb66c690eaaf5d594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
