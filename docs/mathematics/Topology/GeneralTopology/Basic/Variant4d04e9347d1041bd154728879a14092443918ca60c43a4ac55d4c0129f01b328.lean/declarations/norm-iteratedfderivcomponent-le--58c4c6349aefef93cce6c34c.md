# norm_iteratedFDerivComponent_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca4b701a-be55-1352-9359-43ee18144c36",
  "kind": "lemma",
  "lexical_name": "norm_iteratedFDerivComponent_le",
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
  "slug": "norm-iteratedfderivcomponent-le--58c4c6349aefef93cce6c34c",
  "source": {
    "blob": "99c54afef0043a93d86986320aa79171a7001433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1258,
    "line": 1234,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58c4c6349aefef93cce6c34cd2f0fce3f81db7938cd3d79273eb7c5a785fb375",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca4b701a-be55-1352-9359-43ee18144c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1234–1258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_iteratedFDerivComponent_le {α : Type*} [Fintype α]
    (f : ContinuousMultilinearMap 𝕜 E₁ G) {s : Set ι} (e : α ≃ s) [DecidablePred (· ∈ s)]
    (x : (i : ι) → E₁ i) :
    ‖f.iteratedFDerivComponent e (x ·)‖ ≤ ‖f‖ * ‖x‖ ^ (Fintype.card ι - Fintype.card α) := calc
  ‖f.iteratedFDerivComponent e (fun i ↦ x i)‖
    ≤ ‖f.iteratedFDerivComponent e‖ * ∏ i : {a : ι // a ∉ s}, ‖x i‖ :=
      ContinuousMultilinearMap.le_opNorm _ _
  _ ≤ ‖f‖ * ∏ _i : {a : ι // a ∉ s}, ‖x‖ := by
      gcongr
      · exact MultilinearMap.mkContinuousMultilinear_norm_le _ (norm_nonneg _) _
      · exact norm_le_pi_norm _ _
  _ = ‖f‖ * ‖x‖ ^ (Fintype.card {a : ι // a ∉ s}) := by rw [prod_const, card_univ]
  _ = ‖f‖ * ‖x‖ ^ (Fintype.card ι - Fintype.card α) := by simp [Fintype.card_congr e]

open Classical in
/-- The `k`-th iterated derivative of a continuous multilinear map `f` at the point `x`. It is a
continuous multilinear map of `k` vectors `v₁, ..., vₖ` (with the same type as `x`), mapping them
to `∑ f (x₁, (v_{i₁})₂, x₃, ...)`, where at each index `j` one uses either `xⱼ` or one
of the `(vᵢ)ⱼ`, and each `vᵢ` has to be used exactly once.
The sum is parameterized by the embeddings of `Fin k` in the index type `ι` (or, equivalently,
by the subsets `s` of `ι` of cardinality `k` and then the bijections between `Fin k` and `s`).

The fact that this is indeed the iterated Fréchet derivative is proved in
`ContinuousMultilinearMap.iteratedFDeriv_eq`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean#L1234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c54afef0043a93d86986320aa79171a7001433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
