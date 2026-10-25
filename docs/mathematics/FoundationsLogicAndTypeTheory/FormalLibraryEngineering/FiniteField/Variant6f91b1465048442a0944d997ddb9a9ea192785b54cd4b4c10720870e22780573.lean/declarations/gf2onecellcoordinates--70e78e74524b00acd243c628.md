# gf2OneCellCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:397177216c26dbba17289c666911631cd4c3e519aa13e33a8f87044ac41bbb6d",
  "kind": "def",
  "lexical_name": "gf2OneCellCoordinates",
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
  "slug": "gf2onecellcoordinates--70e78e74524b00acd243c628",
  "source": {
    "blob": "538eea29d008cd38e3b31c6eaadc4771ec089b13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variant6f91b1465048442a0944d997ddb9a9ea192785b54cd4b4c10720870e22780573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70e78e74524b00acd243c62866708aee3040e32d5195ed193d50d928fa359da7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variant6f91b1465048442a0944d997ddb9a9ea192785b54cd4b4c10720870e22780573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:397177216c26dbba17289c666911631cd4c3e519aa13e33a8f87044ac41bbb6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gf2OneCellCoordinates : GF2 ≃ₗ[GF2] GF2Matrix 1 1 :=
  { toFun := fun x _ _ => x
    invFun := fun A => A 0 0
    left_inv := fun _ => rfl
    right_inv := by
      intro A
      funext i j
      fin_cases i
      fin_cases j
      rfl
    map_add' := by intro x y; rfl
    map_smul' := by intro c x; rfl }

/-- The resulting model-indexed encoding of `GF(2)` by one Boolean cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variant6f91b1465048442a0944d997ddb9a9ea192785b54cd4b4c10720870e22780573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variant6f91b1465048442a0944d997ddb9a9ea192785b54cd4b4c10720870e22780573.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `538eea29d008cd38e3b31c6eaadc4771ec089b13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
