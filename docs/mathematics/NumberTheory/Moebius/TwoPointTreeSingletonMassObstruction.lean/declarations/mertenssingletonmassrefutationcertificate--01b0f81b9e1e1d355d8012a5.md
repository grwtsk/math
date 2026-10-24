# MertensSingletonMassRefutationCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8709048969864f658dc75f86b03f4976b4f07c12630801a61bd20211551b04c8",
  "kind": "structure",
  "lexical_name": "MertensSingletonMassRefutationCertificate",
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
  "slug": "mertenssingletonmassrefutationcertificate--01b0f81b9e1e1d355d8012a5",
  "source": {
    "blob": "df63aa2cc4c6b4b86fa35fe5e55314e766859d03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01b0f81b9e1e1d355d8012a52c6678f0fd2f26d4cd89b5f1b4cdf2578e1be7b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8709048969864f658dc75f86b03f4976b4f07c12630801a61bd20211551b04c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MertensSingletonMassRefutationCertificate : Type where
  pair_reindex : ∀ j : ℕ,
    mertensTwoPointSingletonSquareMass j =
      mertensSquarePairMass j
  squarefree_pair_count : ∀ j : ℕ,
    mertensSquarePairMass j =
      ((Nat.choose (mertensSquarefreeCountAtScale j) 2 : ℕ) : ℝ)
  quarterPower_escape : ∀ A : ℝ, 0 ≤ A → ∃ j : ℕ,
    (A * (((2 ^ j : ℕ) : ℝ) ^ ((1 : ℝ) / 4))) ^ 2 *
        ((2 ^ (j + 1) : ℕ) : ℝ) <
      ((j : ℝ) + 2) * mertensTwoPointSingletonSquareMass j

/-- The one fixed exponent needed for the scoped contradiction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df63aa2cc4c6b4b86fa35fe5e55314e766859d03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
