# compare_ne_eq_iff_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fc182a8-8e06-06ba-fa2f-4c2b5751d518",
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
  "slug": "compare-ne-eq-iff-ne--2f4446cadb1488f7cdc3d70c",
  "source": {
    "blob": "e6ac711171abbaac8c94e0e94dd725ffbf9f9a5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant31143e969a042d460f66eea62e6da3fa5e98fa59ce50769b4b9657238cc855a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f4446cadb1488f7cdc3d70cecad2532e40dfdaf4a160806738a1b247ebcd076",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant31143e969a042d460f66eea62e6da3fa5e98fa59ce50769b4b9657238cc855a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fc182a8-8e06-06ba-fa2f-4c2b5751d518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–104.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant31143e969a042d460f66eea62e6da3fa5e98fa59ce50769b4b9657238cc855a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant31143e969a042d460f66eea62e6da3fa5e98fa59ce50769b4b9657238cc855a4.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6ac711171abbaac8c94e0e94dd725ffbf9f9a5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
