# mangoldtAngularSymbol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:284dda85e06c7418caee10d31b0db02842815a4df9d2b2c6dc6317e23f15cda8",
  "kind": "def",
  "lexical_name": "mangoldtAngularSymbol",
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
  "slug": "mangoldtangularsymbol--3e1bcd4612db86a78c420c71",
  "source": {
    "blob": "3283ad1159b5b804affd47ddadd17323efbacd95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 243,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e1bcd4612db86a78c420c716e751119d2ebf6a84aef99541713b8198a59672a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:284dda85e06c7418caee10d31b0db02842815a4df9d2b2c6dc6317e23f15cda8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mangoldtAngularSymbol (A ω : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n * Real.cos (ω * Real.log n)

/-- The standard-to-positive-angular frequency substitution is explicit, despite cosine evenness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3283ad1159b5b804affd47ddadd17323efbacd95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
