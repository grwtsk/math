# smul_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da80aa89-9e12-d65d-e616-805d6db2dad1",
  "kind": "lemma",
  "lexical_name": "smul_top",
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
  "slug": "smul-top--21d0d9be576b489af04c4e2a",
  "source": {
    "blob": "660f6fd44d69453eb51e9bd7411d95f16b3d3226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21d0d9be576b489af04c4e2a33b33a7449a60f301dab5d4bf29dd0f94261e875",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da80aa89-9e12-d65d-e616-805d6db2dad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma smul_top (ha : IsUnit a) : a • (⊤ : AffineSubspace k V) = ⊤ := by
  ext x; simpa [smul_eq_map, map_top] using ⟨ha.unit⁻¹ • x, smul_inv_smul ha.unit _⟩

end MulAction

end Ring

section Field
variable [Field k] [AddCommGroup V] [Module k V] {a : k}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `660f6fd44d69453eb51e9bd7411d95f16b3d3226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
