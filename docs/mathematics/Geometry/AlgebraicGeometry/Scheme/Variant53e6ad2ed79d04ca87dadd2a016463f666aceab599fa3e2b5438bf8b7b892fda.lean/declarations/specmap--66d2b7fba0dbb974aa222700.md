# specMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24816fa02b54cd02e2adc9ca6e41ee18df27d7f8c3e9064a734a87814a54be34",
  "kind": "def",
  "lexical_name": "specMap",
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
  "slug": "specmap--66d2b7fba0dbb974aa222700",
  "source": {
    "blob": "eb4373799c548d13d1e2a75d2e7d49e75a96d6e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 215,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66d2b7fba0dbb974aa2227002dd988d8117be6ca15bca4cb79681696b5c538de",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24816fa02b54cd02e2adc9ca6e41ee18df27d7f8c3e9064a734a87814a54be34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def specMap {R S : CommRingCat} (f : R ⟶ S) : specObj S ⟶ specObj R :=
  (Spec.locallyRingedSpaceMap f : Spec.locallyRingedSpaceObj S ⟶ Spec.locallyRingedSpaceObj R)
#align algebraic_geometry.Scheme.Spec_map AlgebraicGeometry.Scheme.specMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb4373799c548d13d1e2a75d2e7d49e75a96d6e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
