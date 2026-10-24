# Submodule.FG.exists_rTensor_fg_inclusion_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17eb4f0d7d86c4289c84722b57fb025317d92bff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67ea0084-2129-e902-f80a-c01fc69bcb5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c1a7e56-db09-c01e-c67e-d4265dc559d4",
  "kind": "theorem",
  "lexical_name": "Submodule.FG.exists_rTensor_fg_inclusion_eq",
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
  "slug": "submodule-fg-exists-rtensor-fg-inclusion-eq--a0c67f4a81f0a27833cef5fb",
  "source": {
    "blob": "17eb4f0d7d86c4289c84722b57fb025317d92bff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0c67f4a81f0a27833cef5fbed9992b4401f80b8baf6773180774079f9457077",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c1a7e56-db09-c01e-c67e-d4265dc559d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.FG.exists_rTensor_fg_inclusion_eq {N : Submodule R P} (hN : N.FG)
    {x y : N ⊗[R] M} (eq : N.subtype.rTensor M x = N.subtype.rTensor M y) :
    ∃ N', N'.FG ∧ ∃ h : N ≤ N', (N.inclusion h).rTensor M x = (N.inclusion h).rTensor M y := by
  classical
  lift N to {N : Submodule R P // N.FG} using hN
  apply_fun (Module.fgSystem.equiv R P).symm.toLinearMap.rTensor M at eq
  apply_fun directLimitLeft _ _ at eq
  simp_rw [← LinearMap.rTensor_comp_apply, ← (LinearEquiv.eq_toLinearMap_symm_comp _ _).mpr
    (Module.fgSystem.equiv_comp_of N), directLimitLeft_rTensor_of] at eq
  have ⟨N', le, eq⟩ := Module.DirectLimit.exists_eq_of_of_eq eq
  exact ⟨_, N'.2, le, eq⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant08e421bf8a56776547f721978b3352f5412ab08224c4a37b0f1ce25540b08204.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17eb4f0d7d86c4289c84722b57fb025317d92bff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
