# cardinalInterFilter_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea302eaaa6f5ed93ee2ec026251a22e710454eaff276200773859cdc6b7417c4",
  "kind": "instance",
  "lexical_name": "cardinalInterFilter_inf",
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
  "slug": "cardinalinterfilter-inf--8b7d25615ca87eaeea6ebe85",
  "source": {
    "blob": "5f21116ef82ec94d70cce99e9442ee7f3a06f0d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b7d25615ca87eaeea6ebe85728e6366c83bffbd6ec1f6b09a3f3e00cdc737ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea302eaaa6f5ed93ee2ec026251a22e710454eaff276200773859cdc6b7417c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance cardinalInterFilter_inf (l₁ l₂ : Filter α) {c₁ c₂ : Cardinal.{u}}
    [CardinalInterFilter l₁ c₁] [CardinalInterFilter l₂ c₂] : CardinalInterFilter (l₁ ⊓ l₂)
    (c₁ ⊓ c₂) := by
  have : CardinalInterFilter l₁ (c₁ ⊓ c₂) :=
    CardinalInterFilter.of_cardinalInterFilter_of_le l₁ inf_le_left
  have : CardinalInterFilter l₂ (c₁ ⊓ c₂) :=
    CardinalInterFilter.of_cardinalInterFilter_of_le l₂ inf_le_right
  exact cardinalInterFilter_inf_eq _ _

/-- Supremum of two `CardinalInterFilter`s is a `CardinalInterFilter`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f21116ef82ec94d70cce99e9442ee7f3a06f0d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
