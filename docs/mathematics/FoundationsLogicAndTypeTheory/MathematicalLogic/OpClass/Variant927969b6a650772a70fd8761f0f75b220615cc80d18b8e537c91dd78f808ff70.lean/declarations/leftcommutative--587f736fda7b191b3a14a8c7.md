# LeftCommutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61571314cb9ae830bcfe11ab26a02e5147ccf2d79ab571c5b42e20b6b3ad2205",
  "kind": "class",
  "lexical_name": "LeftCommutative",
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
  "slug": "leftcommutative--587f736fda7b191b3a14a8c7",
  "source": {
    "blob": "b9fdb64028c1c72658537831e1caa60ba41c4e71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:587f736fda7b191b3a14a8c7a0bba8834e0054b8cf8a942be7e0e397f4025a62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61571314cb9ae830bcfe11ab26a02e5147ccf2d79ab571c5b42e20b6b3ad2205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LeftCommutative (op : α → β → β) : Prop where
  /-- A left-commutative operation satisfies `op a₁ (op a₂ b) = op a₂ (op a₁ b)`. -/
  left_comm : (a₁ a₂ : α) → (b : β) → op a₁ (op a₂ b) = op a₂ (op a₁ b)

/-- `RightCommutative op` where `op : β → α → β` says that `op` is a right-commutative operation,
i.e. `op (op b a₁) a₂ = op (op b a₂) a₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9fdb64028c1c72658537831e1caa60ba41c4e71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
