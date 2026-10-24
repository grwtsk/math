# continuous_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f3134ad-9ac2-b7f0-5a62-215af5463175",
  "kind": "theorem",
  "lexical_name": "continuous_lift",
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
  "slug": "continuous-lift--c0bc17c6f191b4ab6de761be",
  "source": {
    "blob": "563550223778da73d8509d3eb6f87cd99da7cae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0bc17c6f191b4ab6de761befb3572d05788e2889eea4711c9602e583731307b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3134ad-9ac2-b7f0-5a62-215af5463175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_lift (f : C(I × A, X)) {g : I × A → E} (g_lifts : p ∘ g = f)
    (cont_0 : Continuous (g ⟨0, ·⟩)) (cont_A : ∀ a, Continuous (g ⟨·, a⟩)) : Continuous g := by
  rw [continuous_iff_continuousAt]
  intro ⟨t, a⟩
  obtain ⟨N, haN, g', cont_g', g'_lifts, g'_0, -⟩ :=
    homeo.exists_lift_nhds g_lifts cont_0 a (cont_A a)
  refine (cont_g'.congr fun ⟨t, a⟩ ⟨_, ha⟩ ↦ ?_).continuousAt (prod_mem_nhds Filter.univ_mem haN)
  refine congr_fun (sep.eq_of_comp_eq homeo.isLocallyInjective (cont_A a)
    (cont_g'.comp_continuous (.prodMk_left a) fun _ ↦ ⟨⟨⟩, ha⟩) ?_ 0 (g'_0 a).symm) t
  ext t; apply congr_fun (g_lifts.trans g'_lifts.symm)

/-- The abstract monodromy theorem: if `γ₀` and `γ₁` are two paths in a topological space `X`,
  `γ` is a homotopy between them relative to the endpoints, and the path at each time step of
  the homotopy, `γ (t, ·)`, lifts to a continuous path `Γ t` through a separated local
  homeomorphism `p : E → X`, starting from some point in `E` independent of `t`. Then the
  endpoints of these lifts are also independent of `t`.

  This can be applied to continuation of analytic functions as follows: for a sheaf of analytic
  functions on an analytic manifold `X`, we may consider its étale space `E` (whose points are
  analytic germs) with the natural projection `p : E → X`, which is a local homeomorphism and a
  separated map (because two analytic functions agreeing on a nonempty open set agree on the
  whole connected component). An analytic continuation of a germ along a path `γ (t, ·) : C(I, X)`
  corresponds to a continuous lift of `γ (t, ·)` to `E` starting from that germ. If `γ` is a
  homotopy and the germ admits continuation along every path `γ (t, ·)`, then the result of the
  continuations are independent of `t`. In particular, if `X` is simply connected and an analytic
  germ at `p : X` admits a continuation along every path in `X` from `p` to `q : X`, then the
  continuation to `q` is independent of the path chosen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563550223778da73d8509d3eb6f87cd99da7cae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
