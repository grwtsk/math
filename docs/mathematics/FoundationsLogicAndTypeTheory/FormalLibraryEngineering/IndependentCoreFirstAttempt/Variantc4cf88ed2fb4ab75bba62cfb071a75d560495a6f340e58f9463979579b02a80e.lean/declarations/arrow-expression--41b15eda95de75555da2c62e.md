# Arrow.expression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eda047067f1c86300cd83c4cab32f06acf233555d88a118338beb0e1b6ae0ace",
  "kind": "def",
  "lexical_name": "Arrow.expression",
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
  "slug": "arrow-expression--41b15eda95de75555da2c62e",
  "source": {
    "blob": "24b79a45594b1d7c2785a2efbf2897e6c32d55b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2177,
    "line": 2174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variantc4cf88ed2fb4ab75bba62cfb071a75d560495a6f340e58f9463979579b02a80e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41b15eda95de75555da2c62e5d1b3169ee8de723ff8187bc6799e234d03c345d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variantc4cf88ed2fb4ab75bba62cfb071a75d560495a6f340e58f9463979579b02a80e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eda047067f1c86300cd83c4cab32f06acf233555d88a118338beb0e1b6ae0ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2174–2177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Arrow.expression : Arrow → Expr Bool
  | .base => .sort false
  | .function domain codomain => .pi domain.expression codomain.expression

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variantc4cf88ed2fb4ab75bba62cfb071a75d560495a6f340e58f9463979579b02a80e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variantc4cf88ed2fb4ab75bba62cfb071a75d560495a6f340e58f9463979579b02a80e.lean#L2174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24b79a45594b1d7c2785a2efbf2897e6c32d55b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
