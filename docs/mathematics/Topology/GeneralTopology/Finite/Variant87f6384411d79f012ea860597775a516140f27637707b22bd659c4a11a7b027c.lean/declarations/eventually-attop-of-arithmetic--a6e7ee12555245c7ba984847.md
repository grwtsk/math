# Eventually.atTop_of_arithmetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eca134eab3742d3dca8906254f0cf1fe928b7dd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89837485-2481-c27a-9671-926906b07eb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cc31ff6-07aa-9ad0-36be-10e0f0365a67",
  "kind": "theorem",
  "lexical_name": "Eventually.atTop_of_arithmetic",
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
  "slug": "eventually-attop-of-arithmetic--a6e7ee12555245c7ba984847",
  "source": {
    "blob": "eca134eab3742d3dca8906254f0cf1fe928b7dd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e7ee12555245c7ba984847c9b4e7f2b79e2b4424905ecb56d9038bd4f3af83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cc31ff6-07aa-9ad0-36be-10e0f0365a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Eventually.atTop_of_arithmetic {p : ℕ → Prop} {n : ℕ} (hn : n ≠ 0)
    (hp : ∀ k < n, ∀ᶠ a in atTop, p (n * a + k)) : ∀ᶠ a in atTop, p a := by
  simp only [eventually_atTop] at hp ⊢
  choose! N hN using hp
  refine ⟨(Finset.range n).sup (n * N ·), fun b hb => ?_⟩
  rw [← Nat.div_add_mod b n]
  have hlt := Nat.mod_lt b hn.bot_lt
  refine hN _ hlt _ ?_
  rw [ge_iff_le, Nat.le_div_iff_mul_le hn.bot_lt, mul_comm]
  exact (Finset.le_sup (f := (n * N ·)) (Finset.mem_range.2 hlt)).trans hb

/-- Given an antitone basis `s : ℕ → Set α` of a filter, extract an antitone subbasis `s ∘ φ`,
`φ : ℕ → ℕ`, such that `m < n` implies `r (φ m) (φ n)`. This lemma can be used to extract an
antitone basis with basis sets decreasing "sufficiently fast". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca134eab3742d3dca8906254f0cf1fe928b7dd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
