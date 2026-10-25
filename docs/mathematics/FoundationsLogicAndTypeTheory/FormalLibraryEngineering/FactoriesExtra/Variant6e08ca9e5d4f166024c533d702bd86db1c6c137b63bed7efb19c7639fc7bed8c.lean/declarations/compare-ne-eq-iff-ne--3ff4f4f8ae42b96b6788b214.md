# compare_ne_eq_iff_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddfa7300-3e71-af50-b099-399564b4672e",
  "kind": "theorem",
  "lexical_name": "compare_ne_eq_iff_ne",
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
  "slug": "compare-ne-eq-iff-ne--3ff4f4f8ae42b96b6788b214",
  "source": {
    "blob": "a179b5d02d5671e3969076134f74434527132c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant6e08ca9e5d4f166024c533d702bd86db1c6c137b63bed7efb19c7639fc7bed8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ff4f4f8ae42b96b6788b2144f88135d4efc4780f2754f75f53cdc68ca78ddd0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant6e08ca9e5d4f166024c533d702bd86db1c6c137b63bed7efb19c7639fc7bed8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddfa7300-3e71-af50-b099-399564b4672e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem compare_ne_eq_iff_ne {α : Type u} [Ord α] [LawfulEqOrd α] {a b : α} :
    compare a b ≠ .eq ↔ a ≠ b := by
  simp

grind_pattern compare_eq_lt => compare a b, Ordering.lt where
  guard compare a b = .lt

grind_pattern compare_eq_eq => compare a b, Ordering.eq where
  guard compare a b = .eq

grind_pattern compare_eq_gt => compare a b, Ordering.gt where
  guard compare a b = .gt

grind_pattern compare_ne_eq => compare a b, Ordering.eq where
  guard compare a b ≠ .eq

/--
Creates a `DecidableLT α` instance using a well-behaved `Ord α` instance.
-/
@[inline, expose, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant6e08ca9e5d4f166024c533d702bd86db1c6c137b63bed7efb19c7639fc7bed8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant6e08ca9e5d4f166024c533d702bd86db1c6c137b63bed7efb19c7639fc7bed8c.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a179b5d02d5671e3969076134f74434527132c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
