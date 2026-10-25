# EqCnstr.superposeAIdempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a1dc3ef9a88310e41958de621d1a4e5d11a9b122ee3a854bcef1ae2f4602e2b",
  "kind": "def",
  "lexical_name": "EqCnstr.superposeAIdempotent",
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
  "slug": "eqcnstr-superposeaidempotent--6b99ba77a6665aea0a86098a",
  "source": {
    "blob": "2132d1d411da30e861fc3a1082696c4f1ffa15c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant0c1b3de2379e00ca07090a427592504058a72569c5a34cc7e28c68bcd0f40a23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b99ba77a6665aea0a86098a920dc4ff1d2266d19fd4f62020913a6396268c69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant0c1b3de2379e00ca07090a427592504058a72569c5a34cc7e28c68bcd0f40a23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a1dc3ef9a88310e41958de621d1a4e5d11a9b122ee3a854bcef1ae2f4602e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def EqCnstr.superposeAIdempotent (c : EqCnstr) : ACM Unit := do
  let x := c.lhs.firstVar
  unless c.rhs.startsWithVar x do
    let c ← mkEqCnstr c.lhs ((AC.Seq.var x) ++ c.rhs) (.superpose_head_idempotent x c)
    c.addToQueue'
  let x := c.lhs.lastVar
  unless c.rhs.endsWithVar x do
    let c ← mkEqCnstr c.lhs (c.rhs ++ (AC.Seq.var x)) (.superpose_tail_idempotent x c)
    c.addToQueue'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant0c1b3de2379e00ca07090a427592504058a72569c5a34cc7e28c68bcd0f40a23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant0c1b3de2379e00ca07090a427592504058a72569c5a34cc7e28c68bcd0f40a23.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2132d1d411da30e861fc3a1082696c4f1ffa15c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
