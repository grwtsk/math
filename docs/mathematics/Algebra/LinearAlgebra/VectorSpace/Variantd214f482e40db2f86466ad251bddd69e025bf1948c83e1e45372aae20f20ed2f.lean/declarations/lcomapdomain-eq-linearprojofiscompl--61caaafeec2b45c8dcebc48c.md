# lcomapDomain_eq_linearProjOfIsCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2654ccad1d02b98335c30ca24fdf6aa3d303cdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:387c2502-5cfa-b482-1d87-cf5f89184aca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b642cd9-0692-0639-5ee1-37c1a6fbfacc",
  "kind": "lemma",
  "lexical_name": "lcomapDomain_eq_linearProjOfIsCompl",
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
  "slug": "lcomapdomain-eq-linearprojofiscompl--61caaafeec2b45c8dcebc48c",
  "source": {
    "blob": "f2654ccad1d02b98335c30ca24fdf6aa3d303cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61caaafeec2b45c8dcebc48c2a92c9f9fac65df374267150419fcfb9a56dfa0c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b642cd9-0692-0639-5ee1-37c1a6fbfacc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lcomapDomain_eq_linearProjOfIsCompl {α β : Type*}
    {u : α → ι} {v : β → ι} (hu : u.Injective) (h : IsCompl (Set.range u) (Set.range v)) :
    lcomapDomain u hu =
      LinearMap.linearProjOfIsCompl (.span R (Set.range fun x : β ↦ single (v x) (1 : R)))
        (lmapDomain _ _ u) (mapDomain_injective hu) (isCompl_range_lmapDomain_span h) := by
  classical
  refine Finsupp.basisSingleOne.ext fun i ↦ ?_
  obtain ⟨i, rfl⟩ | ⟨i, rfl⟩ : i ∈ Set.range u ⊔ .range v := by rw [codisjoint_iff.mp h.2]; trivial
  · have : single (u i) 1 = lmapDomain R R u (.single i 1) := by simp
    simp only [coe_basisSingleOne, lcomapDomain_apply, comapDomain_single]
    rw [this, LinearMap.linearProjOfIsCompl_apply_left]
  · rw [LinearMap.linearProjOfIsCompl_apply_right']
    · ext j
      simp only [coe_basisSingleOne, lcomapDomain_apply, comapDomain_apply, single_apply,
        coe_zero, Pi.zero_apply, ite_eq_right_iff]
      intro hij
      exact (Set.disjoint_range_iff.mp h.1 j i hij.symm).elim
    · exact Submodule.subset_span ⟨i, rfl⟩

end Ring

end Finsupp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2654ccad1d02b98335c30ca24fdf6aa3d303cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
