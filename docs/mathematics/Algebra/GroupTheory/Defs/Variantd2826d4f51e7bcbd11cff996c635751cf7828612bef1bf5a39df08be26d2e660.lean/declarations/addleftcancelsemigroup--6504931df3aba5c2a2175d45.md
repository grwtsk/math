# AddLeftCancelSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a466533c7e48ada5a9af57971ea5b53109741bcc5af732120d04d4d24ddccb3",
  "kind": "class",
  "lexical_name": "AddLeftCancelSemigroup",
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
  "slug": "addleftcancelsemigroup--6504931df3aba5c2a2175d45",
  "source": {
    "blob": "9616cb3e7e2a09560f7e41c0b5ac43aef8caf9af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 248,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6504931df3aba5c2a2175d45d04362de08649d6ca4993396eb9e09b29897a4f6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a466533c7e48ada5a9af57971ea5b53109741bcc5af732120d04d4d24ddccb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddLeftCancelSemigroup (G : Type u) extends AddSemigroup G where
  protected add_left_cancel : ∀ a b c : G, a + b = a + c → b = c

attribute [instance 75] AddLeftCancelSemigroup.toAddSemigroup -- See note [lower cancel priority]

attribute [to_additive] LeftCancelSemigroup

/-- Any `LeftCancelSemigroup` satisfies `IsLeftCancelMul`. -/
@[to_additive AddLeftCancelSemigroup.toIsLeftCancelAdd "Any `AddLeftCancelSemigroup` satisfies
`IsLeftCancelAdd`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9616cb3e7e2a09560f7e41c0b5ac43aef8caf9af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
