# IsSemisimpleModule.finite_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f93d6fa72106914b326f95f2466f2b8c3c60fafd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e7bba86-a586-9a33-6126-e79511185612",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a015816a-d617-59e5-a7d6-2f1645a0f2fc",
  "kind": "theorem",
  "lexical_name": "IsSemisimpleModule.finite_tfae",
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
  "slug": "issemisimplemodule-finite-tfae--37a456a4aaf6590c3bb2b30a",
  "source": {
    "blob": "f93d6fa72106914b326f95f2466f2b8c3c60fafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37a456a4aaf6590c3bb2b30aeb5b759ad5e8bdfa015f7ac53470711a6f592f7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a015816a-d617-59e5-a7d6-2f1645a0f2fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSemisimpleModule.finite_tfae [IsSemisimpleModule R M] :
    List.TFAE [Module.Finite R M, IsNoetherian R M, IsArtinian R M, IsFiniteLength R M,
      ∃ s : Set (Submodule R M), s.Finite ∧ sSupIndep s ∧
        sSup s = ⊤ ∧ ∀ m ∈ s, IsSimpleModule R m] := by
  rw [isFiniteLength_iff_isNoetherian_isArtinian]
  obtain ⟨s, hs⟩ := IsSemisimpleModule.exists_sSupIndep_sSup_simples_eq_top R M
  tfae_have 1 ↔ 2 := ⟨fun _ ↦ inferInstance, fun _ ↦ inferInstance⟩
  tfae_have 2 → 5 := fun _ ↦ ⟨s, WellFoundedGT.finite_of_sSupIndep hs.1, hs⟩
  tfae_have 3 → 5 := fun _ ↦ ⟨s, WellFoundedLT.finite_of_sSupIndep hs.1, hs⟩
  tfae_have 5 → 4 := fun ⟨s, fin, _, sSup_eq_top, simple⟩ ↦ by
    rw [← isNoetherian_top_iff, ← Submodule.topEquiv.isArtinian_iff,
      ← sSup_eq_top, sSup_eq_iSup, ← iSup_subtype'']
    rw [SetCoe.forall'] at simple
    have := fin.to_subtype
    exact ⟨isNoetherian_iSup, isArtinian_iSup⟩
  tfae_have 4 → 2 := And.left
  tfae_have 4 → 3 := And.right
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f93d6fa72106914b326f95f2466f2b8c3c60fafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
