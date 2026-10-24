# coe_negPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "983362255ba0f61e8e71fa655f81c2cf5c5a0d13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:515547c0-9c4a-1d25-b98a-bc4dffc1fc75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8d66c94-b666-69e9-865b-b80569e14d68",
  "kind": "theorem",
  "lexical_name": "coe_negPart",
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
  "slug": "coe-negpart--d8d1401308a3ca6bfb2ce96f",
  "source": {
    "blob": "983362255ba0f61e8e71fa655f81c2cf5c5a0d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 401,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8d1401308a3ca6bfb2ce96f0422c3ff218194c5d114d28b8c445494feec9ff9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d66c94-b666-69e9-865b-b80569e14d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_negPart (f : α →₁ₛ[μ] ℝ) : (negPart f : α →₁[μ] ℝ) = Lp.negPart (f : α →₁[μ] ℝ) := rfl

end PosPart

section SimpleFuncIntegral

/-!
### The Bochner integral of `L1`

Define the Bochner integral on `α →₁ₛ[μ] E` by extension from the simple functions `α →₁ₛ[μ] E`,
and prove basic properties of this integral. -/

variable [NormedRing 𝕜] [Module 𝕜 E] [IsBoundedSMul 𝕜 E] [NormedSpace ℝ E] [SMulCommClass ℝ 𝕜 E]

attribute [local instance] simpleFunc.isBoundedSMul simpleFunc.module simpleFunc.normedSpace

/-- The Bochner integral over simple functions in L1 space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983362255ba0f61e8e71fa655f81c2cf5c5a0d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
