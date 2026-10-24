# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7120df4ba8759773f5f73fe0298ea3e670ee333f4e1df9351beffa0fa307b8a",
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
  "slug": "instance--df5940abb0d36bb93a819ae3",
  "source": {
    "blob": "354d877aad6f4bddd921d377e69d2786b872c631",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 31,
    "path": "GRWTSK/Topology/AlgebraicTopology/PUnit/Variant79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df5940abb0d36bb93a819ae3f38a6461b3d856f5db7249ea9e8ae2f1bd00507a",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PUnit/Variant79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7120df4ba8759773f5f73fe0298ea3e670ee333f4e1df9351beffa0fa307b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {x y : FundamentalGroupoid PUnit} : Subsingleton (x ⟶ y) := by
  convert_to Subsingleton (Path.Homotopic.Quotient PUnit.unit PUnit.unit)
  apply Quotient.instSubsingletonQuotient

/-- Equivalence of groupoids between fundamental groupoid of punit and punit -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PUnit/Variant79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PUnit/Variant79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `354d877aad6f4bddd921d377e69d2786b872c631` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
