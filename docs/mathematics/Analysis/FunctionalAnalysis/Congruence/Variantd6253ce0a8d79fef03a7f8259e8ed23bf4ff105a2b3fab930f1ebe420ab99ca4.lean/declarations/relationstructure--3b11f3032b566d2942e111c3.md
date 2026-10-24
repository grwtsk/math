# RelationStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2413fe09e9e4f6d773d6fc3157a86ddf34704b0d11886b4e22a3bd238b83940a",
  "kind": "def",
  "lexical_name": "RelationStructure",
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
  "slug": "relationstructure--3b11f3032b566d2942e111c3",
  "source": {
    "blob": "1d9264e160c546c9d8dc700caed09f5ae392941b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 225,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Congruence/Variantd6253ce0a8d79fef03a7f8259e8ed23bf4ff105a2b3fab930f1ebe420ab99ca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b11f3032b566d2942e111c3c2f50b8fee5f4bc1f7d25e18c707dd4b2e6d6c95",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Congruence/Variantd6253ce0a8d79fef03a7f8259e8ed23bf4ff105a2b3fab930f1ebe420ab99ca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2413fe09e9e4f6d773d6fc3157a86ddf34704b0d11886b4e22a3bd238b83940a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RelationStructure (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) : Prop :=
  candidate.declaration = full.value ∧
  (relationPairs candidate).Nodup ∧
  (relationPairs candidate).Sublist (catalogPairUniverse full.value) ∧
  (∀ index ∈ List.range full.value.catalog.length, (index, index) ∈ relationPairs candidate) ∧
  (∀ pair ∈ relationPairs candidate, (pair.2, pair.1) ∈ relationPairs candidate) ∧
  (∀ first ∈ relationPairs candidate, ∀ second ∈ relationPairs candidate,
    first.2 = second.1 → (first.1, second.2) ∈ relationPairs candidate) ∧
  (∀ pair ∈ relationPairs candidate,
    ∀ constructor ∈ full.snapshot.value.constructors,
    ∀ lifted ∈ catalogPairUniverse full.value,
    catalogTermAt full.value lifted.1 = .unary constructor.id (catalogTermAt full.value pair.1) →
    catalogTermAt full.value lifted.2 = .unary constructor.id (catalogTermAt full.value pair.2) →
    lifted ∈ relationPairs candidate) ∧
  (∀ generator ∈ full.value.generators,
    ∀ substitution ∈ finiteWords (catalogTerms full.value) full.value.variableCount,
    ∀ pair ∈ catalogPairUniverse full.value,
    catalogTermAt full.value pair.1 = generator.equation.left.substitute substitution →
    catalogTermAt full.value pair.2 = generator.equation.right.substitute substitution →
    pair ∈ relationPairs candidate) ∧
  (∀ term ∈ catalogTerms full.value,
    ∃ role ∈ full.value.roles.accepting, evaluateTerm full.value.roles.table [] term = some role) ∧
  (candidate.entries.map fun entry => entry.derivation.work).sum +
    (full.value.catalog.length + 1) ^ (4 + full.value.variableCount) *
      (full.value.roles.table.rows.length + full.value.generators.length + 1) ≤
      full.snapshot.value.limits.maxWork

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Congruence/Variantd6253ce0a8d79fef03a7f8259e8ed23bf4ff105a2b3fab930f1ebe420ab99ca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Congruence/Variantd6253ce0a8d79fef03a7f8259e8ed23bf4ff105a2b3fab930f1ebe420ab99ca4.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d9264e160c546c9d8dc700caed09f5ae392941b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
