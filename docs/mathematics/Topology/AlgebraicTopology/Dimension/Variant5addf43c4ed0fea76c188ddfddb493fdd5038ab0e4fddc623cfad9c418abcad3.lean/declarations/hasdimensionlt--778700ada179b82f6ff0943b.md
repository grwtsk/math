# HasDimensionLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5c1309b43fe617761563a110d5416d57ac1106568c7a8dfed53649bf9bbbd3d",
  "kind": "class",
  "lexical_name": "HasDimensionLT",
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
  "slug": "hasdimensionlt--778700ada179b82f6ff0943b",
  "source": {
    "blob": "5fc2d633ebaeaec4532adad38e94f15c44a367d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 32,
    "path": "GRWTSK/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:778700ada179b82f6ff0943b1fc9df4fe1974713e331ac53a08850ae22627867",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5c1309b43fe617761563a110d5416d57ac1106568c7a8dfed53649bf9bbbd3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasDimensionLT (X : SSet.{u}) (d : ℕ) : Prop where
  degenerate_eq_top (n : ℕ) (hn : d ≤ n) : X.degenerate n = ⊤

/-- A simplicial set has dimension `≤ d` if it has dimension `< d + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc2d633ebaeaec4532adad38e94f15c44a367d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
