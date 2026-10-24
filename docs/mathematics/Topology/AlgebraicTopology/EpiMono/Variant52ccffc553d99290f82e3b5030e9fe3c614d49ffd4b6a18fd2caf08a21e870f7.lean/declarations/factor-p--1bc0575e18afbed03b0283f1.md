# factor_P_δ_σ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0a2e6cf-66e9-5520-70ae-22b2da7890ba",
  "kind": "lemma",
  "lexical_name": "factor_P_δ_σ",
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
  "slug": "factor-p--1bc0575e18afbed03b0283f1",
  "source": {
    "blob": "7c0eb86ab9302f55fdb3de15c95412434e245ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 148,
    "path": "GRWTSK/Topology/AlgebraicTopology/EpiMono/Variant52ccffc553d99290f82e3b5030e9fe3c614d49ffd4b6a18fd2caf08a21e870f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bc0575e18afbed03b0283f1fa8453a056073d39c3274b71c904fcd1be63699a",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/EpiMono/Variant52ccffc553d99290f82e3b5030e9fe3c614d49ffd4b6a18fd2caf08a21e870f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0a2e6cf-66e9-5520-70ae-22b2da7890ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma factor_P_δ_σ {n : ℕ} (i : Fin (n + 1)) {x : SimplexCategoryGenRel}
    (f : x ⟶ mk (n + 1)) (hf : P_δ f) : ∃ (z : SimplexCategoryGenRel) (e : x ⟶ z) (m : z ⟶ mk n)
      (_ : P_σ e) (_ : P_δ m), f ≫ σ i = e ≫ m := by
  induction n generalizing x with
  | zero => cases hf with
    | of _ h => cases h; exact factor_δ_σ _ _
    | id  => exact ⟨_, _, _, P_σ.σ i, P_δ.id_mem _, by simp⟩
    | comp_of j f hf hg =>
      obtain ⟨k⟩ := hg
      obtain ⟨rfl, rfl⟩ | hf' := eq_or_len_le_of_P_δ hf
      · simpa using factor_δ_σ i k
      · simp at hf'
  | succ n hn =>
    cases hf with
    | of _ h => cases h; exact factor_δ_σ _ _
    | id n => exact ⟨_, _, _, P_σ.σ i, P_δ.id_mem _, by simp⟩
    | comp_of f g hf hg =>
      obtain ⟨k⟩ := hg
      obtain ⟨rfl, rfl⟩ | h' := eq_or_len_le_of_P_δ hf
      · simpa using factor_δ_σ i k
      · obtain h'' | ⟨j, j', h''⟩ := switch_δ_σ i k
        · exact ⟨_, _, _, P_σ.id_mem _, hf, by simp [h'']⟩
        · obtain ⟨z, e, m, he, hm, fac⟩ := hn j f hf
          exact ⟨z, e, m ≫ δ j', he, P_δ.comp_mem _ _ hm (P_δ.δ j'),
            by simp [h'', reassoc_of% fac]⟩

/-- Any morphism in `SimplexCategoryGenRel` can be decomposed as a `P_σ` followed by a `P_δ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/EpiMono/Variant52ccffc553d99290f82e3b5030e9fe3c614d49ffd4b6a18fd2caf08a21e870f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/EpiMono/Variant52ccffc553d99290f82e3b5030e9fe3c614d49ffd4b6a18fd2caf08a21e870f7.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c0eb86ab9302f55fdb3de15c95412434e245ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
