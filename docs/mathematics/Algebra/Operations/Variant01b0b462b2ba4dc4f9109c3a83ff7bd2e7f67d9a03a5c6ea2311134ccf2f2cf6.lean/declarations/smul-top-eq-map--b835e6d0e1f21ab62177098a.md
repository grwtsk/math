# smul_top_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c1abf4cea977f829dcc3f8678b8d3697e3d749b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2da65b92-bf70-3804-64f6-1b783964f70c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23c2ae78-c168-3222-700a-e305efc4f2da",
  "kind": "theorem",
  "lexical_name": "smul_top_eq_map",
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
  "slug": "smul-top-eq-map--b835e6d0e1f21ab62177098a",
  "source": {
    "blob": "9c1abf4cea977f829dcc3f8678b8d3697e3d749b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1530,
    "line": 1507,
    "path": "GRWTSK/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b835e6d0e1f21ab62177098a509818cb0769723098baa7b1c285931d612bd392",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c2ae78-c168-3222-700a-e305efc4f2da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1507–1530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_top_eq_map {R S : Type*} [CommSemiring R] [CommSemiring S] [Algebra R S]
    (I : Ideal R) : I • (⊤ : Submodule R S) = (I.map (algebraMap R S)).restrictScalars R := by
  refine'
    le_antisymm (Submodule.smul_le.mpr fun r hr y _ => _) fun x hx =>
      Submodule.span_induction hx _ _ _ _
  · rw [Algebra.smul_def]
    exact mul_mem_right _ _ (mem_map_of_mem _ hr)
  · rintro _ ⟨x, hx, rfl⟩
    rw [← mul_one (algebraMap R S x), ← Algebra.smul_def]
    exact Submodule.smul_mem_smul hx Submodule.mem_top
  · exact Submodule.zero_mem _
  · intro x y
    exact Submodule.add_mem _
  intro a x hx
  refine' Submodule.smul_induction_on hx _ _
  · intro r hr s _
    rw [smul_comm]
    exact Submodule.smul_mem_smul hr Submodule.mem_top
  · intro x y hx hy
    rw [smul_add]
    exact Submodule.add_mem _ hx hy
#align ideal.smul_top_eq_map Ideal.smul_top_eq_map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean#L1507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1abf4cea977f829dcc3f8678b8d3697e3d749b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
