# exists_lt_eVariationOn_inter_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c72dc8d-75cc-9881-a3fb-cdf0869c283b",
  "kind": "lemma",
  "lexical_name": "exists_lt_eVariationOn_inter_Icc",
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
  "slug": "exists-lt-evariationon-inter-icc--5618e70837920e52da7041a3",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 762,
    "line": 739,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5618e70837920e52da7041a3df36ba3aa032bf6949d3e7db2b34962444f95b5f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c72dc8d-75cc-9881-a3fb-cdf0869c283b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_lt_eVariationOn_inter_Icc {f : α → E} {ε : ℝ≥0∞} {s : Set α}
    (h : ε < eVariationOn f s) : ∃ a ∈ s, ∃ b ∈ s, a < b ∧ ε < eVariationOn f (s ∩ Icc a b) := by
  obtain ⟨n, u, ⟨u_mono, u_mem⟩, hu⟩ : ∃ n u, (Monotone u ∧ ∀ (i : ℕ), u i ∈ s) ∧
      ε < ∑ x ∈ Finset.range n, edist (f (u (x + 1))) (f (u x)) := by
    simpa [eVariationOn, lt_iSup_iff] using h
  have A : ε < eVariationOn f (s ∩ Icc (u 0) (u n)) := by
    apply hu.trans_le
    simp only [Monotone] at u_mono
    let v (i : ℕ) := min (u i) (u n)
    calc ∑ x ∈ Finset.range n, edist (f (u (x + 1))) (f (u x))
    _ = ∑ i ∈ Finset.range n, edist (f (v (i + 1))) (f (v i)) := by grind [Finset.sum_congr]
    _ ≤ eVariationOn f (s ∩ Icc (u 0) (u n)) :=
      sum_le_of_monotoneOn_Iic (by grind [MonotoneOn]) (by grind)
  refine ⟨u 0, u_mem _, u n, u_mem _, ?_, A⟩
  by_contra!
  have : Set.Subsingleton (s ∩ Icc (u 0) (u n)) := by
    intro a ha b hb
    simp only [mem_inter_iff, mem_Icc] at ha hb
    order
  simp [this] at A

/-- If a function has bounded variation, then the variation on closed semi-infinite intervals
tends to `0`. We give a version with a generic filter, that applies both to left-neighborhoods of
points and to `atTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
