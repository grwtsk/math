# innerContent_exists_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "111df26a5302d8043902da8a667832fe9805f21c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d94341a5-6a7b-c731-27c1-ac9b52c59d79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a66341e-92c2-799e-8253-0acb66792367",
  "kind": "theorem",
  "lexical_name": "innerContent_exists_compact",
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
  "slug": "innercontent-exists-compact--5959ce41c3ad32d7ce79a825",
  "source": {
    "blob": "111df26a5302d8043902da8a667832fe9805f21c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5959ce41c3ad32d7ce79a8256fb21d89ce27bdfcb37d3b7dbe811e5f692669f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a66341e-92c2-799e-8253-0acb66792367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerContent_exists_compact {U : Opens G} (hU : μ.innerContent U ≠ ∞) {ε : ℝ≥0}
    (hε : ε ≠ 0) : ∃ K : Compacts G, (K : Set G) ⊆ U ∧ μ.innerContent U ≤ μ K + ε := by
  have h'ε := ENNReal.coe_ne_zero.2 hε
  rcases le_or_gt (μ.innerContent U) ε with h | h
  · exact ⟨⊥, empty_subset _, le_add_left h⟩
  have h₂ := ENNReal.sub_lt_self hU h.ne_bot h'ε
  conv at h₂ => rhs; rw [innerContent]
  simp only [lt_iSup_iff] at h₂
  rcases h₂ with ⟨U, h1U, h2U⟩; refine ⟨U, h1U, ?_⟩
  rw [← tsub_le_iff_right]; exact le_of_lt h2U

/-- The inner content of a supremum of opens is at most the sum of the individual inner contents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `111df26a5302d8043902da8a667832fe9805f21c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
