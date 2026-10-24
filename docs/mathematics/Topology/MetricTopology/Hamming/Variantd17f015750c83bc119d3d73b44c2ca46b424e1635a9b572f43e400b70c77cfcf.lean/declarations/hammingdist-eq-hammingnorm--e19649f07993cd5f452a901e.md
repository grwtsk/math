# hammingDist_eq_hammingNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f3052167ecdd46380511f4466b007f4fede8d6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2eddb55e-04c4-8ca6-16a6-92bbabaad273",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eac2fd13-4a1b-e922-33d7-03cc917c0d64",
  "kind": "theorem",
  "lexical_name": "hammingDist_eq_hammingNorm",
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
  "slug": "hammingdist-eq-hammingnorm--e19649f07993cd5f452a901e",
  "source": {
    "blob": "8f3052167ecdd46380511f4466b007f4fede8d6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 194,
    "path": "GRWTSK/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19649f07993cd5f452a901e24efccc4076d4bf4d1ad422a7b7a7600df10ac70",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac2fd13-4a1b-e922-33d7-03cc917c0d64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hammingDist_eq_hammingNorm [∀ i, AddGroup (β i)] (x y : ∀ i, β i) :
    hammingDist x y = hammingNorm (x - y) := by
  simp_rw [hammingNorm, hammingDist, Pi.sub_apply, sub_ne_zero]

end HammingDistNorm

/-! ### The `Hamming` type synonym -/


/-- Type synonym for a Pi type which inherits the usual algebraic instances, but is equipped with
the Hamming metric and norm, instead of `Pi.normedAddCommGroup` which uses the sup norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3052167ecdd46380511f4466b007f4fede8d6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
