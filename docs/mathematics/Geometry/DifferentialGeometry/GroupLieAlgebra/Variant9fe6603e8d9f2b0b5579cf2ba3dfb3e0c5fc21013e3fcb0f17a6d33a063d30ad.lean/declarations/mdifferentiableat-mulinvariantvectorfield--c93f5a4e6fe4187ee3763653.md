# mdifferentiableAt_mulInvariantVectorField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d279a49fca338886877ebc5d41f9224c039ef83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44018567-2347-6791-fd8b-6c67101aca6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec28f5c7-1c08-a30c-bae6-701c0a4abcc8",
  "kind": "theorem",
  "lexical_name": "mdifferentiableAt_mulInvariantVectorField",
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
  "slug": "mdifferentiableat-mulinvariantvectorfield--c93f5a4e6fe4187ee3763653",
  "source": {
    "blob": "6d279a49fca338886877ebc5d41f9224c039ef83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 192,
    "path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c93f5a4e6fe4187ee3763653604d963ee1d1c91e4cfa6c9fea633e88ad718ef8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec28f5c7-1c08-a30c-bae6-701c0a4abcc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiableAt_mulInvariantVectorField (v : GroupLieAlgebra I G) {g : G} :
    MDifferentiableAt I I.tangent
      (fun (g : G) ↦ (mulInvariantVectorField v g : TangentBundle I G)) g :=
  (contMDiffAt_mulInvariantVectorField v).mdifferentiableAt
    (le_trans (by norm_num) le_minSmoothness)

open VectorField

variable [CompleteSpace E]

/-- The invariant vector field associated to the value at the identity of the Lie bracket of
two invariant vector fields, is everywhere the Lie bracket of the invariant vector fields. -/
@[to_additive "The invariant vector field associated to the value at zero of the Lie
bracket of two invariant vector fields, is everywhere the Lie bracket of the invariant vector
fields."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d279a49fca338886877ebc5d41f9224c039ef83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
