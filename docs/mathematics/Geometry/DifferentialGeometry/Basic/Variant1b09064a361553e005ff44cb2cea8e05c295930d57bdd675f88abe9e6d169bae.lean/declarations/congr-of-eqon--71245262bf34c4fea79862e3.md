# congr_of_eqOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f849787-7b59-4e89-7375-2e8ca0475c19",
  "kind": "lemma",
  "lexical_name": "congr_of_eqOn",
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
  "slug": "congr-of-eqon--71245262bf34c4fea79862e3",
  "source": {
    "blob": "ba2001d70aecd37f77d8576635be665896eff63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 161,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71245262bf34c4fea79862e3e7f40b587d50a3c4196f6f3bdbb320427ded705c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f849787-7b59-4e89-7375-2e8ca0475c19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma congr_of_eqOn
    {cov : (Π x : M, V x) → (Π x : M, TangentSpace I x →L[𝕜] V x)}
    {s : Set M} (hcov : IsCovariantDerivativeOn F cov s)
    {σ σ' : Π x : M, V x} {x : M}
    (hσ : MDiffAt (T% σ) x) (hσ' : MDiffAt (T% σ') x)
    (hxs : s ∈ 𝓝 x) (hσσ' : ∀ x ∈ s, σ x = σ' x) :
    cov σ x = cov σ' x := by
  classical
  have hxs' : x ∈ s := mem_of_mem_nhds hxs
  let ψ (x' : M) : 𝕜 := if x' ∈ s then 1 else 0
  have hψx : ψ x = 1 := by simp [ψ, hxs']
  -- Observe that `ψ • σ = ψ • σ'` as dependent functions.
  have H (x' : M) : ((ψ : M → 𝕜) • σ) x' = ((ψ : M → 𝕜) • σ') x' := by
    dsimp [ψ]
    split_ifs with hx's
    · simpa using hσσ' _ hx's
    · simp
  have hψ' : HasMFDerivAt I 𝓘(𝕜) ψ x 0 := by
    have : HasMFDerivAt I 𝓘(𝕜, 𝕜) (fun (_x : M) ↦ (1 : 𝕜)) x 0 := hasMFDerivAt_const ..
    refine this.congr_of_eventuallyEq ?_
    apply Filter.eventuallyEq_of_mem hxs
    intro t ht
    simp [ψ, ht]
  have := hcov.leibniz hσ hψ'.mdifferentiableAt
  -- Then, it's a chain of (dependent) equalities.
  calc cov σ x
    _ = cov ((ψ : M → 𝕜) • σ) x := by
      simp [hcov.leibniz hσ hψ'.mdifferentiableAt, hψx, mvfderiv, hψ'.mfderiv]
    _ = cov ((ψ : M → 𝕜) • σ') x := by rw [funext H]
    _ = cov σ' x := by
      simp [hcov.leibniz hσ' hψ'.mdifferentiableAt, hψx, mvfderiv, hψ'.mfderiv]

open Filter Set in
/-- Given a covariant derivative `cov` on a neighborhood `s` of a point `x`, if sections `σ` and
`σ'` agree near `x` and are differentiable at `x`, then `cov σ x = cov σ x'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2001d70aecd37f77d8576635be665896eff63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
