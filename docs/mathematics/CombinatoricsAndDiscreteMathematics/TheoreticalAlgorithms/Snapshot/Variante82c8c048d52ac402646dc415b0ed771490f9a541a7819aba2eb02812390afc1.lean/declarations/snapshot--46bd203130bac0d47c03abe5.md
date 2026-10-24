# Snapshot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50e877c3f40e40f7b72a42cce2346486c4ff7301d374ddbd5ce300aec9c73c1f",
  "kind": "structure",
  "lexical_name": "Snapshot",
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
  "slug": "snapshot--46bd203130bac0d47c03abe5",
  "source": {
    "blob": "8815c787dd5883c97d73ce1610ebeb297c27c07c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46bd203130bac0d47c03abe549995683c4f5bee07aa94122a0258251b2c78ba5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50e877c3f40e40f7b72a42cce2346486c4ff7301d374ddbd5ce300aec9c73c1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Snapshot where
  /-- Semantic snapshot-profile version; this projection checker accepts version one. -/
  profileVersion : ℕ
  /-- Immutable provenance fields included in exact operand equality. -/
  source : SourceScope
  /-- Canonically indexed assumptions explicitly attached to this source scope. -/
  assumptions : List Assumption
  /-- Declared admission quotas shared by the snapshot and its dependent certificates. -/
  limits : Limits
  /-- Nonempty dense sequence of supported sort identities. -/
  sorts : List SortId
  /-- Dense symbol table with pairwise distinct exact values. -/
  symbols : List Symbol
  /-- Dense constructor declarations, checked against these sorts, symbols and primitives. -/
  constructors : List Constructor
  /-- Dense primitive-resource coordinate identities. -/
  primitives : List PrimitiveId
  /-- Exact source order; occurrence identities need not be numerically sorted. -/
  occurrences : List Occurrence
  deriving DecidableEq, Repr, Inhabited

/-- Project child positions without changing their order in the surface template. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8815c787dd5883c97d73ce1610ebeb297c27c07c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
