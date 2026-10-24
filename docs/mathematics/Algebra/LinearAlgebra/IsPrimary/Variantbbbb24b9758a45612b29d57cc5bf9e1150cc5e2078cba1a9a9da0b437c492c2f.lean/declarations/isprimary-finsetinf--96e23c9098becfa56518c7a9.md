# isPrimary_finsetInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddb0173fd381eef41f672758ba997a5522ea18c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50ea1b8c-6dfc-e3d4-5427-b1d0750226e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:468c9113-b42a-b838-993e-45541174b139",
  "kind": "lemma",
  "lexical_name": "isPrimary_finsetInf",
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
  "slug": "isprimary-finsetinf--96e23c9098becfa56518c7a9",
  "source": {
    "blob": "ddb0173fd381eef41f672758ba997a5522ea18c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96e23c9098becfa56518c7a9abea088274283458b4252f95b2728bdeb4b0310d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:468c9113-b42a-b838-993e-45541174b139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPrimary_finsetInf {ι : Type*} {s : Finset ι} {f : ι → Submodule R M} {i : ι} (hi : i ∈ s)
    (hs : ∀ ⦃y⦄, y ∈ s → (f y).IsPrimary)
    (hs' : ∀ ⦃y⦄, y ∈ s → ((f y).colon Set.univ).radical = ((f i).colon Set.univ).radical) :
    (s.inf f).IsPrimary := by
  classical
  induction s using Finset.induction_on generalizing i with
  | empty => simp at hi
  | insert a s ha IH =>
    rcases s.eq_empty_or_nonempty with rfl | ⟨y, hy⟩
    · simp only [insert_empty_eq, mem_singleton] at hi
      simpa [hi] using hs
    simp only [inf_insert]
    have H ⦃x⦄ (hx : x ∈ s) : ((f x).colon Set.univ).radical = ((f y).colon Set.univ).radical := by
      rw [hs' (mem_insert_of_mem hx), hs' (mem_insert_of_mem hy)]
    refine IsPrimary.inf (hs (by simp)) (IH hy (fun x hx ↦ hs (by simp [hx])) H) ?_
    rw [colon_finsetInf, Ideal.radical_finset_inf hy H,
      hs' (mem_insert_self _ _), hs' (mem_insert_of_mem hy)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddb0173fd381eef41f672758ba997a5522ea18c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
