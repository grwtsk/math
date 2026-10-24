# mem_closure_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97d370a4-d9bf-0006-1cb6-dcedf1cd4289",
  "kind": "lemma",
  "lexical_name": "mem_closure_finset",
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
  "slug": "mem-closure-finset--b33209cf06b9d88303d05ffa",
  "source": {
    "blob": "671127975658739876d377bf037141a7e6a23ead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd5d6e47beae00c915a076a86ff31a3441d6fd64dd97b0691f960f9b20b44d9a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b33209cf06b9d88303d05ffa6f71fbe9220e872d45d04630fb0cb329ae9f078b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd5d6e47beae00c915a076a86ff31a3441d6fd64dd97b0691f960f9b20b44d9a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97d370a4-d9bf-0006-1cb6-dcedf1cd4289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_closure_finset {s : Finset M} :
    x ∈ closure s ↔ ∃ f : M → ℕ, f.support ⊆ s ∧ ∏ a ∈ s, a ^ f a = x where
  mp := by
    rw [mem_closure_iff_exists_finset_subset]
    rintro ⟨f, t, hts, hf, rfl⟩
    refine ⟨f, hf.trans hts, .symm <| Finset.prod_subset hts ?_⟩
    simp +contextual [Function.support_subset_iff'.1 hf]
  mpr := by rintro ⟨n, -, rfl⟩; exact prod_mem _ fun x hx ↦ pow_mem (subset_closure hx) _

end CommMonoid
end Submonoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd5d6e47beae00c915a076a86ff31a3441d6fd64dd97b0691f960f9b20b44d9a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd5d6e47beae00c915a076a86ff31a3441d6fd64dd97b0691f960f9b20b44d9a6.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671127975658739876d377bf037141a7e6a23ead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
