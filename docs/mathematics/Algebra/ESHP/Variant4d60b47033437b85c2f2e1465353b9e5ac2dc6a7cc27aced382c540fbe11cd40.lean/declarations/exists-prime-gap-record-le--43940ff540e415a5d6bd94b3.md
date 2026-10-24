# exists_prime_gap_record_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17072c05-ad21-13a2-d917-ada4b977fe5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39ebb984-ba81-b8dd-27e1-66a160fbf358",
  "kind": "lemma",
  "lexical_name": "exists_prime_gap_record_le",
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
  "slug": "exists-prime-gap-record-le--43940ff540e415a5d6bd94b3",
  "source": {
    "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 133,
    "path": "GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43940ff540e415a5d6bd94b389f215f7f6e4e4ff852c6f729d9353351e27d0dc",
  "verification": {
    "reference": "docs/verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39ebb984-ba81-b8dd-27e1-66a160fbf358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_prime_gap_record_le (n : ℕ) :
    ∃ m, nth_prime m ≤ nth_prime n ∧ nth_prime_gap n ≤ nth_prime_gap m ∧
      prime_gap_record (nth_prime m) (nth_prime_gap m) := by
  let g := nth_prime_gap n
  let S := {k | k ≤ n ∧ g ≤ nth_prime_gap k}
  obtain ⟨m, hm_mem, hm_min⟩ : ∃ m ∈ S, ∀ k ∈ S, m ≤ k :=
    ⟨Nat.find <| show S.Nonempty from ⟨n, le_rfl, le_rfl⟩,
      Nat.find_spec <| show S.Nonempty from ⟨n, le_rfl, le_rfl⟩,
      fun k hk ↦ Nat.find_min' _ hk⟩
  refine ⟨m, ?_, hm_mem.2, m, rfl, rfl, fun k hk ↦ ?_⟩
  · exact monotone_nat_of_le_succ (fun n ↦ nth_monotone infinite_setOf_prime n.le_succ) hm_mem.1
  · contrapose! hk
    exact monotone_nat_of_le_succ (fun n ↦ nth_monotone infinite_setOf_prime n.le_succ)
      (le_of_not_gt fun h ↦ not_lt_of_ge
        (hm_min _ ⟨by linarith [hm_mem.1], by linarith [hm_mem.2]⟩) h)

@[blueprint
  "max-prime-gap"
  (title := "Maximum prime gap")
  (statement := /--
  The maximum prime gap for primes less than or equal to
  $4 \times 10^{18}$ is $1476$. -/)
  (proof := /-- If not, then there would be an entry in
  Table 8 with $g > 1476$, which can be verified not to be
  the case. -/)
  (latexEnv := "proposition")
  (discussion := 949)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e468fee2e01d3278a32ef82ef1c44b2545514b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
