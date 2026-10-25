# Formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ffe7dbe0df1307e2785165fa6b2c6236e506e3db5b5094a5ebe0be3b0cf874f",
  "kind": "inductive",
  "lexical_name": "Formula",
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
  "slug": "formula--59bc2016f04f2fe780e6fab1",
  "source": {
    "blob": "217be41f50ae150a01eed25c9f6876c1562ad5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6896d74e117266879871ace92c642d5c9e26ef7d5470757eab39dc38ec2638d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59bc2016f04f2fe780e6fab1d9731a76957678e0e9312a63787c8206ee882015",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6896d74e117266879871ace92c642d5c9e26ef7d5470757eab39dc38ec2638d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ffe7dbe0df1307e2785165fa6b2c6236e506e3db5b5094a5ebe0be3b0cf874f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Formula (α : Type u) : Type u where
  | var : α → Formula α
  | falsum : Formula α
  | truth : Formula α
  | neg : Formula α → Formula α
  | conj : Formula α → Formula α → Formula α
  | disj : Formula α → Formula α → Formula α
  | impl : Formula α → Formula α → Formula α
  | eqv : Formula α → Formula α → Formula α
deriving Repr, DecidableEq

namespace Formula

variable {α : Type u}

/-- The constant Boolean formula determined by a Boolean value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6896d74e117266879871ace92c642d5c9e26ef7d5470757eab39dc38ec2638d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6896d74e117266879871ace92c642d5c9e26ef7d5470757eab39dc38ec2638d1.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217be41f50ae150a01eed25c9f6876c1562ad5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
