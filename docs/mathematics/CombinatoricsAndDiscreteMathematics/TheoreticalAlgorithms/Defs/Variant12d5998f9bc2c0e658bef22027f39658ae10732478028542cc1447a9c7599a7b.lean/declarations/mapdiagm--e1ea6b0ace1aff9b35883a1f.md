# mapDiagM'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85c0ea414f1957129c962f3bb580099cc57b4fa5f6ded908e89ab35f808406e4",
  "kind": "def",
  "lexical_name": "mapDiagM'",
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
  "slug": "mapdiagm--e1ea6b0ace1aff9b35883a1f",
  "source": {
    "blob": "1f0c6e213a78c8f4cffbb3e23a49f13d9d6aae0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 438,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant12d5998f9bc2c0e658bef22027f39658ae10732478028542cc1447a9c7599a7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1ea6b0ace1aff9b35883a1ffa0ad87d5c8819eb71168c67b4a1b5dba2b7ac86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant12d5998f9bc2c0e658bef22027f39658ae10732478028542cc1447a9c7599a7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85c0ea414f1957129c962f3bb580099cc57b4fa5f6ded908e89ab35f808406e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapDiagM' {m} [Monad m] {α} (f : α → α → m Unit) : List α → m Unit
-- as ported:
--   | [] => return ()
--   | h :: t => (f h h >> t.mapM' (f h)) >> t.mapDiagM'
  | [] => return ()
  | h :: t => do
    _ ← f h h
    _ ← t.mapM' (f h)
    t.mapDiagM' f
#align list.mmap'_diag List.mapDiagM'

/-- Map each element of a `List` to an action, evaluate these actions in order,
    and collect the results.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant12d5998f9bc2c0e658bef22027f39658ae10732478028542cc1447a9c7599a7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant12d5998f9bc2c0e658bef22027f39658ae10732478028542cc1447a9c7599a7b.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f0c6e213a78c8f4cffbb3e23a49f13d9d6aae0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
