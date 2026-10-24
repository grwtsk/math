# tendsto_cRatio_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "282effa9c3758192cbef75f8323437363b039b6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88f4fb77-94e5-bd4b-29d8-c779fe9ef27b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f29c44bc-b01b-34b1-7d10-7e527ce12573",
  "kind": "theorem",
  "lexical_name": "tendsto_cRatio_quartic",
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
  "slug": "tendsto-cratio-quartic--32fd75985f3650b8f7212c6a",
  "source": {
    "blob": "282effa9c3758192cbef75f8323437363b039b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32fd75985f3650b8f7212c6a940ab900100b39826e5eed01ae827274d7793491",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f29c44bc-b01b-34b1-7d10-7e527ce12573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cRatio_quartic (hP : P.Valid) {D : ℝ → ℝ} (hD : ContinuousOn D (Icc 0 1))
    (hD0 : ∀ x ∈ Icc (0:ℝ) 1, 0 ≤ D x) :
    Tendsto (fun T => ThmD.cRatio (P.lam1 T) ((P.atV vQuartic T).a T) ((P.atV vQuartic T).b T)
      (2 / P.L T ^ 3 * l T * ∫ y in (0:ℝ)..P.L T, (D (y / l T) * (P.atV vQuartic T).g T y))) atTop
      (𝓝 (cWin D P.lam vQuartic)) := by
  have hev := eventually_w8 hP
  have ha : ∀ᶠ T in atTop, |(P.atV vQuartic T).a T - 2777 / 3000| ≤ 2 * P.w / P.L T := by
    filter_upwards [hev] with T hT
    rw [Params.atV_a T hP vQuartic_even]; exact aV_quartic_close hP hT
  have hb : ∀ᶠ T in atTop, |(P.atV vQuartic T).b T - 518783 / 600000| ≤ 2 * P.w / P.L T := by
    filter_upwards [hev] with T hT
    rw [Params.atV_b T hP vQuartic_even]; exact bV_quartic_close hP hT
  have hgc : ∀ᶠ T in atTop, Continuous ((P.atV vQuartic T).g T) := by
    filter_upwards [hev] with T hT
    rw [atVQ_g hP T]; exact gV_quartic_continuous hP hT
  have hg : ∀ᶠ T in atTop, ∀ y ∈ Icc (0:ℝ) (P.L T),
      |(P.atV vQuartic T).g T y - P.L T * vConv vQuartic (y / P.L T)| ≤ 4 * P.w := by
    filter_upwards [hev] with T hT y hy
    rw [atVQ_g hP T]; exact gV_quartic_close_at hP hT hy
  exact tendsto_cRatio_quartic_of (g := fun T => (P.atV vQuartic T).g T) hP hD hD0 ha hb hgc hg

/-- the D₁ instance, with the positivity the endgame wants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282effa9c3758192cbef75f8323437363b039b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
