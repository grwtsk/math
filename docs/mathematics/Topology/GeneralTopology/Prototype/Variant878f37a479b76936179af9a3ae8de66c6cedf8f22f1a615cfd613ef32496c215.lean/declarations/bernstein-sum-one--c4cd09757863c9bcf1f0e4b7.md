# bernstein_sum_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1df2979a-6098-a011-8fc9-522f51ee5a3c",
  "kind": "theorem",
  "lexical_name": "bernstein_sum_one",
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
  "slug": "bernstein-sum-one--c4cd09757863c9bcf1f0e4b7",
  "source": {
    "blob": "6c52648a518bac71d49a907a26266a67dbb1ae53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4cd09757863c9bcf1f0e4b7d363e17a1169ea5f76070c57b8030fe5ee47f991",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1df2979a-6098-a011-8fc9-522f51ee5a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernstein_sum_one {n : ℕ} {t : ℝ}
    (_ht : t ∈ Set.Icc (0 : ℝ) 1) :
    ∑ i : Fin (n + 1), bernstein n i t = 1 := by
  rw [Finset.sum_fin_eq_sum_range]
  have hadd : t + (1 - t) = 1 := by ring
  calc
    (∑ i ∈ Finset.range (n + 1),
        if h : i < n + 1 then bernstein n ⟨i, h⟩ t else 0) =
        ∑ i ∈ Finset.range (n + 1),
          t ^ i * (1 - t) ^ (n - i) * (n.choose i : ℝ) := by
            apply Finset.sum_congr rfl
            intro i hi
            rw [dif_pos (Finset.mem_range.mp hi)]
            rfl
    _ = (t + (1 - t)) ^ n := (add_pow t (1 - t) n).symm
    _ = 1 := by rw [hadd, one_pow]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c52648a518bac71d49a907a26266a67dbb1ae53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
