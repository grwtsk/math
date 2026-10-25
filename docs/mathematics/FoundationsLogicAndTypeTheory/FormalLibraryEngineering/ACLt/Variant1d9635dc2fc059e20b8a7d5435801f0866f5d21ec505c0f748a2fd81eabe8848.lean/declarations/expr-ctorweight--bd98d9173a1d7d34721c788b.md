# Expr.ctorWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:235b9df4cbbb7e77c73fc6f80d76375f5998eafe16792b6b8575aac3a8005a07",
  "kind": "def",
  "lexical_name": "Expr.ctorWeight",
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
  "slug": "expr-ctorweight--bd98d9173a1d7d34721c788b",
  "source": {
    "blob": "5a82060fed12b5b2995adb3b6fbfef7677dcf25b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant1d9635dc2fc059e20b8a7d5435801f0866f5d21ec505c0f748a2fd81eabe8848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd98d9173a1d7d34721c788b60bf196e5b803d8566463fc89e54cddf0172c77c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant1d9635dc2fc059e20b8a7d5435801f0866f5d21ec505c0f748a2fd81eabe8848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:235b9df4cbbb7e77c73fc6f80d76375f5998eafe16792b6b8575aac3a8005a07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Expr.ctorWeight : Expr → UInt8
  | bvar ..    => 0
  | fvar ..    => 1
  | mvar ..    => 2
  | sort ..    => 3
  | const ..   => 4
  | lit ..     => 5
  | mdata ..   => 6
  | proj ..    => 7
  | app ..     => 8
  | lam ..     => 9
  | forallE .. => 10
  | letE ..    => 11

namespace Meta
namespace ACLt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant1d9635dc2fc059e20b8a7d5435801f0866f5d21ec505c0f748a2fd81eabe8848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant1d9635dc2fc059e20b8a7d5435801f0866f5d21ec505c0f748a2fd81eabe8848.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a82060fed12b5b2995adb3b6fbfef7677dcf25b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
