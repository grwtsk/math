# reduced_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36f56507-ac2f-489a-a049-335691cfa30c",
  "kind": "theorem",
  "lexical_name": "reduced_bounds",
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
  "slug": "reduced-bounds--eaa419182ea1177b94605c47",
  "source": {
    "blob": "cd08a978a9614549cd68619711832e5d1e1bdeae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/Analysis/ErrorBounds/AtanhLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaa419182ea1177b94605c47a9f80bfce0d77c2517ddb85815f67fb853ad7e22",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/AtanhLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f56507-ac2f-489a-a049-335691cfa30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduced_bounds {r : ℝ} (hr : 1 ≤ r) (n : ℕ) :
    0 ≤ Real.log r - partialSum ((r - 1) / (r + 1)) n ∧
      Real.log r - partialSum ((r - 1) / (r + 1)) n ≤
        tail ((r - 1) / (r + 1)) n := by
  have hden : 0 < r + 1 := by linarith
  have hy : 0 ≤ (r - 1) / (r + 1) := div_nonneg (by linarith) hden.le
  have hy1 : (r - 1) / (r + 1) < 1 := (div_lt_one hden).mpr (by linarith)
  have hi : (1 + (r - 1) / (r + 1)) / (1 - (r - 1) / (r + 1)) = r := by
    have hsub : 1 - (r - 1) / (r + 1) ≠ 0 := by linarith
    field_simp [hden.ne', hsub]
    ring
  simpa only [hi] using log_ratio_bounds hy hy1 n

/-- The range-reduced parameter is at most one third, uniformly on [1,2]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/AtanhLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/AtanhLogEnclosure.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd08a978a9614549cd68619711832e5d1e1bdeae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
