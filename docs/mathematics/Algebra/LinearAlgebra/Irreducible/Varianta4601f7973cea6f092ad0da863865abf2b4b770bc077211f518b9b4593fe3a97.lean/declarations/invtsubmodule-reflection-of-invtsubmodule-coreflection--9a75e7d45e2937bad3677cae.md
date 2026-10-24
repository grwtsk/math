# invtSubmodule_reflection_of_invtSubmodule_coreflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2c5ac948c66c8b8598abd233f8487d9a4ee95ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7e42a2b-449d-ed13-95f3-4cd79d3b0435",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e82f0ae-abc3-563c-4fab-2b6720b673df",
  "kind": "lemma",
  "lexical_name": "invtSubmodule_reflection_of_invtSubmodule_coreflection",
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
  "slug": "invtsubmodule-reflection-of-invtsubmodule-coreflection--9a75e7d45e2937bad3677cae",
  "source": {
    "blob": "e2c5ac948c66c8b8598abd233f8487d9a4ee95ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a75e7d45e2937bad3677caed52c35326226ab7be9c5a6d1cbc984d07e058e96",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e82f0ae-abc3-563c-4fab-2b6720b673df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma invtSubmodule_reflection_of_invtSubmodule_coreflection (i : ι) (q : Submodule R N)
    (hq : q ∈ invtSubmodule (P.coreflection i)) :
    q.dualAnnihilator.map P.toDualLeft.symm ∈ invtSubmodule (P.reflection i) := by
  rw [LinearEquiv.map_mem_invtSubmodule_iff, LinearEquiv.symm_symm, toDualLeft_conj_reflection,
    Module.End.mem_invtSubmodule, ← Submodule.map_le_iff_le_comap]
  exact (Submodule.dualAnnihilator_map_dualMap_le _ _).trans <| Submodule.dualAnnihilator_anti hq

/-- When the coefficients are a field, the coroot conditions for irreducibility follow from those
for the roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c5ac948c66c8b8598abd233f8487d9a4ee95ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
