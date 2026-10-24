# associated_pow_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "866dc76dbc615e86e000fe7ceb7110e6570ccf75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0584c93e-6db3-efa3-a02f-ea7c6dbc038f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db0b05a3-3ba0-b940-e7ef-2b3634f5645c",
  "kind": "theorem",
  "lexical_name": "associated_pow_irreducible",
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
  "slug": "associated-pow-irreducible--a9243ec60930dca2e7197574",
  "source": {
    "blob": "866dc76dbc615e86e000fe7ceb7110e6570ccf75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 317,
    "path": "GRWTSK/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9243ec60930dca2e7197574b77afdb8edd45cadeacde89c2a86ab9144182bff",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db0b05a3-3ba0-b940-e7ef-2b3634f5645c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_pow_irreducible {x : R} (hx : x ≠ 0) {ϖ : R} (hirr : Irreducible ϖ) :
    ∃ n : ℕ, Associated x (ϖ ^ n) := by
  have : WfDvdMonoid R := IsNoetherianRing.wfDvdMonoid
  obtain ⟨fx, hfx⟩ := WfDvdMonoid.exists_factors x hx
  use Multiset.card fx
  have H := hfx.2
  rw [← Associates.mk_eq_mk_iff_associated] at H ⊢
  rw [← H, ← Associates.prod_mk, Associates.mk_pow, ← Multiset.prod_replicate]
  congr 1
  rw [Multiset.eq_replicate]
  simp only [true_and, and_imp, Multiset.card_map, eq_self_iff_true, Multiset.mem_map, exists_imp]
  rintro _ _ _ rfl
  rw [Associates.mk_eq_mk_iff_associated]
  refine associated_of_irreducible _ ?_ hirr
  apply hfx.1
  assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `866dc76dbc615e86e000fe7ceb7110e6570ccf75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
