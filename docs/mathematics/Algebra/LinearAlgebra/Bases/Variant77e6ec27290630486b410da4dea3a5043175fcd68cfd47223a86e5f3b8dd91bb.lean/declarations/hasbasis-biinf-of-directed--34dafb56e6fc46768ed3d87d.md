# hasBasis_biInf_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3205c6200b1812d382e18bc6415f1b00454c95b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77e6ec27290630486b410da4dea3a5043175fcd68cfd47223a86e5f3b8dd91bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79bc9d25-1916-d1fa-6de9-39dbb5f11ea4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51cdde1a-a66e-3727-f567-cfc5ba0734b0",
  "kind": "theorem",
  "lexical_name": "hasBasis_biInf_of_directed",
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
  "slug": "hasbasis-biinf-of-directed--34dafb56e6fc46768ed3d87d",
  "source": {
    "blob": "3205c6200b1812d382e18bc6415f1b00454c95b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 561,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant77e6ec27290630486b410da4dea3a5043175fcd68cfd47223a86e5f3b8dd91bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34dafb56e6fc46768ed3d87d0b71bcb9e35c4483118c666f1166e2ee742284d0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant77e6ec27290630486b410da4dea3a5043175fcd68cfd47223a86e5f3b8dd91bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51cdde1a-a66e-3727-f567-cfc5ba0734b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_biInf_of_directed {ι : Type*} {ι' : Sort _} {dom : Set ι} (hdom : dom.Nonempty)
    {l : ι → Filter α} (s : ι → ι' → Set α) (p : ι → ι' → Prop)
    (hl : ∀ i ∈ dom, (l i).HasBasis (p i) (s i)) (h : DirectedOn (l ⁻¹'o GE.ge) dom) :
    (⨅ i ∈ dom, l i).HasBasis (fun ii' : ι × ι' => ii'.1 ∈ dom ∧ p ii'.1 ii'.2) fun ii' =>
      s ii'.1 ii'.2 := by
  refine' ⟨fun t => _⟩
  rw [mem_biInf_of_directed h hdom, Prod.exists]
  refine' exists_congr fun i => ⟨_, _⟩
  · rintro ⟨hi, hti⟩
    rcases(hl i hi).mem_iff.mp hti with ⟨b, hb, hbt⟩
    exact ⟨b, ⟨hi, hb⟩, hbt⟩
  · rintro ⟨b, ⟨hi, hb⟩, hibt⟩
    exact ⟨hi, (hl i hi).mem_iff.mpr ⟨b, hb, hibt⟩⟩
#align filter.has_basis_binfi_of_directed Filter.hasBasis_biInf_of_directed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant77e6ec27290630486b410da4dea3a5043175fcd68cfd47223a86e5f3b8dd91bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant77e6ec27290630486b410da4dea3a5043175fcd68cfd47223a86e5f3b8dd91bb.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3205c6200b1812d382e18bc6415f1b00454c95b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
