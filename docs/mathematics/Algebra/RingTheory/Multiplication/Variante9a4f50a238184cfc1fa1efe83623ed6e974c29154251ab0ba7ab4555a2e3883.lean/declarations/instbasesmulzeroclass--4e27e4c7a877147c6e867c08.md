# instBaseSMulZeroClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:164c9330878d31fa9d5446438511e6e3e8071ca08c1b75afe128380bf1398f63",
  "kind": "instance",
  "lexical_name": "instBaseSMulZeroClass",
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
  "slug": "instbasesmulzeroclass--4e27e4c7a877147c6e867c08",
  "source": {
    "blob": "7d8d7b1e9e2b43ba261d8f44e77a7b8bf69d90c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 179,
    "path": "GRWTSK/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e27e4c7a877147c6e867c086fc8632b78729f82bb5fd16d3039f56728989ae4",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:164c9330878d31fa9d5446438511e6e3e8071ca08c1b75afe128380bf1398f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instBaseSMulZeroClass [SMulZeroClass R V] :
    SMulZeroClass R (HahnModule Γ R V) :=
  inferInstanceAs <| SMulZeroClass R (HahnSeries Γ V)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d8d7b1e9e2b43ba261d8f44e77a7b8bf69d90c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
