# filter_fst_eq_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92d2ef24-a973-feb9-4cda-0b3423ad0e13",
  "kind": "theorem",
  "lexical_name": "filter_fst_eq_antidiagonal",
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
  "slug": "filter-fst-eq-antidiagonal--977d30036349a736af207d47",
  "source": {
    "blob": "49c25e7aeb731d0112e98e43c96cb0fdbaba6b84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:977d30036349a736af207d47c9e8b7a8ccb0b735b0923d1b48ba4683b3b6b189",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92d2ef24-a973-feb9-4cda-0b3423ad0e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_fst_eq_antidiagonal (n m : ℕ) :
    filter (fun x : ℕ × ℕ ↦ x.fst = m) (antidiagonal n) = if m ≤ n then {(m, n - m)} else ∅ := by
  ext ⟨x, y⟩
  simp only [mem_filter, Nat.mem_antidiagonal]
  split_ifs with h
  · simp (config := { contextual := true }) [and_comm, eq_tsub_iff_add_eq_of_le h, add_comm]
  · rw [not_le] at h
    simp only [not_mem_empty, iff_false_iff, not_and, decide_eq_true_eq]
    exact fun hn => ne_of_lt (lt_of_le_of_lt (le_self_add.trans hn.le) h)
#align finset.nat.filter_fst_eq_antidiagonal Finset.Nat.filter_fst_eq_antidiagonal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c25e7aeb731d0112e98e43c96cb0fdbaba6b84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
