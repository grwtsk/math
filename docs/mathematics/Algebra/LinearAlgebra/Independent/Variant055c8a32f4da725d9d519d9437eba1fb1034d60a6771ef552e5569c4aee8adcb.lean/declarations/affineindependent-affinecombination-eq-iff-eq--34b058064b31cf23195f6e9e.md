# AffineIndependent.affineCombination_eq_iff_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc19e85671d53a7b2d70c4149305140ab1a40e90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b12b12fb-f92e-4c9a-382e-0dc016b5f3f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad1fa044-4949-5252-d53f-20d501b644ee",
  "kind": "lemma",
  "lexical_name": "AffineIndependent.affineCombination_eq_iff_eq",
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
  "slug": "affineindependent-affinecombination-eq-iff-eq--34b058064b31cf23195f6e9e",
  "source": {
    "blob": "cc19e85671d53a7b2d70c4149305140ab1a40e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 270,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34b058064b31cf23195f6e9ea5d181eb3a36b2c316e692f9794be012e8d96606",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad1fa044-4949-5252-d53f-20d501b644ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AffineIndependent.affineCombination_eq_iff_eq {p : ι → P} (ha : AffineIndependent k p)
    {w₁ w₂ : ι → k} {s : Finset ι} (hw₁ : ∑ i ∈ s, w₁ i = 1) (hw₂ : ∑ i ∈ s, w₂ i = 1) :
    s.affineCombination k p w₁ = s.affineCombination k p w₂ ↔ ∀ i ∈ s, w₁ i = w₂ i := by
  refine ⟨fun h ↦ ?_, fun h ↦ s.affineCombination_congr h fun _ _ ↦ rfl⟩
  have hi := ha.indicator_eq_of_affineCombination_eq _ _ _ _ hw₁ hw₂ h
  intro i hs
  suffices Set.indicator s w₁ i = Set.indicator s w₂ i by simpa [hs] using this
  simp [hi]

/-- An affinely independent family is injective, if the underlying
ring is nontrivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc19e85671d53a7b2d70c4149305140ab1a40e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
