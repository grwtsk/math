# Supermodular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26b07b01e7a234445ae77c762f7647aa7f055f9b358d39606e8bcd9569b331bc",
  "kind": "def",
  "lexical_name": "Supermodular",
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
  "slug": "supermodular--b94f6d37623f71c6845cff6e",
  "source": {
    "blob": "c45a044e0fb9b61d789821e5eba51817b6a6de94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Variant2dbb08239b3d2cccaa1a8f803adb93e990e8d73fc43932e393380bde5fc04510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b94f6d37623f71c6845cff6ef583f374e3e4cfb0e138150ac407d281298b382d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Variant2dbb08239b3d2cccaa1a8f803adb93e990e8d73fc43932e393380bde5fc04510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26b07b01e7a234445ae77c762f7647aa7f055f9b358d39606e8bcd9569b331bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Supermodular (f : α → ℝ) : Prop :=
  ∀ x y, f x + f y ≤ f (x ⊓ y) + f (x ⊔ y)

/-- A global maximizer, with attainment expressed by the selected element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Variant2dbb08239b3d2cccaa1a8f803adb93e990e8d73fc43932e393380bde5fc04510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Variant2dbb08239b3d2cccaa1a8f803adb93e990e8d73fc43932e393380bde5fc04510.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45a044e0fb9b61d789821e5eba51817b6a6de94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
