# IsLittleO.trans_isEquivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c2d8446-9f78-74ec-4a96-bdec2c2d225b",
  "kind": "theorem",
  "lexical_name": "IsLittleO.trans_isEquivalent",
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
  "slug": "islittleo-trans-isequivalent--ea7322e8c8f3192e690aa6ea",
  "source": {
    "blob": "a24daaabedcafaec9066da29a8bd742086e7b8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 411,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant10c9ce106af0b599442129540d6405ef84174bd439eae0fd377f058edce0b320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea7322e8c8f3192e690aa6ea3d8bd9720bdcebfe9aae50b054bf6bdbd84840eb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant10c9ce106af0b599442129540d6405ef84174bd439eae0fd377f058edce0b320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c2d8446-9f78-74ec-4a96-bdec2c2d225b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLittleO.trans_isEquivalent {f : α → β₂} {g₁ g₂ : α → β} (h : f =o[l] g₁)
    (h₂ : g₁ ~[l] g₂) : f =o[l] g₂ :=
  IsLittleO.trans_isBigO h h₂.isBigO

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant10c9ce106af0b599442129540d6405ef84174bd439eae0fd377f058edce0b320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant10c9ce106af0b599442129540d6405ef84174bd439eae0fd377f058edce0b320.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24daaabedcafaec9066da29a8bd742086e7b8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
