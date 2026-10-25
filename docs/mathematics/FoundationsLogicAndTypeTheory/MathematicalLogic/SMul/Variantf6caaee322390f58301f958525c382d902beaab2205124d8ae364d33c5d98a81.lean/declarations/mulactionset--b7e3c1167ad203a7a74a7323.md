# mulActionSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96799319bfefba23e32cce9b1ad829ad340aac697137cc897545ff35b2c8743c",
  "kind": "def",
  "lexical_name": "mulActionSet",
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
  "slug": "mulactionset--b7e3c1167ad203a7a74a7323",
  "source": {
    "blob": "599241feca37bc5bd1ca7b6cdb0c89c519f6c59f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 537,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e3c1167ad203a7a74a7323163bbf3db38e477ba302abb0ba7d9ddc828c7653",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96799319bfefba23e32cce9b1ad829ad340aac697137cc897545ff35b2c8743c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mulActionSet [Monoid α] [MulAction α β] : MulAction α (Set β) where
  mul_smul := by
    intros
    simp only [← image_smul, image_image, ← mul_smul]
  one_smul := by
    intros
    simp only [← image_smul, one_smul, image_id']
#align set.mul_action_set Set.mulActionSet
#align set.add_action_set Set.addActionSet

scoped[Pointwise] attribute [instance] Set.mulActionSet Set.addActionSet Set.mulAction Set.addAction

/-- A distributive multiplicative action of a monoid on an additive monoid `β` gives a distributive
multiplicative action on `Set β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599241feca37bc5bd1ca7b6cdb0c89c519f6c59f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
