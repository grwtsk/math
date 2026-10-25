# CenteredTwistedPsiHalfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:206f2a8b3d080179cd187633f806e234c4da399ebe96bda0a5c1411206855fb9",
  "kind": "def",
  "lexical_name": "CenteredTwistedPsiHalfPlusEpsilon",
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
  "slug": "centeredtwistedpsihalfplusepsilon--c7143bf5d7463e9fd918919d",
  "source": {
    "blob": "dc2f939513869faa791c8411f02618f62d9f4366",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variantb7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7143bf5d7463e9fd918919d97a3a49ea99e8e0207b53b3913e4d1679ee6eb6b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variantb7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:206f2a8b3d080179cd187633f806e234c4da399ebe96bda0a5c1411206855fb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CenteredTwistedPsiHalfPlusEpsilon
    {q : ℕ} (χ : DirichletCharacter ℂ q) : Prop :=
  CriticalSummatoryHalfPlusEpsilonMembership (centeredTwistedPsi χ)

/-- Character-specialized countable critical membership. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variantb7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variantb7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2f939513869faa791c8411f02618f62d9f4366` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
