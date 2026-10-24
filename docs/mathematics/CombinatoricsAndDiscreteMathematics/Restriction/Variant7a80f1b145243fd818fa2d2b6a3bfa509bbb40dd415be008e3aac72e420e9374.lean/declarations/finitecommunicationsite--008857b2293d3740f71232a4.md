# FiniteCommunicationSite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d7c65afda9b55922c25511c15f9c5b36d09d71e52726fdaa884f63d94396faf",
  "kind": "structure",
  "lexical_name": "FiniteCommunicationSite",
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
  "slug": "finitecommunicationsite--008857b2293d3740f71232a4",
  "source": {
    "blob": "72b1c2ce1b909749f131ed7213d307908f6ffab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant7a80f1b145243fd818fa2d2b6a3bfa509bbb40dd415be008e3aac72e420e9374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:008857b2293d3740f71232a404eacb0f23581fe0969bb321789d7d550b12038f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant7a80f1b145243fd818fa2d2b6a3bfa509bbb40dd415be008e3aac72e420e9374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d7c65afda9b55922c25511c15f9c5b36d09d71e52726fdaa884f63d94396faf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteCommunicationSite where
  Region : Type u
  regionFintype : Fintype Region
  regionDecEq : DecidableEq Region
  below : Region → Region → Prop
  belowDecidable : DecidableRel below
  belowRefl : ∀ region, below region region
  belowTrans : ∀ {small middle large},
    below small middle → below middle large → below small large
  Section : Region → Type v
  restrict : ∀ {small large}, below small large → Section large → Section small
  restrict_id : ∀ (region) (sectionValue : Section region),
    restrict (belowRefl region) sectionValue = sectionValue
  restrict_comp : ∀ {small middle large}
      (smallMiddle : below small middle)
      (middleLarge : below middle large)
      (sectionValue : Section large),
    restrict (belowTrans smallMiddle middleLarge) sectionValue =
      restrict smallMiddle (restrict middleLarge sectionValue)
  cover : Finset Region
  coefficientObject : String

attribute [local instance] FiniteCommunicationSite.regionFintype
attribute [local instance] FiniteCommunicationSite.regionDecEq
attribute [local instance] FiniteCommunicationSite.belowDecidable

/-- Identity restriction is exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant7a80f1b145243fd818fa2d2b6a3bfa509bbb40dd415be008e3aac72e420e9374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant7a80f1b145243fd818fa2d2b6a3bfa509bbb40dd415be008e3aac72e420e9374.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b1c2ce1b909749f131ed7213d307908f6ffab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
