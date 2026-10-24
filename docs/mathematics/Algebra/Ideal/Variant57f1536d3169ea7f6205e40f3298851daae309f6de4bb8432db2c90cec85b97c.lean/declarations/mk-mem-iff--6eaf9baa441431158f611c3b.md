# mk'_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7074c615cbcdc641cff6af0b6784b73ce44c4372",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d9d805c-8d53-f32d-3f76-65f380783c85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7457085e-05a6-9e32-eb6b-8455bb73c147",
  "kind": "theorem",
  "lexical_name": "mk'_mem_iff",
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
  "slug": "mk-mem-iff--6eaf9baa441431158f611c3b",
  "source": {
    "blob": "7074c615cbcdc641cff6af0b6784b73ce44c4372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eaf9baa441431158f611c3bd566446aa1caf4ec76aecfee88bf19ccb90164cc",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7457085e-05a6-9e32-eb6b-8455bb73c147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk'_mem_iff {x} {y : M} {I : Ideal S} : mk' S x y ∈ I ↔ algebraMap R S x ∈ I := by
  constructor <;> intro h
  · rw [← mk'_spec S x y, mul_comm]
    exact I.mul_mem_left ((algebraMap R S) y) h
  · rw [← mk'_spec S x y] at h
    obtain ⟨b, hb⟩ := isUnit_iff_exists_inv.1 (map_units S y)
    have := I.mul_mem_left b h
    rwa [mul_comm, mul_assoc, hb, mul_one] at this

/-- Explicit characterization of the ideal given by `Ideal.map (algebraMap R S) I`.
In practice, this ideal differs only in that the carrier set is defined explicitly.
This definition is only meant to be used in proving `mem_map_algebraMap_iff`,
and any proof that needs to refer to the explicit carrier set should use that theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7074c615cbcdc641cff6af0b6784b73ce44c4372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
