# SnapshotValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d849a6e89753e979352049fa82d4c4f487e298f458a2b55af1f28c9712b73d9c",
  "kind": "def",
  "lexical_name": "SnapshotValid",
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
  "slug": "snapshotvalid--1e5cc467f436adea0e9b8dac",
  "source": {
    "blob": "8815c787dd5883c97d73ce1610ebeb297c27c07c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 210,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e5cc467f436adea0e9b8dacf5c24679b60096d0bdf702e72a32d92f14c925b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d849a6e89753e979352049fa82d4c4f487e298f458a2b55af1f28c9712b73d9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SnapshotValid (snapshot : Snapshot) : Prop :=
  snapshot.profileVersion = 1 ∧
  snapshot.source.repository ≠ "" ∧ snapshot.source.target ≠ "" ∧
  GitObjectSpelling snapshot.source.commit ∧ GitObjectSpelling snapshot.source.tree ∧
  snapshot.source.repository.length ≤ snapshot.limits.maxNameLength ∧
  snapshot.source.target.length ≤ snapshot.limits.maxNameLength ∧
  snapshot.limits.maxValue < 2 ^ 64 ∧
  snapshot.sorts ≠ [] ∧
  snapshot.sorts = (List.range snapshot.sorts.length).map SortId.mk ∧
  snapshot.symbols.map Symbol.id =
    (List.range snapshot.symbols.length).map SymbolId.mk ∧
  snapshot.constructors.map Constructor.id =
    (List.range snapshot.constructors.length).map ConstructorId.mk ∧
  snapshot.primitives = (List.range snapshot.primitives.length).map PrimitiveId.mk ∧
  snapshot.assumptions.map Assumption.id = List.range snapshot.assumptions.length ∧
  (snapshot.symbols.map Symbol.value).Nodup ∧
  (snapshot.occurrences.map Occurrence.id).Nodup ∧
  (∀ symbol ∈ snapshot.symbols,
    symbol.value.length ≤ snapshot.limits.maxNameLength) ∧
  (∀ assumption ∈ snapshot.assumptions,
    assumption.statement ≠ "" ∧
    assumption.statement.length ≤ snapshot.limits.maxNameLength) ∧
  (∀ occurrence ∈ snapshot.occurrences,
    occurrence.id.value < 2 ^ 64 ∧ occurrence.symbol ∈ snapshot.symbols.map Symbol.id) ∧
  (∀ constructor ∈ snapshot.constructors, ConstructorValid snapshot constructor) ∧
  snapshot.sorts.length + snapshot.symbols.length + snapshot.constructors.length +
    snapshot.primitives.length + snapshot.occurrences.length + snapshot.assumptions.length ≤
      snapshot.limits.maxRecords ∧
  snapshotWork snapshot ≤ snapshot.limits.maxWork

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8815c787dd5883c97d73ce1610ebeb297c27c07c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
