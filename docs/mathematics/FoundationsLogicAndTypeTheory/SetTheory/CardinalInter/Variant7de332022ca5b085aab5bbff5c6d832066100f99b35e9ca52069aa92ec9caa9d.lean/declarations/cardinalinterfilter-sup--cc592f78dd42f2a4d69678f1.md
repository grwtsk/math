# cardinalInterFilter_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34981eb6b9754eb62e1c1ce0289b6d44bb7ddd4f4b41c79af91477ac585d2186",
  "kind": "instance",
  "lexical_name": "cardinalInterFilter_sup",
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
  "slug": "cardinalinterfilter-sup--cc592f78dd42f2a4d69678f1",
  "source": {
    "blob": "3adc128eb9c1816969f42269bd1ce33f5ed3d1a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc592f78dd42f2a4d69678f103cd594ebc261672b27a8f2083c12716bd5e390e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34981eb6b9754eb62e1c1ce0289b6d44bb7ddd4f4b41c79af91477ac585d2186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance cardinalInterFilter_sup (l₁ l₂ : Filter α) {c₁ c₂ : Cardinal.{u}}
    [CardinalInterFilter l₁ c₁] [CardinalInterFilter l₂ c₂] :
    CardinalInterFilter (l₁ ⊔ l₂) (c₁ ⊓ c₂) := by
  have : CardinalInterFilter l₁ (c₁ ⊓ c₂) :=
    CardinalInterFilter.of_cardinalInterFilter_of_le l₁ inf_le_left
  have : CardinalInterFilter l₂ (c₁ ⊓ c₂) :=
    CardinalInterFilter.of_cardinalInterFilter_of_le l₂ inf_le_right
  exact cardinalInterFilter_sup_eq _ _

variable (g : Set (Set α))

/-- `Filter.CardinalGenerateSets c g` is the (sets of the)
greatest `cardinalInterFilter c` containing `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3adc128eb9c1816969f42269bd1ce33f5ed3d1a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
