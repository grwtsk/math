# AddConGen.Rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcc28bea4f869d4f612b393f0c2c23b0f491c5e60492d60d0a47afa5285d1bab",
  "kind": "inductive",
  "lexical_name": "AddConGen.Rel",
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
  "slug": "addcongen-rel--13f4fc4a10a8ff324772145b",
  "source": {
    "blob": "5b737b4d50541c1fea525ccd2c82c9d94621c249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13f4fc4a10a8ff324772145bad9805cfb1aa71d43bfefcdba4df9028e4a594b4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcc28bea4f869d4f612b393f0c2c23b0f491c5e60492d60d0a47afa5285d1bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive AddConGen.Rel [Add M] (r : M → M → Prop) : M → M → Prop
  | of : ∀ x y, r x y → AddConGen.Rel r x y
  | refl : ∀ x, AddConGen.Rel r x x
  | symm : ∀ {x y}, AddConGen.Rel r x y → AddConGen.Rel r y x
  | trans : ∀ {x y z}, AddConGen.Rel r x y → AddConGen.Rel r y z → AddConGen.Rel r x z
  | add : ∀ {w x y z}, AddConGen.Rel r w x → AddConGen.Rel r y z → AddConGen.Rel r (w + y) (x + z)

/-- The inductively defined smallest multiplicative congruence relation containing a given binary
    relation. -/
@[to_additive AddConGen.Rel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b737b4d50541c1fea525ccd2c82c9d94621c249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
