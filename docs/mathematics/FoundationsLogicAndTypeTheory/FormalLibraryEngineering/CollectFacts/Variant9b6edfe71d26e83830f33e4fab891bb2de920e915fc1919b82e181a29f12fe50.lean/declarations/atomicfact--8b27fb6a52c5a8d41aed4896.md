# AtomicFact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfe9e5f0adfbc72f217547a7c126cdbc294fe949a6290513e83fd56b2ebcc0b2",
  "kind": "inductive",
  "lexical_name": "AtomicFact",
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
  "slug": "atomicfact--8b27fb6a52c5a8d41aed4896",
  "source": {
    "blob": "65d43f730c39982962b0c61018d412b1ba90d4ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b27fb6a52c5a8d41aed4896342e02746e69bffc68665e9dac2e5847d2f5f8f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfe9e5f0adfbc72f217547a7c126cdbc294fe949a6290513e83fd56b2ebcc0b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive AtomicFact
| eq (lhs : Nat) (rhs : Nat) (proof : Expr)
| ne (lhs : Nat) (rhs : Nat) (proof : Expr)
| le (lhs : Nat) (rhs : Nat) (proof : Expr)
| nle (lhs : Nat) (rhs : Nat) (proof : Expr)
| lt (lhs : Nat) (rhs : Nat) (proof : Expr)
| nlt (lhs : Nat) (rhs : Nat) (proof : Expr)
| isTop (idx : Nat)
| isBot (idx : Nat)
| isInf (lhs : Nat) (rhs : Nat) (res : Nat)
| isSup (lhs : Nat) (rhs : Nat) (res : Nat)
deriving Inhabited, BEq

-- For debugging purposes.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d43f730c39982962b0c61018d412b1ba90d4ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
