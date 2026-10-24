# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a57f2cd4341502b460a19329d4236ecc2d3e7cb5ada7a9ef5c3f84e0d5b4c48c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--11eb4af5029251d5d46ebb58",
  "source": {
    "blob": "14b18f6bb865086711998a52e4ffbaaba31098ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11eb4af5029251d5d46ebb58e1f70a791ab643a2b7657a36793b4f40ff5d88cc",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a57f2cd4341502b460a19329d4236ecc2d3e7cb5ada7a9ef5c3f84e0d5b4c48c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) ContMDiffRing.toLieAddGroup (I : ModelWithCorners 𝕜 E H) (R : Type*)
    [Ring R] [TopologicalSpace R] [ChartedSpace H R] [ContMDiffRing I n R] : LieAddGroup I n R where
  compatible := StructureGroupoid.compatible (contDiffGroupoid n I)
  contMDiff_add := contMDiff_add I n
  contMDiff_neg := by simpa only [neg_one_mul] using contMDiff_mul_left (G := R) (a := -1)

end ContMDiffRing

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14b18f6bb865086711998a52e4ffbaaba31098ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
