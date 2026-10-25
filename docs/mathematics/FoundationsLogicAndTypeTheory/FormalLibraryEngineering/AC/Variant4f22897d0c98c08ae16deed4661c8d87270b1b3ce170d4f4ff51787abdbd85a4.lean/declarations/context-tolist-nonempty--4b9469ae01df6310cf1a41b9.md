# Context.toList_nonEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29db9b59-8b6c-1043-ee3a-20a268830bab",
  "kind": "theorem",
  "lexical_name": "Context.toList_nonEmpty",
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
  "slug": "context-tolist-nonempty--4b9469ae01df6310cf1a41b9",
  "source": {
    "blob": "f4fb30e862e29a6a5f4eb47fb4b7fac6a43eb418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b9469ae01df6310cf1a41b92966043e48d41446e949b88386fa126ed01b04e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29db9b59-8b6c-1043-ee3a-20a268830bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Context.toList_nonEmpty (e : Expr) : e.toList ≠ [] := by
  induction e with
  | var => simp [Expr.toList]
  | op l r ih₁ _   =>
    simp [Expr.toList]
    cases h : l.toList with
    | nil => contradiction
    | cons => simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4fb30e862e29a6a5f4eb47fb4b7fac6a43eb418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
