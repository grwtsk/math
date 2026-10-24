# eq_top_of_mem_invtSubmodule_of_forall_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cd88e9238d2317a31f492366afea9f7bda61786",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59cc9a20-4601-2b28-588f-0e423f273f0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff30bc4a-8cf8-5c4d-43f2-28ba394912db",
  "kind": "lemma",
  "lexical_name": "eq_top_of_mem_invtSubmodule_of_forall_eq_univ",
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
  "slug": "eq-top-of-mem-invtsubmodule-of-forall-eq-univ--f4448955cb0168b213e9ec13",
  "source": {
    "blob": "1cd88e9238d2317a31f492366afea9f7bda61786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variantb87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4448955cb0168b213e9ec138953ddc24a9bf6be40822b2830c5756f63e302fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Variantb87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff30bc4a-8cf8-5c4d-43f2-28ba394912db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_top_of_mem_invtSubmodule_of_forall_eq_univ
    {K : Type*} [Field K] [NeZero (2 : K)] [Module K M] [Module K N]
    (P : RootPairing ι K M N) [P.IsRootSystem]
    (q : Submodule K M)
    (h₀ : q ≠ ⊥)
    (h₁ : ∀ i, q ∈ invtSubmodule (P.reflection i))
    (h₂ : ∀ Φ, Φ.Nonempty → P.root '' Φ ⊆ q → (∀ i ∉ Φ, q ≤ ker (P.coroot' i)) → Φ = univ) :
    q = ⊤ := by
  obtain ⟨Φ, b, c⟩ := P.exist_set_root_not_disjoint_and_le_ker_coroot'_of_invtSubmodule q h₁
  rcases Φ.eq_empty_or_nonempty with rfl | hΦ
  · replace c : q ≤ ⨅ i, LinearMap.ker (P.coroot' i) := by simpa using! c
    simp [h₀, ← P.corootSpan_dualAnnihilator_map_eq_iInf_ker_coroot'] at c
  · replace b : P.root '' Φ ⊆ q := by
      simpa [Submodule.disjoint_span_singleton' (P.ne_zero _)] using! b
    simpa [h₂ Φ hΦ b c, ← span_le] using! b

end RootPairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Variantb87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Variantb87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cd88e9238d2317a31f492366afea9f7bda61786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
