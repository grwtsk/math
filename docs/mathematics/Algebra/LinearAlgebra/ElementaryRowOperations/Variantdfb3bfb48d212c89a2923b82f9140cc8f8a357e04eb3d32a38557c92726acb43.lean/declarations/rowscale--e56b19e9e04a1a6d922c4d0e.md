# rowScale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85e65d7e55b2f7f26b6a7daf73ac7402c754b32713227c01eda182a662b308e7",
  "kind": "def",
  "lexical_name": "rowScale",
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
  "slug": "rowscale--e56b19e9e04a1a6d922c4d0e",
  "source": {
    "blob": "360b29754737210feeab7b2c067ed733c0d58722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e56b19e9e04a1a6d922c4d0e6c63b478718878e093d8b8c3e3cb922d812e84b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85e65d7e55b2f7f26b6a7daf73ac7402c754b32713227c01eda182a662b308e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rowScale (i : m) (c : Rˣ) : GL m R where
  val := Matrix.rowScale i (c : R)
  inv := Matrix.rowScale i ↑c⁻¹
  val_inv := by simp
  inv_val := by simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ElementaryRowOperations/Variantdfb3bfb48d212c89a2923b82f9140cc8f8a357e04eb3d32a38557c92726acb43.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360b29754737210feeab7b2c067ed733c0d58722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
