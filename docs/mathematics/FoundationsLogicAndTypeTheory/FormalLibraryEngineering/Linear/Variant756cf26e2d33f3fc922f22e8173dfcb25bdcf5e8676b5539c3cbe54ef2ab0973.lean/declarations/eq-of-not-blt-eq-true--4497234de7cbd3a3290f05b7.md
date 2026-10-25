# eq_of_not_blt_eq_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5ba9cf3-5e44-a004-cf62-6699ab1f1c0e",
  "kind": "theorem",
  "lexical_name": "eq_of_not_blt_eq_true",
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
  "slug": "eq-of-not-blt-eq-true--4497234de7cbd3a3290f05b7",
  "source": {
    "blob": "ace6b1433d5bcec1e84132c9aace3c3c7302b892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4497234de7cbd3a3290f05b7dc3255a46d05f926e103765f02035d92fc58778f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5ba9cf3-5e44-a004-cf62-6699ab1f1c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eq_of_not_blt_eq_true (h₁ : ¬ (Nat.blt x y = true)) (h₂ : ¬ (Nat.blt y x = true)) : x = y :=
  have h₁ : ¬ x < y := fun h => h₁ (Nat.blt_eq.mpr h)
  have h₂ : ¬ y < x := fun h => h₂ (Nat.blt_eq.mpr h)
  Nat.le_antisymm (Nat.ge_of_not_lt h₂) (Nat.ge_of_not_lt h₁)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace6b1433d5bcec1e84132c9aace3c3c7302b892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
