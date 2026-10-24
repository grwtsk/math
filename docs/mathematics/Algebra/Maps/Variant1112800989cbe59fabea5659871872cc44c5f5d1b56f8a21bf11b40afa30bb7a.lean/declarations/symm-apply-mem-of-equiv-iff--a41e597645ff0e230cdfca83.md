# symm_apply_mem_of_equiv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa9dd6f6-86d3-a948-f841-1434b6c0b797",
  "kind": "theorem",
  "lexical_name": "symm_apply_mem_of_equiv_iff",
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
  "slug": "symm-apply-mem-of-equiv-iff--a41e597645ff0e230cdfca83",
  "source": {
    "blob": "e2e26f6b477f53838d974579ecfbd27a5d3e8e84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 507,
    "path": "GRWTSK/Algebra/Maps/Variant1112800989cbe59fabea5659871872cc44c5f5d1b56f8a21bf11b40afa30bb7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a41e597645ff0e230cdfca83e812ca6013cbe8e157da0d8e29b1f5d3f0012c64",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Variant1112800989cbe59fabea5659871872cc44c5f5d1b56f8a21bf11b40afa30bb7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa9dd6f6-86d3-a948-f841-1434b6c0b797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_apply_mem_of_equiv_iff {I : Ideal R} {f : R ≃+* S} {y : S} :
    f.symm y ∈ I ↔ y ∈ I.map f := by
  rw [← comap_symm, mem_comap]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Variant1112800989cbe59fabea5659871872cc44c5f5d1b56f8a21bf11b40afa30bb7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Variant1112800989cbe59fabea5659871872cc44c5f5d1b56f8a21bf11b40afa30bb7a.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e26f6b477f53838d974579ecfbd27a5d3e8e84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
