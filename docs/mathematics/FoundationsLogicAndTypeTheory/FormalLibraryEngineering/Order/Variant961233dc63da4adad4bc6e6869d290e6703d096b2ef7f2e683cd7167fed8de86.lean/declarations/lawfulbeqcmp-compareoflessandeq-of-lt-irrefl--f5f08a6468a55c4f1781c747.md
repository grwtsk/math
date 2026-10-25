# LawfulBEqCmp.compareOfLessAndEq_of_lt_irrefl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32e9b723-ee79-795d-0065-b3da476021f9",
  "kind": "theorem",
  "lexical_name": "LawfulBEqCmp.compareOfLessAndEq_of_lt_irrefl",
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
  "slug": "lawfulbeqcmp-compareoflessandeq-of-lt-irrefl--f5f08a6468a55c4f1781c747",
  "source": {
    "blob": "726acaa62989f64e73d4e63c07638c9fdf30078f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f08a6468a55c4f1781c74758e8fa569686d6fb1a10de62e979fb33612037d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32e9b723-ee79-795d-0065-b3da476021f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulBEqCmp.compareOfLessAndEq_of_lt_irrefl
    [LT α] [DecidableLT α] [DecidableEq α] [BEq α] [LawfulBEq α]
    (lt_irrefl : ∀ x : α, ¬x < x) :
    LawfulBEqCmp (α := α) (compareOfLessAndEq · ·) where
  compare_eq_iff_beq {x y} := by
    simp [compareOfLessAndEq]
    split <;> [skip; split] <;> simp [*]
    rintro rfl; exact lt_irrefl _ ‹_›

-- redundant? See `compareOfLessAndEq_of_lt_trans_of_lt_iff` in core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726acaa62989f64e73d4e63c07638c9fdf30078f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
