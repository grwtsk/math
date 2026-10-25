# test_discover_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5ba3da0-8a2e-4f8e-b91f-f589c7e03d43",
  "kind": "theorem",
  "lexical_name": "test_discover_max",
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
  "slug": "test-discover-max--b5a3011c6e15f4a0112ec601",
  "source": {
    "blob": "77884ecc9ba2fbb4f5469c84227951e30e601f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant5c951da38383a8bd0db57487bba69caf36e9811d944467f7c87e9e64296f2950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5a3011c6e15f4a0112ec601e4e437e40c6a19aaa4db36e290a0920283286a70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant5c951da38383a8bd0db57487bba69caf36e9811d944467f7c87e9e64296f2950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5ba3da0-8a2e-4f8e-b91f-f589c7e03d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_discover_max : ∃ M : ℚ, ∀ x ∈ I_neg1_1,
    Expr.eval (fun _ => x) (Expr.mul (Expr.var 0) (Expr.var 0)) ≤ M := by
  discover

/-! ### `interval_argmax` - Find argmax point

Proves ∃ x ∈ I, ∀ y ∈ I, f(y) ≤ f(x) by finding the maximizer and using
transitivity via a concrete bound.

NOTE: interval_argmax works best when the argmax is at a rational point that
the optimizer can find exactly. For interior maxima at irrational points,
consider using interval_maximize instead.
-/

-- Find the point where x² is maximized on [-1,1] (argmax at x = ±1)
-- This works because the argmax is at an endpoint, which is easier to find exactly
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant5c951da38383a8bd0db57487bba69caf36e9811d944467f7c87e9e64296f2950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant5c951da38383a8bd0db57487bba69caf36e9811d944467f7c87e9e64296f2950.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77884ecc9ba2fbb4f5469c84227951e30e601f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
