# ScalarProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96b11060155d2420d3220a59f7807fc7a08cbe6777a5f25c380b82e20b81efb8",
  "kind": "structure",
  "lexical_name": "ScalarProjection",
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
  "slug": "scalarprojection--bfe30163f2589515a6439963",
  "source": {
    "blob": "8b1792be922dc3e09e6a968e29506f0f8a7f3808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfe30163f2589515a6439963cc8aeb0263fd96dcbd402a023f327805f37fc829",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96b11060155d2420d3220a59f7807fc7a08cbe6777a5f25c380b82e20b81efb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ScalarProjection (Index : Type*) where
  /-- Source identity of the reviewed conversion/weight policy. -/
  policyIdentity : String
  /-- Explicit per-coordinate coefficients; no implicit unit conversion is performed. -/
  coefficients : Index → ℚ
  /-- Negative coefficients may not turn greater consumption into a lower resource score. -/
  nonnegative : ∀ coordinate, 0 ≤ coefficients coordinate

/-- A scalar is derived from the retained vector using only declared coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b1792be922dc3e09e6a968e29506f0f8a7f3808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
