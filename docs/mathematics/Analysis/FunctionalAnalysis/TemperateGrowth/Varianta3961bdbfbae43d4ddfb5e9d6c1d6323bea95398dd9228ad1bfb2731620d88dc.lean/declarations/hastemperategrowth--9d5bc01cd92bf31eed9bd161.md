# HasTemperateGrowth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ec0ec84b11780f502c1ec6b361bb6c8e57561ed231bc40a25745f2aa9da2c8f",
  "kind": "def",
  "lexical_name": "HasTemperateGrowth",
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
  "slug": "hastemperategrowth--9d5bc01cd92bf31eed9bd161",
  "source": {
    "blob": "5cb955c3f434875ffc3417088861e8076356182d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d5bc01cd92bf31eed9bd1612732d005b8670754d8e4040e6df49b61f2bd984d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ec0ec84b11780f502c1ec6b361bb6c8e57561ed231bc40a25745f2aa9da2c8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasTemperateGrowth (f : E → F) : Prop :=
  ContDiff ℝ ∞ f ∧ ∀ n : ℕ, ∃ (k : ℕ) (C : ℝ), ∀ x, ‖iteratedFDeriv ℝ n f x‖ ≤ C * (1 + ‖x‖) ^ k

/-- A function has temperate growth if and only if it is smooth and its `n`-th iterated
derivative is `O((1 + ‖x‖) ^ k)` for some `k : ℕ` (depending on `n`).

Note that the `O` here is with respect to the `⊤` filter, meaning that the bound holds everywhere.

TODO: when `E` is finite dimensional, this is equivalent to the derivatives being `O(‖x‖ ^ k)`
as `‖x‖ → ∞`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb955c3f434875ffc3417088861e8076356182d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
