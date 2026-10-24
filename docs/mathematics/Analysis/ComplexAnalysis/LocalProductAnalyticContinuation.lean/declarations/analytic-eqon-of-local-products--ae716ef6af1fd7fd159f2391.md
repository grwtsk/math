# analytic_eqOn_of_local_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cc575d7-87ae-10e1-b770-9a078444f775",
  "kind": "theorem",
  "lexical_name": "analytic_eqOn_of_local_products",
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
  "slug": "analytic-eqon-of-local-products--ae716ef6af1fd7fd159f2391",
  "source": {
    "blob": "faaf6132cf4dcc6c04529e8a68afc63989622bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 14,
    "path": "GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae716ef6af1fd7fd159f23911d8edf0002387a90f938347076019afada7bad7d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LocalProductAnalyticContinuation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cc575d7-87ae-10e1-b770-9a078444f775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analytic_eqOn_of_local_products {n v : Type*} [Fintype n] [DecidableEq n]
    (F G : ℂ → ℂ) (D V : Set ℂ) (hD : IsPreconnected D)
    (hV : IsOpen V) (hne : V.Nonempty) (hVD : V ⊆ D)
    (hF : AnalyticOnNhd ℂ F D) (hG : AnalyticOnNhd ℂ G D)
    (A B U W : v → Matrix n n ℂ) (t : ℂ → v → ℂ)
    (hUW : ∀ p, U p * W p = 1) (hWU : ∀ p, W p * U p = 1)
    (hAB : ∀ p, A p * U p = U p * B p)
    (hprodF : ∀ s ∈ V, HasProd (fun p => (Matrix.det (1 - t s p • A p))⁻¹) (F s))
    (hprodG : ∀ s ∈ V, HasProd (fun p => (Matrix.det (1 - t s p • B p))⁻¹) (G s)) :
    EqOn F G D := by
  obtain ⟨a, ha⟩ := hne
  have heq : F =ᶠ[𝓝 a] G := by
    filter_upwards [hV.mem_nhds ha] with s hs
    exact local_product_limits_eq A B U W (t s) (F s) (G s)
      hUW hWU hAB (hprodF s hs) (hprodG s hs)
  exact hF.eqOn_of_preconnected_of_eventuallyEq hG hD (hVD ha) heq

/-- Equality on an open domain gives the actual full-neighborhood germ comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/LocalProductAnalyticContinuation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faaf6132cf4dcc6c04529e8a68afc63989622bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
