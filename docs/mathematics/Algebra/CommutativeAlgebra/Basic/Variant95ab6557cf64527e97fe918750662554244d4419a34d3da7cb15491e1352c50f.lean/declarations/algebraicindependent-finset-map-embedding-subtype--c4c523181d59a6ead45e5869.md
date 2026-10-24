# algebraicIndependent_finset_map_embedding_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0f682875f03a3da00f2c07f36c9db504e6a8913",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51504428-28ad-b857-ae66-331663361c15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d97fb78f-98cd-f3ff-ff7e-fbfcc2b38b1c",
  "kind": "theorem",
  "lexical_name": "algebraicIndependent_finset_map_embedding_subtype",
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
  "slug": "algebraicindependent-finset-map-embedding-subtype--c4c523181d59a6ead45e5869",
  "source": {
    "blob": "f0f682875f03a3da00f2c07f36c9db504e6a8913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 235,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4c523181d59a6ead45e58699f06c0040611b45dcff07129fc71a54f3c8f424d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d97fb78f-98cd-f3ff-ff7e-fbfcc2b38b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraicIndependent_finset_map_embedding_subtype (s : Set A)
    (li : AlgebraicIndependent R ((↑) : s → A)) (t : Finset s) :
    AlgebraicIndependent R ((↑) : Finset.map (Embedding.subtype (· ∈ s)) t → A) := by
  let f : t.map (Embedding.subtype (· ∈ s)) → s := fun x =>
    ⟨x.1, by
      obtain ⟨x, h⟩ := x
      rw [Finset.mem_map] at h
      obtain ⟨a, _, rfl⟩ := h
      simp only [Subtype.coe_prop, Embedding.coe_subtype]⟩
  convert! AlgebraicIndependent.comp li f _
  rintro ⟨x, hx⟩ ⟨y, hy⟩
  rw [Finset.mem_map] at hx hy
  obtain ⟨a, _, rfl⟩ := hx
  obtain ⟨b, _, rfl⟩ := hy
  simp only [f, imp_self, Subtype.mk_eq_mk]

/-- If every finite set of algebraically independent element has cardinality at most `n`,
then the same is true for arbitrary sets of algebraically independent elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f682875f03a3da00f2c07f36c9db504e6a8913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
