# betaThroughLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e22f72b43688c14eec7f858c6f1d61789f2dc40515f1a5cee560d80c32291e4",
  "kind": "def",
  "lexical_name": "betaThroughLet",
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
  "slug": "betathroughlet--591e420891e9b49e68f1e453",
  "source": {
    "blob": "0c253fbe923f8c42e87e7fa150a4e0e0a6e2651d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToBatteries/Variant5c11c309ad276729ac546372a881574479814714fb84c9bcb0a89abbb29bbc55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:591e420891e9b49e68f1e4532526168cee8425c2a2cd03fc7a9eec5b68840b6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToBatteries/Variant5c11c309ad276729ac546372a881574479814714fb84c9bcb0a89abbb29bbc55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e22f72b43688c14eec7f858c6f1d61789f2dc40515f1a5cee560d80c32291e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def betaThroughLet (f : Expr) (args : Array Expr) : Expr :=
  betaThroughLetAux f args.toList

/-- Beta reduces head of an expression, `(fun x => e) a` ==> `e[x/a]`. This version applies
arguments through let bindings without inlining them.

Example
```
headBeta' ((fun x => let y := x * x; fun z => x + y + z) a b)
==>
let y := a * a; a + y + b
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToBatteries/Variant5c11c309ad276729ac546372a881574479814714fb84c9bcb0a89abbb29bbc55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToBatteries/Variant5c11c309ad276729ac546372a881574479814714fb84c9bcb0a89abbb29bbc55.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c253fbe923f8c42e87e7fa150a4e0e0a6e2651d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
