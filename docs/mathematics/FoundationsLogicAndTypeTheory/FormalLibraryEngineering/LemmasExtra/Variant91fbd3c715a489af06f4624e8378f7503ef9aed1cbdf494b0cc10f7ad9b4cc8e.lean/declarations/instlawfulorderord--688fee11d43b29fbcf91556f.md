# instLawfulOrderOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:597b00ca20d0573bfee3703e8a6dcef3c57b70b4eae48de3ec8cd7d28f463a87",
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
  "slug": "instlawfulorderord--688fee11d43b29fbcf91556f",
  "source": {
    "blob": "58e57bc20ad0391d0c2d31836aae291d05cce94b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:688fee11d43b29fbcf91556fd04cab20b8ae685b376b9fa9cff71561f95cf8a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:597b00ca20d0573bfee3703e8a6dcef3c57b70b4eae48de3ec8cd7d28f463a87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–197.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e57bc20ad0391d0c2d31836aae291d05cce94b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
