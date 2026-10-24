# mulLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea666de21ce9bab7f2d50150ae4332c2bf674e3d8abb18b9bf0260de025046cc",
  "kind": "def",
  "lexical_name": "mulLeft",
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
  "slug": "mulleft--396fc0ebdbdb853d7e6e3242",
  "source": {
    "blob": "4f1b2ceda0294e4cadb0a36b92f29f5169ab99e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 62,
    "path": "GRWTSK/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:396fc0ebdbdb853d7e6e3242b17d4e413e2511c5486c5a0ffc34fbf00b6d5b87",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea666de21ce9bab7f2d50150ae4332c2bf674e3d8abb18b9bf0260de025046cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulLeft (u : Mˣ) : Equiv.Perm M where
  toFun x := u * x
  invFun x := u⁻¹ * x
  left_inv := u.inv_mul_cancel_left
  right_inv := u.mul_inv_cancel_left

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f1b2ceda0294e4cadb0a36b92f29f5169ab99e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
