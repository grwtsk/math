# invertibleOfRightInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:321726f487c4fc9d04e7244e28cd6f4193a7bf5b6418d2d78896185527bf7628",
  "kind": "def",
  "lexical_name": "invertibleOfRightInverse",
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
  "slug": "invertibleofrightinverse--8b5b653938c670fcfd3bc3df",
  "source": {
    "blob": "c4f01f4197240392f2cdc71430d0157e0c8de3e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant35193461e76b0f3fc1dd8fa6d24dcba92de4c563cb2ada0bfc84cc6095453340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b5b653938c670fcfd3bc3dfd1561e1b70660fb2781f3d4b100f4f03ace4ae73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant35193461e76b0f3fc1dd8fa6d24dcba92de4c563cb2ada0bfc84cc6095453340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:321726f487c4fc9d04e7244e28cd6f4193a7bf5b6418d2d78896185527bf7628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleOfRightInverse (h : A * B = 1) : Invertible A :=
  ⟨B, mul_eq_one_comm.mp h, h⟩
#align matrix.invertible_of_right_inverse Matrix.invertibleOfRightInverse

/-- Given a proof that `A.det` has a constructive inverse, lift `A` to `(Matrix n n α)ˣ`-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant35193461e76b0f3fc1dd8fa6d24dcba92de4c563cb2ada0bfc84cc6095453340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant35193461e76b0f3fc1dd8fa6d24dcba92de4c563cb2ada0bfc84cc6095453340.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f01f4197240392f2cdc71430d0157e0c8de3e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
