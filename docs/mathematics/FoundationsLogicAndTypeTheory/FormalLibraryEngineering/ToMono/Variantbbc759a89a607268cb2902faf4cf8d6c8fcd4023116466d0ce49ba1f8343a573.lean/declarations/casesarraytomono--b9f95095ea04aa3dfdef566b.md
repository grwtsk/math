# casesArrayToMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:784dc16e63c3b089f5af7ab0bd4f63943ee9ff2232cec135607b14c8e703df0c",
  "kind": "def",
  "lexical_name": "casesArrayToMono",
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
  "slug": "casesarraytomono--b9f95095ea04aa3dfdef566b",
  "source": {
    "blob": "e2bfd977f9bd3dd39aef2bd7c2bc9770c96a65c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9f95095ea04aa3dfdef566bff58922a47d5a2ef69290e0a09d9b1fa18a8c14a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:784dc16e63c3b089f5af7ab0bd4f63943ee9ff2232cec135607b14c8e703df0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def casesArrayToMono (c : Cases .pure) (_ : c.typeName == ``Array) : ToMonoM (Code .pure) := do
  assert! c.alts.size == 1
  let .alt _ ps k := c.alts[0]! | unreachable!
  eraseParams ps
  let p := ps[0]!
  let decl := { fvarId := p.fvarId, binderName := p.binderName, type := anyExpr, value := .const ``Array.toList [] #[.erased, .fvar c.discr] }
  modifyLCtx fun lctx => lctx.addLetDecl decl
  let k ← k.toMono
  return .let decl k

/-- Eliminate `cases` for `ByteArray. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bfd977f9bd3dd39aef2bd7c2bc9770c96a65c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
