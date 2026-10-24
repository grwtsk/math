# ClosureAntitone.map_of_vanishingDiam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79e2577d40e4f899c9a31e04ff40bc99e0fd35ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a4e37b2-aaf2-95ea-956d-16988dbee1c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4051f79-2989-33db-5d60-2d1e0e76e986",
  "kind": "theorem",
  "lexical_name": "ClosureAntitone.map_of_vanishingDiam",
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
  "slug": "closureantitone-map-of-vanishingdiam--679780e7d1a5289ddbc8df78",
  "source": {
    "blob": "79e2577d40e4f899c9a31e04ff40bc99e0fd35ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 152,
    "path": "GRWTSK/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:679780e7d1a5289ddbc8df7875351eb202e3a3616e2b38bf99edce92fe82d118",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4051f79-2989-33db-5d60-2d1e0e76e986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClosureAntitone.map_of_vanishingDiam [CompleteSpace α] (hdiam : VanishingDiam A)
    (hanti : ClosureAntitone A) (hnonempty : ∀ l, (A l).Nonempty) : (inducedMap A).1 = univ := by
  rw [eq_univ_iff_forall]
  intro x
  choose u hu using fun n => hnonempty (res x n)
  have umem : ∀ n m : ℕ, n ≤ m → u m ∈ A (res x n) := by
    have : Antitone fun n : ℕ => A (res x n) := by
      refine antitone_nat_of_succ_le ?_
      intro n
      apply hanti.antitone
    intro n m hnm
    exact this hnm (hu _)
  have : CauchySeq u := by
    rw [Metric.cauchySeq_iff]
    intro ε ε_pos
    obtain ⟨n, hn⟩ := hdiam.dist_lt _ ε_pos x
    use n
    intro m₀ hm₀ m₁ hm₁
    apply hn <;> apply umem <;> assumption
  obtain ⟨y, hy⟩ := cauchySeq_tendsto_of_complete this
  use y
  rw [mem_iInter]
  intro n
  apply hanti _ (x n)
  apply mem_closure_of_tendsto hy
  rw [eventually_atTop]
  exact ⟨n.succ, umem _⟩

end Metric

end CantorScheme
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CantorScheme/Variante9580f3844957baf4595660fca9e2c909472e221b26b7acc5cd3b999efe97494.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79e2577d40e4f899c9a31e04ff40bc99e0fd35ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
