# blimsup_thickening_mul_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40e2d6f9d7c860630ff6f56d3d8d59910debae71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc845117-37b6-89eb-a219-67cd0403e6aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4236d26e-8955-f2d0-1b3c-d8be4b88d66e",
  "kind": "theorem",
  "lexical_name": "blimsup_thickening_mul_ae_eq",
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
  "slug": "blimsup-thickening-mul-ae-eq--c9a02611aa9b1719d058056d",
  "source": {
    "blob": "40e2d6f9d7c860630ff6f56d3d8d59910debae71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9a02611aa9b1719d058056d41e2599ff655d1e7a58ab4aea32424a752ce6ea0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4236d26e-8955-f2d0-1b3c-d8be4b88d66e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blimsup_thickening_mul_ae_eq (p : ℕ → Prop) (s : ℕ → Set α) {M : ℝ} (hM : 0 < M) (r : ℕ → ℝ)
    (hr : Tendsto r atTop (𝓝 0)) :
    (blimsup (fun i => thickening (M * r i) (s i)) atTop p : Set α) =ᵐ[μ]
      (blimsup (fun i => thickening (r i) (s i)) atTop p : Set α) := by
  let q : ℕ → Prop := fun i => p i ∧ 0 < r i
  have hq {u : ℕ → Set α} (hu : ∀ i, u i ≠ ∅ → 0 < r i) :
      blimsup u atTop p = blimsup u atTop q :=
    blimsup_congr' <| Eventually.of_forall fun i hi ↦ by simp [q, hu i hi]
  rw [hq fun i hi ↦ (thickening_nonempty_iff.1 <| nonempty_iff_ne_empty.2 hi).1,
    hq fun i hi ↦ (mul_pos_iff_of_pos_left hM).1 <|
      (thickening_nonempty_iff.1 <| nonempty_iff_ne_empty.2 hi).1]
  exact blimsup_thickening_mul_ae_eq_aux μ q s hM r hr (Eventually.of_forall fun i hi => hi.2)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e2d6f9d7c860630ff6f56d3d8d59910debae71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
