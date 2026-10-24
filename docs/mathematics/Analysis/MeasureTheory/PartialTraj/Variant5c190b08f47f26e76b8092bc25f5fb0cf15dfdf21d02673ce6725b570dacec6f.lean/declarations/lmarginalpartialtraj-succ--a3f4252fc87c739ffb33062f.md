# lmarginalPartialTraj_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1269b5ba-02e7-9841-774e-13675da5ea87",
  "kind": "lemma",
  "lexical_name": "lmarginalPartialTraj_succ",
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
  "slug": "lmarginalpartialtraj-succ--a3f4252fc87c739ffb33062f",
  "source": {
    "blob": "8d100aa339def3bd261e1aba6660d7bf711a26d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 333,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3f4252fc87c739ffb33062fbfd48f0987efa127ffcf830d70c0d4eb9832abc3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1269b5ba-02e7-9841-774e-13675da5ea87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lmarginalPartialTraj_succ [∀ n, IsSFiniteKernel (κ n)] (a : ℕ)
    {f : (Π n, X n) → ℝ≥0∞} (mf : Measurable f) (x₀ : Π n, X n) :
    lmarginalPartialTraj κ a (a + 1) f x₀ =
      ∫⁻ x : X (a + 1), f (update x₀ _ x) ∂κ a (frestrictLe a x₀) := by
  rw [lmarginalPartialTraj, partialTraj_succ_self, lintegral_map, lintegral_id_prod, lintegral_map]
  · congrm ∫⁻ x, f (fun i ↦ ?_) ∂_
    simp only [updateFinset, mem_Iic, IicProdIoc_def, frestrictLe_apply, piSingleton,
      MeasurableEquiv.coe_mk, Equiv.coe_fn_mk, update]
    split_ifs with h1 h2 h3 <;> try rfl
    all_goals omega
  all_goals fun_prop

@[measurability, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d100aa339def3bd261e1aba6660d7bf711a26d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
