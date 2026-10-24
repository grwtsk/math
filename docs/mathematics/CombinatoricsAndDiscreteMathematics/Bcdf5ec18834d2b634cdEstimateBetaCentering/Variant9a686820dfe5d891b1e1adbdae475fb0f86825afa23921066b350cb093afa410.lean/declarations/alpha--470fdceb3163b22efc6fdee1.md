# alpha

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e05534de453380b9f0d2779937c278632755e0dfb20226e1c034c1c2a32f52dd",
  "kind": "def",
  "lexical_name": "alpha",
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
  "slug": "alpha--470fdceb3163b22efc6fdee1",
  "source": {
    "blob": "6a5b6bf1acf71aab6b954df80405b5e5dc661820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:470fdceb3163b22efc6fdee179dd0070ee330d7c82189c3d11528980022f1192",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e05534de453380b9f0d2779937c278632755e0dfb20226e1c034c1c2a32f52dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alpha (U : ℕ) : ℝ := ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / (d : ℝ)

/-- Separate quotient casts are essential in this real finite discrepancy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a5b6bf1acf71aab6b954df80405b5e5dc661820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
