# PseudometricData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ed771bb6d99c90fcef375506bc7536a42d8dd408e0259a1f1f0f0982a559692",
  "kind": "structure",
  "lexical_name": "PseudometricData",
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
  "slug": "pseudometricdata--d800925bf7fb3c446c413003",
  "source": {
    "blob": "375460c30ae46dec36bd78dcaaeb23403892957a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d800925bf7fb3c446c413003e3ab6b46f5a7197bef3a711ba590c2d4734de3c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ed771bb6d99c90fcef375506bc7536a42d8dd408e0259a1f1f0f0982a559692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PseudometricData (X : Type) where
  distance : X → X → ℝ
  nonnegative : ∀ left right, 0 ≤ distance left right
  selfZero : ∀ point, distance point point = 0
  symmetric : ∀ left right, distance left right = distance right left
  triangle :
    ∀ left middle right,
      distance left right ≤
        distance left middle + distance middle right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375460c30ae46dec36bd78dcaaeb23403892957a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
