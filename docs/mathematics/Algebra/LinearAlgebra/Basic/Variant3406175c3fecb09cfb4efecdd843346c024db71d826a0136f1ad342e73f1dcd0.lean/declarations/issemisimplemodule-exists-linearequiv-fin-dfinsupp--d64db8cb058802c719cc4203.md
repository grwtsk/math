# IsSemisimpleModule.exists_linearEquiv_fin_dfinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2bb4db3a31932ed48bb7b1f501647b45328d7e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b48f2953-2446-7349-5c1b-fa1634992c5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f19045e-e9f5-63c7-69fb-b1b492d6d902",
  "kind": "theorem",
  "lexical_name": "IsSemisimpleModule.exists_linearEquiv_fin_dfinsupp",
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
  "slug": "issemisimplemodule-exists-linearequiv-fin-dfinsupp--d64db8cb058802c719cc4203",
  "source": {
    "blob": "a2bb4db3a31932ed48bb7b1f501647b45328d7e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 328,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d64db8cb058802c719cc4203a766c98bf003d18ab2b68d966a7dd3710de96d3d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f19045e-e9f5-63c7-69fb-b1b492d6d902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSemisimpleModule.exists_linearEquiv_fin_dfinsupp [IsSemisimpleModule R M]
    [Module.Finite R M] : ∃ (n : ℕ) (S : Fin n → Submodule R M)
      (_ : M ≃ₗ[R] Π₀ i : Fin n, S i), ∀ i, IsSimpleModule R (S i) :=
  have ⟨s, e, h, simple⟩ := IsSemisimpleModule.exists_linearEquiv_dfinsupp R M
  have := WellFoundedGT.finite_of_iSupIndep ((sSupIndep_iff _).mp h)
    fun S ↦ (S.1.nontrivial_iff_ne_bot).mp <| IsSimpleModule.nontrivial R S
  ⟨_, _, e.trans <| DirectSum.lequivCongrLeft R (Finite.equivFin s), fun _ ↦ simple _⟩

open LinearMap in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2bb4db3a31932ed48bb7b1f501647b45328d7e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
