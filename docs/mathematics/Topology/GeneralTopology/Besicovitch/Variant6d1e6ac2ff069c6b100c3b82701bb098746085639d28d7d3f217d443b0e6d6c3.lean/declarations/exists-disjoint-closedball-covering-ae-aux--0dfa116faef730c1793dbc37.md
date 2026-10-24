# exists_disjoint_closedBall_covering_ae_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78dffa88-4617-ab30-98db-ff7e5e282d06",
  "kind": "theorem",
  "lexical_name": "exists_disjoint_closedBall_covering_ae_aux",
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
  "slug": "exists-disjoint-closedball-covering-ae-aux--0dfa116faef730c1793dbc37",
  "source": {
    "blob": "48bdc7ff9eda025caa69372f97de9e37a2f46ef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 819,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dfa116faef730c1793dbc370ad8256e1f7c625dedcc5a086d9320b0529fb110",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78dffa88-4617-ab30-98db-ff7e5e282d06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 819–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_disjoint_closedBall_covering_ae_aux (μ : Measure α) [SFinite μ] (f : α → Set ℝ)
    (s : Set α) (hf : ∀ x ∈ s, ∀ δ > 0, (f x ∩ Ioo 0 δ).Nonempty) :
    ∃ t : Set (α × ℝ), t.Countable ∧ (∀ p ∈ t, p.1 ∈ s) ∧ (∀ p ∈ t, p.2 ∈ f p.1) ∧
      μ (s \ ⋃ (p : α × ℝ) (_ : p ∈ t), closedBall p.1 p.2) = 0 ∧
        t.PairwiseDisjoint fun p => closedBall p.1 p.2 := by
  /- This is deduced from the finite measure case, by using a finite measure with respect to which
    the initial sigma-finite measure is absolutely continuous. -/
  rcases exists_isFiniteMeasure_absolutelyContinuous μ with ⟨ν, hν, hμν, -⟩
  rcases exists_disjoint_closedBall_covering_ae_of_finiteMeasure_aux ν f s hf with
    ⟨t, t_count, ts, tr, tν, tdisj⟩
  exact ⟨t, t_count, ts, tr, hμν tν, tdisj⟩

/-- The measurable **Besicovitch covering theorem**.

Assume that, for any `x` in a set `s`, one is given a set of admissible closed balls centered at
`x`, with arbitrarily small radii. Then there exists a disjoint covering of almost all `s` by
admissible closed balls centered at some points of `s`. We can even require that the radius at `x`
is bounded by a given function `R x`. (Take `R = 1` if you don't need this additional feature).

This version requires the underlying measure to be sigma-finite, and the space to have the
Besicovitch covering property (which is satisfied for instance by normed real vector spaces).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean#L819).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48bdc7ff9eda025caa69372f97de9e37a2f46ef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
