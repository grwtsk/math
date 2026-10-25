# lift₂_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94d1e3d8-3a91-42f4-2b44-012797baf718",
  "kind": "theorem",
  "lexical_name": "lift₂_mk",
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
  "slug": "lift-mk--61e6e38fadc8be90ec3ca88a",
  "source": {
    "blob": "7640ea28751428e78f6a1131e840e5dc77afc399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61e6e38fadc8be90ec3ca88a31e3a48e04f76d0a3a16db36b2ec365be653b42b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94d1e3d8-3a91-42f4-2b44-012797baf718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift₂_mk (f : α → β → γ) (hr : ∀ a b₁ b₂, s b₁ b₂ → f a b₁ = f a b₂)
    (hs : ∀ a₁ a₂ b, r a₁ a₂ → f a₁ b = f a₂ b)
    (a : α) (b : β) : Quot.lift₂ f hr hs (Quot.mk r a) (Quot.mk s b) = f a b :=
  rfl
#align quot.lift₂_mk Quot.lift₂_mk

/-- Descends a function `f : α → β → γ` to quotients of `α` and `β` and applies it. -/
-- porting note: removed `@[elab_as_elim]`, gave "unexpected resulting type γ"
-- porting note: removed `@[reducible]` because it caused extremely slow `simp`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7640ea28751428e78f6a1131e840e5dc77afc399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
