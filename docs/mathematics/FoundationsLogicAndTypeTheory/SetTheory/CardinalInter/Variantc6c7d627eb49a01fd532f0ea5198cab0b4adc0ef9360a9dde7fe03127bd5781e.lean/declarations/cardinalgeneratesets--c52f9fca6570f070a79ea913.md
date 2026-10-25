# CardinalGenerateSets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bffc923f84b1fb5d68d8140f6914677b0dc3dcc357195e879f08460abe82ed0d",
  "kind": "inductive",
  "lexical_name": "CardinalGenerateSets",
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
  "slug": "cardinalgeneratesets--c52f9fca6570f070a79ea913",
  "source": {
    "blob": "5f21116ef82ec94d70cce99e9442ee7f3a06f0d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c52f9fca6570f070a79ea913731a07865d4628f3ae55a35b3bd1c12b7e9d5ff8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bffc923f84b1fb5d68d8140f6914677b0dc3dcc357195e879f08460abe82ed0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CardinalGenerateSets : Set α → Prop
  | basic {s : Set α} : s ∈ g → CardinalGenerateSets s
  | univ : CardinalGenerateSets univ
  | superset {s t : Set α} : CardinalGenerateSets s → s ⊆ t → CardinalGenerateSets t
  | sInter {S : Set (Set α)} :
    (#S < c) → (∀ s ∈ S, CardinalGenerateSets s) → CardinalGenerateSets (⋂₀ S)

/-- `Filter.cardinalGenerate c g` is the greatest `cardinalInterFilter c` containing `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f21116ef82ec94d70cce99e9442ee7f3a06f0d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
