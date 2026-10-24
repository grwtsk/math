# checkStrictlyDecreasing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a3148bf1ac6ce248afbfe8e5ff80ec841326f1d2b2eeb6d1a207769cbb9e0ee",
  "kind": "def",
  "lexical_name": "checkStrictlyDecreasing",
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
  "slug": "checkstrictlydecreasing--7c0d316af97ed9a25d2fd25f",
  "source": {
    "blob": "cb3df0e91072452b6622122e711f380ffa89d952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 58,
    "path": "GRWTSK/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c0d316af97ed9a25d2fd25f316ba78e86c809ef0de8a14c2ac3b496cd6b5fdd",
  "verification": {
    "reference": "docs/verification/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a3148bf1ac6ce248afbfe8e5ff80ec841326f1d2b2eeb6d1a207769cbb9e0ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkStrictlyDecreasing (e : Expr) (I : IntervalRat) (cfg : EvalConfig := {}) : Bool :=
  (derivIntervalCore e I cfg).hi < 0

/-! ### Golden Theorems for Monotonicity -/

/-- **Golden Theorem for Strictly Increasing Functions**

    If `checkStrictlyIncreasing e I cfg = true`, then the function defined by `e`
    is strictly increasing on `I`.

    This uses the Mean Value Theorem: if f'(x) > 0 for all x in the interior of I,
    then f is strictly monotone on I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb3df0e91072452b6622122e711f380ffa89d952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
