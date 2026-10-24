# switched_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21a9b462-1e88-e095-ae75-f8b47515dec5",
  "kind": "theorem",
  "lexical_name": "switched_sum",
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
  "slug": "switched-sum--bde9d2620e9c0c7c78523c1e",
  "source": {
    "blob": "7f585589d21b8675c94607c350665e75ee527c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bde9d2620e9c0c7c78523c1e9fce8831c882ffd03af1a8a4c50b86671b48424b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21a9b462-1e88-e095-ae75-f8b47515dec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem switched_sum (H : I → X → ℝ) (i : ℕ → I) (x : ℕ → X) (N : ℕ) :
    ∑ k ∈ Finset.range N, (H (i k) (x k) - H (i k) (x (k + 1))) =
      H (i 0) (x 0) - H (i N) (x N) +
        ∑ k ∈ Finset.range N,
          (H (i (k + 1)) (x (k + 1)) - H (i k) (x (k + 1))) := by
  induction N with
  | zero => simp
  | succ N ih => simp only [Finset.sum_range_succ]; rw [ih]; ring

/-- The ungauged budget keeps switch signs and order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f585589d21b8675c94607c350665e75ee527c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
