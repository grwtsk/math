# mulInvariantVector_mlieBracket

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
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8016b9dc-00df-cb25-304b-a2a31d420b27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4eb160d1-34a5-0a1a-cd75-c6cff8a9ac01",
  "kind": "lemma",
  "lexical_name": "mulInvariantVector_mlieBracket",
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
  "slug": "mulinvariantvector-mliebracket--d361d01321b432d06d57078c",
  "source": {
    "blob": "6d279a49fca338886877ebc5d41f9224c039ef83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 207,
    "path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d361d01321b432d06d57078c851412b9157f94ef439103e10e8828dfd4f608f8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4eb160d1-34a5-0a1a-cd75-c6cff8a9ac01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulInvariantVector_mlieBracket (v w : GroupLieAlgebra I G) :
    mulInvariantVectorField
      (mlieBracket I (mulInvariantVectorField v) (mulInvariantVectorField w) 1) =
    mlieBracket I (mulInvariantVectorField v) (mulInvariantVectorField w) := by
  ext g
  rw [mulInvariantVectorField_eq_mpullback, mpullback_mlieBracket (n := minSmoothness 𝕜 3),
    mpullback_mulInvariantVectorField, mpullback_mulInvariantVectorField]
  · exact mdifferentiableAt_mulInvariantVectorField _
  · exact mdifferentiableAt_mulInvariantVectorField _
  · exact contMDiffAt_mul_left
  · exact minSmoothness_monotone (by norm_cast)

/-- The tangent space at the identity of a Lie group is a Lie ring, for the bracket
given by the Lie bracket of invariant vector fields. -/
@[to_additive "The tangent space at the identity of an additive Lie group is a Lie ring, for the
bracket given by the Lie bracket of invariant vector fields."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d279a49fca338886877ebc5d41f9224c039ef83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
