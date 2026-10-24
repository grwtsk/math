# finset_sup_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dee44d8de5f3b91206564e4415c99a292e8a112",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 514,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8229b2d2-35e8-a7cc-4b31-fec8775d5d19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:974ba657-1f10-7a8f-e342-a377497aac7e",
  "kind": "theorem",
  "lexical_name": "finset_sup_factors",
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
  "slug": "finset-sup-factors--357eaa77dc0ffdfe23a5baab",
  "source": {
    "blob": "8dee44d8de5f3b91206564e4415c99a292e8a112",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 514,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:357eaa77dc0ffdfe23a5baabc45ed068b2aca1c699a1f582aa77b293e2434f51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:974ba657-1f10-7a8f-e342-a377497aac7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finset_sup_factors {I : Type*} {A B : C} {s : Finset I} {P : I → Subobject B} {f : A ⟶ B}
    (h : ∃ i ∈ s, (P i).Factors f) : (s.sup P).Factors f := by
  classical
  revert h
  induction s using Finset.induction_on with
  | empty => rintro ⟨_, ⟨⟨⟩, _⟩⟩
  | insert _ _ _ ih =>
    rintro ⟨j, ⟨m, h⟩⟩
    simp only [Finset.sup_insert]
    simp only [Finset.mem_insert] at m
    rcases m with (rfl | m)
    · exact sup_factors_of_factors_left h
    · exact sup_factors_of_factors_right (ih ⟨j, ⟨m, h⟩⟩)

end SemilatticeSup

section Lattice

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dee44d8de5f3b91206564e4415c99a292e8a112` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
