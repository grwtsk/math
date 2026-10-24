# IsIsotypic.submodule_linearEquiv_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cf4fdeed8a3090f2a35b04122e231d7e7601918",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6cdcc82-debd-1102-70fa-1190ed90675a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5898bbf-83cd-d767-3d6e-1656f25b4ef1",
  "kind": "theorem",
  "lexical_name": "IsIsotypic.submodule_linearEquiv_fun",
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
  "slug": "isisotypic-submodule-linearequiv-fun--f3fd7506829bc75e11e53d56",
  "source": {
    "blob": "2cf4fdeed8a3090f2a35b04122e231d7e7601918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 165,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3fd7506829bc75e11e53d56a44fc73c5ea0444d4795f0fc96e52eff6dd085ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isotypic/Variant4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5898bbf-83cd-d767-3d6e-1656f25b4ef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIsotypic.submodule_linearEquiv_fun {m : Submodule R M} [Module.Finite R m] [Nontrivial m]
    (h : IsIsotypic R m) : ∃ (n : ℕ) (_ : NeZero n) (S : Submodule R M),
      S ≤ m ∧ IsSimpleModule R S ∧ Nonempty (m ≃ₗ[R] Fin n → S) :=
  have ⟨n, hn, S, _, ⟨e⟩⟩ := h.linearEquiv_fun
  let e' := S.equivMapOfInjective _ m.subtype_injective
  ⟨n, hn, _, m.map_subtype_le S, .congr e'.symm, ⟨e.trans <| .piCongrRight fun _ ↦ e'⟩⟩

end Finsupp

variable (R M S)

/-- If `S` is a simple `R`-module, the `S`-isotypic component in an `R`-module `M` is the sum of
all submodules of `M` isomorphic to `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isotypic/Variant4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf4fdeed8a3090f2a35b04122e231d7e7601918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
