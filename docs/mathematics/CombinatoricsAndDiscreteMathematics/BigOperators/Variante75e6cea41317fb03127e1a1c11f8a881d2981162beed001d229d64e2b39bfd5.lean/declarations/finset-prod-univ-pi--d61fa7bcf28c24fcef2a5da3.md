# Finset.prod_univ_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8564dc3be013dfd34ee2d119eb0096d628cb3436",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e75e6cea41317fb03127e1a1c11f8a881d2981162beed001d229d64e2b39bfd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e5b2e84-3a21-1f3f-e8f6-cfde9936201a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92a645d2-d9e2-3234-1ad8-a0ddb9aec62c",
  "kind": "theorem",
  "lexical_name": "Finset.prod_univ_pi",
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
  "slug": "finset-prod-univ-pi--d61fa7bcf28c24fcef2a5da3",
  "source": {
    "blob": "8564dc3be013dfd34ee2d119eb0096d628cb3436",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variante75e6cea41317fb03127e1a1c11f8a881d2981162beed001d229d64e2b39bfd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d61fa7bcf28c24fcef2a5da3f40a3a2bc2d0e6bbae18006fe6328461615d8773",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variante75e6cea41317fb03127e1a1c11f8a881d2981162beed001d229d64e2b39bfd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92a645d2-d9e2-3234-1ad8-a0ddb9aec62c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.prod_univ_pi [DecidableEq α] [Fintype α] [CommMonoid β] {δ : α → Type*}
    {t : ∀ a : α, Finset (δ a)} (f : (∀ a : α, a ∈ (univ : Finset α) → δ a) → β) :
    ∏ x in univ.pi t, f x = ∏ x in Fintype.piFinset t, f fun a _ => x a := by
  refine prod_bij (fun x _ a => x a (mem_univ _)) ?_ (by simp)
    (by simp (config := { contextual := true }) [Function.funext_iff]) fun x hx =>
    ⟨fun a _ => x a, by simp_all⟩
  -- Porting note: old proof was `by simp`
  intro a ha
  simp only [Fintype.piFinset, mem_map, mem_pi, Function.Embedding.coeFn_mk]
  exact ⟨a, by simpa using ha, by simp⟩
#align finset.prod_univ_pi Finset.prod_univ_pi
#align finset.sum_univ_pi Finset.sum_univ_pi

/-- The product over `univ` of a sum can be written as a sum over the product of sets,
  `Fintype.piFinset`. `Finset.prod_sum` is an alternative statement when the product is not
  over `univ` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variante75e6cea41317fb03127e1a1c11f8a881d2981162beed001d229d64e2b39bfd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variante75e6cea41317fb03127e1a1c11f8a881d2981162beed001d229d64e2b39bfd5.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8564dc3be013dfd34ee2d119eb0096d628cb3436` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
