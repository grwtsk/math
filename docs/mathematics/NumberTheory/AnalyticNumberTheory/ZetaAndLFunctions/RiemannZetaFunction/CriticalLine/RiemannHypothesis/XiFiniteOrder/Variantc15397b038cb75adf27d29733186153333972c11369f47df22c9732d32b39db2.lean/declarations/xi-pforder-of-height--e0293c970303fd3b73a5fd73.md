# xi_pfOrder_of_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5fc626c-5217-28a9-2d58-ea5922105c4e",
  "kind": "theorem",
  "lexical_name": "xi_pfOrder_of_height",
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
  "slug": "xi-pforder-of-height--e0293c970303fd3b73a5fd73",
  "source": {
    "blob": "52b808c3776925575708810fcb34146374bd7b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0293c970303fd3b73a5fd73ab01e8e9b6c9c8a1fe1d403ec0b859979717b45b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5fc626c-5217-28a9-2d58-ea5922105c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_pfOrder_of_height (H : ℝ) (R : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (hsource : ActualPairedProduct) :
    PFOrder R XiToeplitz.coefficient := by
  obtain ⟨h0, P, hlim⟩ := hsource
  apply pfOrder_of_product_limit R (fun j => (P j).map RootFactor.toFactor)
    XiToeplitz.coefficient (XiToeplitz.coefficient 0) h0 _ hlim
  intro j f hf
  obtain ⟨g, _, rfl⟩ := List.mem_map.mp hf
  exact g.admissible H R hH hbound hheight

/-- The conservative height from the published result; it is not a proof witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b808c3776925575708810fcb34146374bd7b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
