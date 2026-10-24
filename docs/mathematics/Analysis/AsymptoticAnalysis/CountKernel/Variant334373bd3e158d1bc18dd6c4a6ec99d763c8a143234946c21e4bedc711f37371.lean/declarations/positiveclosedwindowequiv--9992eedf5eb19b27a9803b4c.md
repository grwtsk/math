# positiveClosedWindowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:851cd999ff223cec24f3073b040719fbb997d2df02cd9eb83d65c99d204eeb98",
  "kind": "def",
  "lexical_name": "positiveClosedWindowEquiv",
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
  "slug": "positiveclosedwindowequiv--9992eedf5eb19b27a9803b4c",
  "source": {
    "blob": "793660772c6c93ad115204162fda625cd4925825",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 28,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9992eedf5eb19b27a9803b4c5e7e500caa3f5b89672e4c217a774e36a501f3a1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:851cd999ff223cec24f3073b040719fbb997d2df02cd9eb83d65c99d204eeb98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def positiveClosedWindowEquiv (t : ℝ) :
    positiveClosedCountSet t ≃ PositiveOccurrenceWindow t where
  toFun o := ⟨o.val.val, ⟨o.val.property, o.property⟩⟩
  invFun o := ⟨⟨o.val, o.property.1⟩, o.property.2⟩
  left_inv o := by rcases o with ⟨⟨p, hp⟩, ht⟩; rfl
  right_inv o := by rcases o with ⟨p, hp⟩; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793660772c6c93ad115204162fda625cd4925825` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
