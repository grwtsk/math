# derivWithin_fun_finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eaf03e0a-411e-8f0f-5586-7c566f1a9926",
  "kind": "theorem",
  "lexical_name": "derivWithin_fun_finsetProd",
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
  "slug": "derivwithin-fun-finsetprod--9793c219487e722d6990c2d7",
  "source": {
    "blob": "d8b267ca9b23d890e9131c26060b4c917df7fa00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 459,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9793c219487e722d6990c2d7ed3265e7a7625efe4b6ee47ca852b144eff27bbe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaf03e0a-411e-8f0f-5586-7c566f1a9926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivWithin_fun_finsetProd (hf : ∀ i ∈ u, DifferentiableWithinAt 𝕜 (f i) s x) :
    derivWithin (∏ i ∈ u, f i ·) s x =
      ∑ i ∈ u, (∏ j ∈ u.erase i, f j x) • derivWithin (f i) s x := by
  by_cases hsx : UniqueDiffWithinAt 𝕜 s x
  · exact (HasDerivWithinAt.fun_finsetProd fun i hi ↦ (hf i hi).hasDerivWithinAt).derivWithin hsx
  · simp [derivWithin_zero_of_not_uniqueDiffWithinAt hsx]

@[deprecated (since := "2026-04-08")]
alias derivWithin_fun_finset_prod := derivWithin_fun_finsetProd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b267ca9b23d890e9131c26060b4c917df7fa00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
