# instLawfulOrderOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1df08b61a7e4d245410f933c9758dda191168c51ae1f0fad6ae96d64372b353e",
  "kind": "instance",
  "lexical_name": "instLawfulOrderOrd",
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
  "slug": "instlawfulorderord--6adac33f2eed92fcd3adead1",
  "source": {
    "blob": "9dbbd038a1028cf52ae6eb80c1fdf946fb368e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant2e42a680f0024408e8988c30c90e03e8afe2b94dc91b2a418b68620ad762b55a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6adac33f2eed92fcd3adead1d4fad53645670719bc218e4ad632aec128033153",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant2e42a680f0024408e8988c30c90e03e8afe2b94dc91b2a418b68620ad762b55a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1df08b61a7e4d245410f933c9758dda191168c51ae1f0fad6ae96d64372b353e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance instLawfulOrderOrd {α : Type u} [LE α]
    [Total (α := α) (· ≤ ·)] :
    LawfulOrderOrd α where
  isLE_compare a b := by
    simp only [compare]
    by_cases a ≤ b <;> rename_i h
    · simp only [h, ↓reduceIte, iff_true]
      split <;> simp
    · simp [h]
  isGE_compare a b := by
    simp only [compare]
    cases Total.total (r := (· ≤ ·)) a b <;> rename_i h
    · simp only [h, ↓reduceIte]
      split <;> simp [*]
    · simp only [h, ↓reduceIte, iff_true]
      split <;> simp

end Classical.Order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant2e42a680f0024408e8988c30c90e03e8afe2b94dc91b2a418b68620ad762b55a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant2e42a680f0024408e8988c30c90e03e8afe2b94dc91b2a418b68620ad762b55a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dbbd038a1028cf52ae6eb80c1fdf946fb368e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
