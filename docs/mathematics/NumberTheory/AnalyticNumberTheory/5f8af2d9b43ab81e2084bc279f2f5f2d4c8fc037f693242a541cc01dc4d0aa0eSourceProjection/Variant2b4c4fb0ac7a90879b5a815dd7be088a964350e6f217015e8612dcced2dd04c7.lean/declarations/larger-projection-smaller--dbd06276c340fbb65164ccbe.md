# larger_projection_smaller

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27c550e4-2412-a6af-bde7-820ab8cd7dc9",
  "kind": "theorem",
  "lexical_name": "larger_projection_smaller",
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
  "slug": "larger-projection-smaller--dbd06276c340fbb65164ccbe",
  "source": {
    "blob": "8f64a0573f418a1b0840e15de238fee39e4d5b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd06276c340fbb65164ccbe64d9c1fafd6fd2a5aa35b672f27f6ff73befe8bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27c550e4-2412-a6af-bde7-820ab8cd7dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem larger_projection_smaller (hV : Monotone V) (q : H) (j : ℕ) :
    (V (j + 1)).starProjection ((V j).starProjection q) = (V j).starProjection q := by
  apply Submodule.starProjection_eq_self_iff.mpr
  exact hV (Nat.le_succ j) (Submodule.starProjection_apply_mem _ _)

/-- The new orthogonal state increment belongs to the projection difference's range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f64a0573f418a1b0840e15de238fee39e4d5b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
