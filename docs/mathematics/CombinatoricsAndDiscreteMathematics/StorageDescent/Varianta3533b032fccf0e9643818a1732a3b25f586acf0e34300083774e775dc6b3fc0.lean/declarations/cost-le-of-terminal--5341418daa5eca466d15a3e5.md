# cost_le_of_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ee5d5e0-fdb9-ce3b-ec5c-0eae5865c4f2",
  "kind": "theorem",
  "lexical_name": "cost_le_of_terminal",
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
  "slug": "cost-le-of-terminal--5341418daa5eca466d15a3e5",
  "source": {
    "blob": "905949a83e03dc280c275867d7e67f5f70f65d8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5341418daa5eca466d15a3e579a02e5bd76e15cf1d9f392b82a6895373a4412d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ee5d5e0-fdb9-ce3b-ec5c-0eae5865c4f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cost_le_of_terminal (Q initial : ℝ) (H : X → ℝ) (x : ℕ → X)
    (c r : ℕ → ℝ) (N : ℕ) (B : ℝ)
    (decomposition : Q = initial + ∑ k ∈ Finset.range N, c k)
    (hc : ∀ k < N, c k ≤ H (x k) - H (x (k + 1)) + r k)
    (budget : initial + H (x 0) - H (x N) + ∑ k ∈ Finset.range N, r k ≤ B) : Q ≤ B := by
  have ht := terminal_budget H x c r N hc
  rw [decomposition]
  linarith

end FormalResearch.PositiveAtlas.StorageDescent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Varianta3533b032fccf0e9643818a1732a3b25f586acf0e34300083774e775dc6b3fc0.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `905949a83e03dc280c275867d7e67f5f70f65d8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
