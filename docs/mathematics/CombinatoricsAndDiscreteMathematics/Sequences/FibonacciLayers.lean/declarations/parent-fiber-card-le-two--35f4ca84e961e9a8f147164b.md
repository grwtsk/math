# parent_fiber_card_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dd03e65-b93a-d734-7c40-acfbb51931fe",
  "kind": "theorem",
  "lexical_name": "parent_fiber_card_le_two",
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
  "slug": "parent-fiber-card-le-two--35f4ca84e961e9a8f147164b",
  "source": {
    "blob": "e2c61f2dc55fa8ec4a630d546826d5c4270ad157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 123,
    "path": "GRWTSK/Combinatorics/Sequences/FibonacciLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35f4ca84e961e9a8f147164ba2d9a0de2f678afc81cf46f6a0abc351ecca0b52",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dd03e65-b93a-d734-7c40-acfbb51931fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parent_fiber_card_le_two (p c q : ℕ) (hc : 0 < c) (hcap : c ≤ 2 * p)
    (s : Finset ℕ) (hs : ∀ i ∈ s, parentIndex p c i = q) : s.card ≤ 2 := by
  by_cases hnonempty : s.Nonempty
  · let a := s.min' hnonempty
    have ha : a ∈ s := Finset.min'_mem s hnonempty
    have hsub : s ⊆ {a, a + 1} := by
      intro i hi
      have hlow : a ≤ i := Finset.min'_le s i hi
      have hspan := parentIndex_span p c a i hc hcap ((hs a ha).trans (hs i hi).symm)
      have heq : i = a ∨ i = a + 1 := by omega
      simpa only [Finset.mem_insert, Finset.mem_singleton] using heq
    exact (Finset.card_le_card hsub).trans Finset.card_le_two
  · have hempty : s = ∅ := Finset.not_nonempty_iff_eq_empty.mp hnonempty
    simp only [hempty, Finset.card_empty, Nat.zero_le]

/-- Children of the `q`-th parent in two consecutive positive Fibonacci layers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/FibonacciLayers.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c61f2dc55fa8ec4a630d546826d5c4270ad157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
