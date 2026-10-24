# IsSemisimpleModule.finite_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6258bebaf1eeb50be240fa17ddd3ae2c3397651",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98292075-ef2b-c4c3-7cc5-1e11a2c69617",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db3d5f7a-5308-3816-6e5e-bed0cb91b087",
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
  "slug": "issemisimplemodule-finite-tfae--50aece872819660f30d174e9",
  "source": {
    "blob": "e6258bebaf1eeb50be240fa17ddd3ae2c3397651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50aece872819660f30d174e9ca4fedc6d998608663a5943e11db191ace744a5c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db3d5f7a-5308-3816-6e5e-bed0cb91b087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–100.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6258bebaf1eeb50be240fa17ddd3ae2c3397651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
