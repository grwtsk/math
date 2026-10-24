# primesOver.isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6131ffa0e414939ca245e8cad0ce0ca311219ca37691ca81655b0d9bbd9569a6",
  "kind": "instance",
  "lexical_name": "primesOver.isPrime",
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
  "slug": "primesover-isprime--260869f1ba0d9de38610f272",
  "source": {
    "blob": "3b7a63415fa055c59c8a6c5cd5a0de0fc4d7e164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 288,
    "path": "GRWTSK/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:260869f1ba0d9de38610f272dd5fd4497b0e15f55c45ce74bc65a135cbfa021c",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6131ffa0e414939ca245e8cad0ce0ca311219ca37691ca81655b0d9bbd9569a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance primesOver.isPrime (Q : primesOver p B) : Q.1.IsPrime :=
  Q.2.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7a63415fa055c59c8a6c5cd5a0de0fc4d7e164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
