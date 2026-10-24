# op_smul_finset_smul_eq_smul_smul_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f1f878bbacaf2a3ced1928cfa8fbd0ca0fc5c0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bd21501-2f23-b6da-718f-3e094e13b4a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a0fe82e-b32a-b8e2-46a3-63b4e4df226e",
  "kind": "theorem",
  "lexical_name": "op_smul_finset_smul_eq_smul_smul_finset",
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
  "slug": "op-smul-finset-smul-eq-smul-smul-finset--6debbbe0fc153e544731e718",
  "source": {
    "blob": "3f1f878bbacaf2a3ced1928cfa8fbd0ca0fc5c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 335,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6debbbe0fc153e544731e718ffb61abe887e285903631c8f17ef1466c13ba50c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a0fe82e-b32a-b8e2-46a3-63b4e4df226e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem op_smul_finset_smul_eq_smul_smul_finset (a : α) (s : Finset β) (t : Finset γ)
    (h : ∀ (a : α) (b : β) (c : γ), (op a • b) • c = b • a • c) : (op a • s) • t = s • a • t := by
  ext
  simp [mem_smul, mem_smul_finset, h]

end SMul


section IsRightCancelMul

variable [Mul α] [IsRightCancelMul α] [DecidableEq α] {s t : Finset α} {a : α}


end IsRightCancelMul

section CancelMonoid
variable [DecidableEq α] [CancelMonoid α] {s : Finset α} {m n : ℕ}


end CancelMonoid

section Group
variable [Group α] [DecidableEq α] {s t : Finset α}


end Group

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f1f878bbacaf2a3ced1928cfa8fbd0ca0fc5c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
