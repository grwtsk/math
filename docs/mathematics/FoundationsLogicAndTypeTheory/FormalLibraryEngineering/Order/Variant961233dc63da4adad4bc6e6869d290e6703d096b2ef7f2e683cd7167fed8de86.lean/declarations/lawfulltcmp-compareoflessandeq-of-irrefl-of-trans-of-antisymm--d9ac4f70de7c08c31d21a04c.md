# LawfulLTCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92d181c4-8b28-8f26-d330-662596eaae10",
  "kind": "theorem",
  "lexical_name": "LawfulLTCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm",
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
  "slug": "lawfulltcmp-compareoflessandeq-of-irrefl-of-trans-of-antisymm--d9ac4f70de7c08c31d21a04c",
  "source": {
    "blob": "726acaa62989f64e73d4e63c07638c9fdf30078f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9ac4f70de7c08c31d21a04c303e155778fe9f5de1782656080894d48b846f0e",
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

Occurrence: `result:92d181c4-8b28-8f26-d330-662596eaae10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulLTCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm
    [LT α] [DecidableLT α] [DecidableEq α]
    (lt_irrefl : ∀ x : α, ¬x < x)
    (lt_trans : ∀ {x y z : α}, x < y → y < z → x < z)
    (lt_antisymm : ∀ {x y : α}, ¬x < y → ¬y < x → x = y) :
    LawfulLTCmp (α := α) (compareOfLessAndEq · ·) :=
  { TransCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm
      lt_irrefl lt_trans lt_antisymm with
    eq_lt_iff_lt := Batteries.compareOfLessAndEq_eq_lt }

-- make redundant?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726acaa62989f64e73d4e63c07638c9fdf30078f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
