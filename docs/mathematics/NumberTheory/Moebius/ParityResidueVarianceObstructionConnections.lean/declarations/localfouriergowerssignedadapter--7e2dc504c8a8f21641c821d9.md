# LocalFourierGowersSignedAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:802bd868e9174911d3a60afb587a2327514f26198f33f5d973c9d42aa92b1bd1",
  "kind": "abbrev",
  "lexical_name": "LocalFourierGowersSignedAdapter",
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
  "slug": "localfouriergowerssignedadapter--7e2dc504c8a8f21641c821d9",
  "source": {
    "blob": "d141d25d7f0a6a180b5cd73bc94c4d9053c7866f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 259,
    "path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceObstructionConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e2dc504c8a8f21641c821d9fcb7229b722e4bf5f0a3b35717cee462a19eef57",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityResidueVarianceObstructionConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:802bd868e9174911d3a60afb587a2327514f26198f33f5d973c9d42aa92b1bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev LocalFourierGowersSignedAdapter
    (d : LocalFourierGowersSignedData) :=
  ToSignedSquareDiagonalBudgetAdapter
    (LocalFourierGowersSignedSource d)

/-! ## Uniform L-function restriction -/

/-- Dirichlet/Hecke L-function source profile.

A zero-free region alone does not populate the final signed bridge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityResidueVarianceObstructionConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityResidueVarianceObstructionConnections.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d141d25d7f0a6a180b5cd73bc94c4d9053c7866f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
