# continuous_prod_of_dense_continuous_lipschitzWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5883d1d13cca4be08c41d70bc59b78f0bb2b057",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3250649a-0cbf-d972-d395-4c3d160f834e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa72afed-8300-d02f-38ee-2193c9c98cdc",
  "kind": "theorem",
  "lexical_name": "continuous_prod_of_dense_continuous_lipschitzWith",
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
  "slug": "continuous-prod-of-dense-continuous-lipschitzwith--fd206245c6770db0b69a2e8f",
  "source": {
    "blob": "a5883d1d13cca4be08c41d70bc59b78f0bb2b057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 479,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd206245c6770db0b69a2e8fbb8a17247300d12b6696890a116333418cbd0c3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa72afed-8300-d02f-38ee-2193c9c98cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_prod_of_dense_continuous_lipschitzWith [PseudoEMetricSpace α]
    [TopologicalSpace β] [PseudoEMetricSpace γ] (f : α × β → γ) (K : ℝ≥0) {s : Set α}
    (hs : Dense s) (ha : ∀ a ∈ s, Continuous fun y => f (a, y))
    (hb : ∀ b, LipschitzWith K fun x => f (x, b)) : Continuous f := by
  simp only [← continuousOn_univ, ← univ_prod_univ, ← lipschitzOnWith_univ] at *
  exact continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith f (subset_univ _)
    hs.closure_eq.ge K ha fun b _ => hb b

/-- Consider a function `f : α × β → γ`. Suppose that it is continuous on each “vertical section”
`{a} × univ`, `a : α`, and is Lipschitz continuous on each “horizontal section”
`univ × {b}`, `b : β` with the same Lipschitz constant `K`. Then it is continuous.

The actual statement uses (Lipschitz) continuity of `fun y ↦ f (a, y)` and `fun x ↦ f (x, b)`
instead of continuity of `f` on subsets of the product space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5883d1d13cca4be08c41d70bc59b78f0bb2b057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
