# resolveLowerUpperConflict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9f5376a4db98f1604deb9de0aa9ed69cfff76a35f7856189760f53621bc04ab",
  "kind": "def",
  "lexical_name": "resolveLowerUpperConflict",
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
  "slug": "resolvelowerupperconflict--e6d7b46fd3df2b42dce61894",
  "source": {
    "blob": "a1fe689d568d644aedb2fdc62327d35c204c2bf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d7b46fd3df2b42dce61894173061a4432b094b9f4bacaf8a8837b37f87d1dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9f5376a4db98f1604deb9de0aa9ed69cfff76a35f7856189760f53621bc04ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveLowerUpperConflict (c₁ c₂ : IneqCnstr) : LinearM Unit := do
  trace[grind.debug.linarith.search.conflict] "{← c₁.denoteExpr}, {← c₂.denoteExpr}"
  let .add a₁ _ p₁ := c₁.p | c₁.throwUnexpected
  let .add a₂ _ p₂ := c₂.p | c₂.throwUnexpected
  let p := p₁.mul a₂.natAbs |>.combine (p₂.mul a₁.natAbs)
  let c : IneqCnstr := { p, strict := c₁.strict || c₂.strict, h := .combine c₁ c₂ }
  c.assert

/--
Try to find integer between lower and upper bounds that is different for known disequalities
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1fe689d568d644aedb2fdc62327d35c204c2bf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
