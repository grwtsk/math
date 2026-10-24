# exists_nontrivial_weightSpace_of_isSolvable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29f87660be69e2247c93d5076461a3aa2eff1472",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:559723a2-6c86-55ee-f405-4f30704a70e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:734b14ab-d77d-3482-bec2-c75d8b918a75",
  "kind": "theorem",
  "lexical_name": "exists_nontrivial_weightSpace_of_isSolvable",
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
  "slug": "exists-nontrivial-weightspace-of-issolvable--0c91462517ba7b04414fff31",
  "source": {
    "blob": "29f87660be69e2247c93d5076461a3aa2eff1472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c91462517ba7b04414fff310382c0c39b69f3b56ff23c0d15b110d3576a6931",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:734b14ab-d77d-3482-bec2-c75d8b918a75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nontrivial_weightSpace_of_isSolvable
    [IsSolvable L] [LieModule.IsTriangularizable k L V] :
    ∃ χ : Module.Dual k L, Nontrivial (weightSpace V χ) := by
  let imL := (toEnd k L V).range
  let toEndo : L →ₗ[k] imL := LinearMap.codRestrict imL.toSubmodule (toEnd k L V)
      (fun x ↦ LinearMap.mem_range.mpr ⟨x, rfl⟩ : ∀ x : L, (toEnd k L V) x ∈ imL)
  have ⟨χ, h⟩ := exists_forall_lie_eq_smul_of_isSolvable_of_finite k V imL
  use χ.comp toEndo
  obtain ⟨⟨v, hv⟩, hv0⟩ := exists_ne (0 : weightSpace V χ)
  refine nontrivial_of_ne ⟨v, ?_⟩ 0 ?_
  · rw [mem_weightSpace] at hv ⊢
    intro x
    apply hv (toEndo x)
  · simpa using hv0

end

end LieModule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f87660be69e2247c93d5076461a3aa2eff1472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
