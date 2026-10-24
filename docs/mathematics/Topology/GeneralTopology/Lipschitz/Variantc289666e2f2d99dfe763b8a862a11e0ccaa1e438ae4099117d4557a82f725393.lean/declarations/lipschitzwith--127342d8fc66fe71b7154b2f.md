# LipschitzWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8c5e5859f93a563322fb752efc3319b6d4c6f983bf857dcbdba903c134c851f",
  "kind": "def",
  "lexical_name": "LipschitzWith",
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
  "slug": "lipschitzwith--127342d8fc66fe71b7154b2f",
  "source": {
    "blob": "4e1275a168c8fa8294167bae8c5928483228c7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:127342d8fc66fe71b7154b2f813c56b0720b2875951db81117de61498ebe4164",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8c5e5859f93a563322fb752efc3319b6d4c6f983bf857dcbdba903c134c851f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LipschitzWith (K : ℝ≥0) (f : α → β) := ∀ x y, edist (f x) (f y) ≤ K * edist x y

/-- A function `f` is **Lipschitz continuous** with constant `K ≥ 0` **on `s`** if
for all `x, y` in `s` we have `dist (f x) (f y) ≤ K * dist x y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1275a168c8fa8294167bae8c5928483228c7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
