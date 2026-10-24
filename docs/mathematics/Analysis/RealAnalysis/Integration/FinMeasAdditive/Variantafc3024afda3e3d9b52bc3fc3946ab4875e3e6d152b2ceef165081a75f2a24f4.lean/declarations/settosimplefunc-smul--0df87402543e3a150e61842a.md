# setToSimpleFunc_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b03dc6a255a28044d8e3f269005139e450514ee6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8871713-48d7-3fe7-25b8-9a5c9a0b916a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cd8bcd9-a36d-2ae3-945e-9ccb5c3387bb",
  "kind": "theorem",
  "lexical_name": "setToSimpleFunc_smul",
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
  "slug": "settosimplefunc-smul--0df87402543e3a150e61842a",
  "source": {
    "blob": "b03dc6a255a28044d8e3f269005139e450514ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 421,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0df87402543e3a150e61842a40156ec86a2bfbe02416d559c20edfe8ef2e8b35",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cd8bcd9-a36d-2ae3-945e-9ccb5c3387bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToSimpleFunc_smul {E} [NormedAddCommGroup E] [SMulZeroClass 𝕜 E]
    [NormedSpace ℝ E] [DistribSMul 𝕜 F] (T : Set α → E →L[ℝ] F) (h_add : FinMeasAdditive μ T)
    (h_smul : ∀ c : 𝕜, ∀ s x, T s (c • x) = c • T s x) (c : 𝕜) {f : α →ₛ E} (hf : Integrable f μ) :
    setToSimpleFunc T (c • f) = c • setToSimpleFunc T f :=
  calc
    setToSimpleFunc T (c • f) = ∑ x ∈ f.range, T (f ⁻¹' {x}) (c • x) := by
      rw [smul_eq_map c f, map_setToSimpleFunc T h_add hf]; dsimp only; rw [smul_zero]
    _ = ∑ x ∈ f.range, c • T (f ⁻¹' {x}) x := Finset.sum_congr rfl fun b _ => by rw [h_smul]
    _ = c • setToSimpleFunc T f := by simp only [setToSimpleFunc, smul_sum, smul_smul, mul_comm]

section Order

variable {G' G'' : Type*}
  [NormedAddCommGroup G''] [PartialOrder G''] [IsOrderedAddMonoid G''] [NormedSpace ℝ G'']
  [NormedAddCommGroup G'] [PartialOrder G'] [NormedSpace ℝ G']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03dc6a255a28044d8e3f269005139e450514ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
