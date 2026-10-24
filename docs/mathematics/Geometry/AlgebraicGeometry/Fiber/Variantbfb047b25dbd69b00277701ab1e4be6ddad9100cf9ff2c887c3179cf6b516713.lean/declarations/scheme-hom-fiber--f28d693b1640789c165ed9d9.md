# Scheme.Hom.fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8283a1aa3fcbb1a62180669d798743ee91cfafb36ff1e12e82fd1bfc8e44b37f",
  "kind": "def",
  "lexical_name": "Scheme.Hom.fiber",
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
  "slug": "scheme-hom-fiber--f28d693b1640789c165ed9d9",
  "source": {
    "blob": "5c2d9e1d7135a0b53eb57e299626c1f105e3830a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 38,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variantbfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f28d693b1640789c165ed9d949dd39fb4dcd10554f11a092b03c5cf33924e193",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Fiber/Variantbfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8283a1aa3fcbb1a62180669d798743ee91cfafb36ff1e12e82fd1bfc8e44b37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Scheme.Hom.fiber (f : X ⟶ Y) (y : Y) : Scheme := pullback f (Y.fromSpecResidueField y)

/-- `f.fiberι y : f.fiber y ⟶ X` is the embedding of the scheme-theoretic fiber into `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Fiber/Variantbfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variantbfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2d9e1d7135a0b53eb57e299626c1f105e3830a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
