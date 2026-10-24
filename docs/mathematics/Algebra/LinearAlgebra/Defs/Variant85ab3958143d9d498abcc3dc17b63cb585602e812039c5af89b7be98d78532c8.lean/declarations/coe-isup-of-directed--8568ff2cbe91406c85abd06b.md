# coe_iSup_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "605c85954ec81f5b2e229329727572aa78f84ff6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16da53c5-6834-961c-7f01-094e44842c51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07cc6c5b-3a69-bdbe-32f4-11f1afaf2ddd",
  "kind": "theorem",
  "lexical_name": "coe_iSup_of_directed",
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
  "slug": "coe-isup-of-directed--8568ff2cbe91406c85abd06b",
  "source": {
    "blob": "605c85954ec81f5b2e229329727572aa78f84ff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 347,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8568ff2cbe91406c85abd06be935858df4e050c9da54f9c39673d95582f9851d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07cc6c5b-3a69-bdbe-32f4-11f1afaf2ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_iSup_of_directed {ι} [Nonempty ι] (S : ι → Submodule R M)
    (H : Directed (· ≤ ·) S) : ((iSup S : Submodule R M) : Set M) = ⋃ i, S i :=
  let s : Submodule R M :=
    { __ := AddSubmonoid.copy _ _ (AddSubmonoid.coe_iSup_of_directed H).symm
      smul_mem' := fun r _ hx ↦ have ⟨i, hi⟩ := Set.mem_iUnion.mp hx
        Set.mem_iUnion.mpr ⟨i, (S i).smul_mem' r hi⟩ }
  have : iSup S = s := le_antisymm
    (iSup_le fun i ↦ le_iSup (fun i ↦ (S i : Set M)) i) (Set.iUnion_subset fun _ ↦ le_iSup S _)
  this.symm ▸ rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `605c85954ec81f5b2e229329727572aa78f84ff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
