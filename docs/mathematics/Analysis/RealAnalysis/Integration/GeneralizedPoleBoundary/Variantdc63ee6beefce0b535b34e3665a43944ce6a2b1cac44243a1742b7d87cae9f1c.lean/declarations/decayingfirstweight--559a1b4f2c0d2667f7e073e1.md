# decayingFirstWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9c9225ee05cb2f564ddcfb8a6dadbbc18eeec9fe3564d71c3f8fd0f36cc7028",
  "kind": "def",
  "lexical_name": "decayingFirstWeight",
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
  "slug": "decayingfirstweight--559a1b4f2c0d2667f7e073e1",
  "source": {
    "blob": "cb6b5bb3372eb1b9a48cf536c528e2c416090e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:559a1b4f2c0d2667f7e073e139cb1b3eceeb441956cc818c560c0ac1134a989d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9c9225ee05cb2f564ddcfb8a6dadbbc18eeec9fe3564d71c3f8fd0f36cc7028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decayingFirstWeight : ℝ → ℝ := (Ici 0).indicator (fun t ↦ t * Real.exp (-t / 2))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb6b5bb3372eb1b9a48cf536c528e2c416090e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
