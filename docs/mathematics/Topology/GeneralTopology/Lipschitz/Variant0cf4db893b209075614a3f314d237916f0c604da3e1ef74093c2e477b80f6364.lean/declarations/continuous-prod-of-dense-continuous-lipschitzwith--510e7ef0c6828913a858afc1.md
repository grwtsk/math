# continuous_prod_of_dense_continuous_lipschitzWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b334e7f1-770f-2109-e769-885281695724",
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
  "slug": "continuous-prod-of-dense-continuous-lipschitzwith--510e7ef0c6828913a858afc1",
  "source": {
    "blob": "f3a3609162dd90ead76018e112eb68ea713ba84c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 487,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:510e7ef0c6828913a858afc16c330a85c207d4542ca051ce5eac886930d3d0f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b334e7f1-770f-2109-e769-885281695724`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–500.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a3609162dd90ead76018e112eb68ea713ba84c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
