# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaSymIsShared.Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.Lean.Meta.Sym.isShared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4222b12c46b6253817a4f868dc3014e304ebac9d19d672f1914a3872c75a9478",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaSymIsShared.Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.Lean.Meta.Sym.isShared",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--4b7ef3c8f8768645b5ace688",
  "source": {
    "blob": "a43de50729d035246f57a650e2d10c893ba0406e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b7ef3c8f8768645b5ace688e376e45df07887c91ff3380795a27bddd45cf932",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4222b12c46b6253817a4f868dc3014e304ebac9d19d672f1914a3872c75a9478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaSymIsShared.Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.Lean.Meta.Sym.isShared (e : Expr) : SymM Bool :=
  return (← get).share.set.contains { expr := e }

/--
Internalizes the pattern's expressions into the current `SymM` share table.

A pattern is built in `MetaM`, outside the `SymM` thread whose table the targets are internalized
into, so its closed subterms (the instance telescope of a `wp` application, for example) are
structurally equal to but distinct from the targets'. Internalizing the pattern once makes those
subterms pointer-equal to every target internalized afterwards, so matching them is `O(1)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43de50729d035246f57a650e2d10c893ba0406e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
