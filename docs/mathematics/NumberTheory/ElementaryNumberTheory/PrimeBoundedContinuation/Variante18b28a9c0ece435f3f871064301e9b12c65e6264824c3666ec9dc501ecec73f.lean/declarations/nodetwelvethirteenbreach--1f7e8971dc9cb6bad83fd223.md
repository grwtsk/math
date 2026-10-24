# nodeTwelveThirteenBreach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6afcf16b18cb99bfe20e6b95b638be380631b24f1b7860037309a1a88df165d6",
  "kind": "def",
  "lexical_name": "nodeTwelveThirteenBreach",
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
  "slug": "nodetwelvethirteenbreach--1f7e8971dc9cb6bad83fd223",
  "source": {
    "blob": "86e0f306b489ee4710b64ee6c71a631f0b360860",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 640,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variante18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f7e8971dc9cb6bad83fd22363ff3442b76c2295316b8bd372f3810b027b17df",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variante18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6afcf16b18cb99bfe20e6b95b638be380631b24f1b7860037309a1a88df165d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nodeTwelveThirteenBreach : ExternalPrimeBreach nodeTwelveP5Ledger where
  prime := 13
  isPrime := by norm_num
  absentFromLedger := by
    norm_num [ledgerPrimes, nodeTwelveP5Ledger]

@[surface_certificate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variante18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variante18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86e0f306b489ee4710b64ee6c71a631f0b360860` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
