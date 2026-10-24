# RegularQuarticCancellationMustRemainCoupled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b1a75b8ba5107e5a2d181c831e32561345d76b7682d29098b4b218ebb8a1c2d",
  "kind": "def",
  "lexical_name": "RegularQuarticCancellationMustRemainCoupled",
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
  "slug": "regularquarticcancellationmustremaincoupled--71c14b05af1bc1e6f8de2009",
  "source": {
    "blob": "bcf01bf3b1dd0d213726d9327f0d0cc24869760d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71c14b05af1bc1e6f8de200938796d500baa7e523cc1c93f3343e5ecd0ce74f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitQuarticDiagonalObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b1a75b8ba5107e5a2d181c831e32561345d76b7682d29098b4b218ebb8a1c2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularQuarticCancellationMustRemainCoupled : Prop :=
  ∀ δ : ℝ, 0 < δ →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j b : ℕ,
        b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
        twoNonunitRegularSignedQuarticCollisionEndpointMajorant b ≤
          C * (((2 ^ j : ℕ) : ℝ)) *
            (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact identification with the existing signed quartic supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitQuarticDiagonalObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalObstruction.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf01bf3b1dd0d213726d9327f0d0cc24869760d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
