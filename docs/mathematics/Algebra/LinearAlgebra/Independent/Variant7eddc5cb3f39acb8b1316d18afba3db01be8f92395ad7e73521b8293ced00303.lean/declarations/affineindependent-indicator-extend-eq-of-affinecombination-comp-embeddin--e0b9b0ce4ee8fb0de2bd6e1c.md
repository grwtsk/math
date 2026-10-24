# AffineIndependent.indicator_extend_eq_of_affineCombination_comp_embedding_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:782b402c-b9c9-ced6-7417-af5112dc90b3",
  "kind": "lemma",
  "lexical_name": "AffineIndependent.indicator_extend_eq_of_affineCombination_comp_embedding_eq",
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
  "slug": "affineindependent-indicator-extend-eq-of-affinecombination-comp-embeddin--e0b9b0ce4ee8fb0de2bd6e1c",
  "source": {
    "blob": "cbdbc0e00222ec1efb7a6f5a9996548a64749fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 400,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0b9b0ce4ee8fb0de2bd6e1cca36da15ece568cd5a659461d626e0768f1e97f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:782b402c-b9c9-ced6-7417-af5112dc90b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AffineIndependent.indicator_extend_eq_of_affineCombination_comp_embedding_eq {ι₂ : Type*}
    {p : ι → P} (ha : AffineIndependent k p) {s₁ : Finset ι} {s₂ : Finset ι₂} {w₁ : ι → k}
    {w₂ : ι₂ → k} (hw₁ : ∑ i ∈ s₁, w₁ i = 1) (hw₂ : ∑ i ∈ s₂, w₂ i = 1) (e : ι₂ ↪ ι)
    (h : s₂.affineCombination k (p ∘ e) w₂ = s₁.affineCombination k p w₁) :
    Set.indicator (s₂.map e) (extend e w₂ 0) = Set.indicator s₁ w₁ := by
  have hw₂e : extend e w₂ 0 ∘ e = w₂ := extend_comp e.injective _ _
  rw [← hw₂e, ← affineCombination_map] at h
  refine (ha.indicator_eq_of_affineCombination_eq s₁ (s₂.map e) _ _ hw₁ ?_ h.symm).symm
  rw [sum_map]
  convert! hw₂ with i hi
  exact e.injective.extend_apply _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbdbc0e00222ec1efb7a6f5a9996548a64749fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
